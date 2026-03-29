import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/shared_preferences_handling.dart';
import 'package:app_flutter_produkt_bestellen/features/chat/domain/entity/entity_contacts.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/notification_settings_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/error/failure_state.dart';

abstract class LoginDatasource {
  Future<Either<Failure, EntityLoginCustomer>> login(
      {required String customerNumber,
      required String password,
      required bool stayLoggedIn});

  Future<Either<Failure, EntityLoginCustomer>> updateCustomerDeliveryAddress(
      {required String street,
      required String zipCode,
      required String city,
      required EntityLoginCustomer customerEntity});

  Future<Either<Failure, List<UserNotification>>> toggleNotifications(
      {required String customerNumber,
      required List<NotificationSetting> newNotificationSettings});

  Future<Either<Failure, EntityLoginCustomer>>
      getCustomerDataBasedOnCustomerNumber({required String customerNumber});

  Future<Failure?> logOut();

  Future<Either<Failure, List<EntityContact>>> getAllContacts();
}

class LoginDatasourceImplementation extends LoginDatasource {
  LoginDatasourceImplementation(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  @override
  Future<Either<Failure, EntityLoginCustomer>> login(
      {required String customerNumber,
      required String password,
      required bool stayLoggedIn}) async {
    try {
      final Either<Failure, EntityLoginCustomer> entityLoginCustomer =
          await _firebaseFirestore
              .collection('User')
              .where('customerNumber', isEqualTo: customerNumber)
              .where('password', isEqualTo: password)
              .get()
              .then((value) async {
        final Map<String, dynamic>? json = value.docs.firstOrNull?.data();
        final documentId = value.docs.firstOrNull?.id;

        if (json != null) {
          final entityLoginCustomer = EntityLoginCustomer.fromJson(json);
          if (documentId != null &&
              FirebaseConfiguration.firebaseToken != null &&
              FirebaseConfiguration.firebaseToken !=
                  entityLoginCustomer.fToken) {
            await _updateFirebaseUserFirebaseToken(
                    firebaseToken: FirebaseConfiguration.firebaseToken!,
                    documentId: documentId)
                .then(
              (fToken) => fToken != null
                  ? entityLoginCustomer.copyWith(fToken: fToken)
                  : null,
            );
          }
          return Right(entityLoginCustomer);
        } else {
          return const Left(
              Failure.databaseError('Der Benutzer wurde nicht gefunden.'));
        }
      }, onError: (error) => debugPrint("error => ${error.toString()}"));

      entityLoginCustomer.fold((failure) => Left(failure),
          (customerEntity) async {
        try {
          if (stayLoggedIn) {
            await SharedPreferencesHandling.setCustomerToken(
                customerNumber: customerNumber);
          }
        } catch (error) {
          debugPrint('stay logged in error => ${error.toString()}');
        }
      });

      return entityLoginCustomer;
    } catch (e) {
      return Left(Failure.databaseError(e.toString()));
    }
  }

  Future<String?> _updateFirebaseUserFirebaseToken(
      {required String firebaseToken, required String documentId}) async {
    try {
      await _firebaseFirestore.collection('User').doc(documentId).update({
        'fToken': firebaseToken,
      });
      return firebaseToken;
    } catch (error) {
      return null;
    }
  }

  @override
  Future<Either<Failure, EntityLoginCustomer>> updateCustomerDeliveryAddress(
      {required EntityLoginCustomer customerEntity,
      required String street,
      required String zipCode,
      required String city}) async {
    try {
      final customer = await _firebaseFirestore
          .collection('User')
          .where('customerNumber', isEqualTo: customerEntity.customerNumber)
          .get()
          .then(
            (querySnapshot) => querySnapshot.docs.first.reference
                .update({
                  'deliveryAddress': {
                    'street': street,
                    'zipCode': zipCode,
                    'city': city
                  }
                })
                .then(
                  (_) => customerEntity.copyWith(
                    deliveryAddress: CustomerAddress(
                      street: street,
                      zipCode: zipCode,
                      city: city,
                    ),
                  ),
                )
                .catchError((errorResponse) {
                  return customerEntity;
                }),
          );

      return Right(customer);
    } catch (error) {
      return Left(Failure.databaseError(error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<UserNotification>>> toggleNotifications(
      {required String customerNumber,
      required List<NotificationSetting> newNotificationSettings}) async {
    try {
      Failure? failure;
      final notifications = newNotificationSettings
          .map((newNotification) => UserNotification(
                  statusType: newNotification.enumOrderProcess.index,
                  active: newNotification.isActive)
              .toJson())
          .toList();

      debugPrint("datasource notification json => $notifications");

      await _firebaseFirestore
          .collection('User')
          .where('customerNumber', isEqualTo: customerNumber)
          .get()
          .then(
              (query) => query.docs.firstOrNull?.reference
                  .update({'notifications': notifications}).whenComplete(
                      () => debugPrint('completed')), onError: (error) {
        debugPrint(error.toString());
        failure = Failure.databaseError(error.toString());
        return error;
      });
      if (failure == null) {
        return Right(newNotificationSettings
            .map((newNotification) => UserNotification(
                statusType: newNotification.enumOrderProcess.index,
                active: newNotification.isActive))
            .toList());
      } else {
        return Left(failure!);
      }
    } catch (error) {
      return Left(Failure.databaseError(error.toString()));
    }
  }

  @override
  Future<Either<Failure, EntityLoginCustomer>>
      getCustomerDataBasedOnCustomerNumber(
          {required String customerNumber}) async {
    try {
      final Either<Failure, EntityLoginCustomer> entityLoginCustomer =
          await _firebaseFirestore
              .collection('User')
              .where('customerNumber', isEqualTo: customerNumber)
              .get()
              .timeout(const Duration(seconds: 10))
              .then((value) {
        final Map<String, dynamic>? json = value.docs.firstOrNull?.data();

        if (json != null) {
          return Right(EntityLoginCustomer.fromJson(json));
        } else {
          return const Left(
              Failure.databaseError('Der Benutzer wurde nicht gefunden.'));
        }
      }, onError: (error) => debugPrint("error => ${error.toString()}"));

      return entityLoginCustomer;
    } catch (e) {
      return Left(Failure.databaseError(e.toString()));
    }
  }

  @override
  Future<Failure?> logOut() async {
    try {
      await SharedPreferencesHandling.removeCustomerToken();
      return null;
    } catch (error) {
      return const Failure.message(
          'Sie konnten nicht permanent ausgeloggt werden');
    }
  }

  @override
  Future<Either<Failure, List<EntityContact>>> getAllContacts() async {
    try {
      return await _firebaseFirestore
          .collection('User')
          .where('userTypeIndex', isEqualTo: 2)
          .get()
          .then((value) {
        final List<EntityContact> contacts = value.docs.map((document) {
          final json = document.data();
          return EntityContact(
            customerNumber: json['customerNumber'],
            email: json['email'],
            companyName: json['companyName'],
            customerName: json['customerName'],
            customerSurname: json['customerSurname'],
          );
        }).toList();
        debugPrint("contacts => $contacts");
        return Right(contacts);
      }, onError: (error) {
        return Left(Failure.databaseError(error.toString()));
      });
    } catch (error) {
      return Left(Failure.message(error.toString()));
    }
  }
}
