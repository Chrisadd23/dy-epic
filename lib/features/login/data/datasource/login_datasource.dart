import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/notification_settings_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';

abstract class LoginDatasource {
  Future<Either<Failure, EntityLoginCustomer>> login(
      {required String customerNumber, required String password});

  Future<Either<Failure, EntityLoginCustomer>> updateCustomerDeliveryAddress(
      {required String street,
      required String zipCode,
      required String city,
      required EntityLoginCustomer customerEntity});

  Future<Either<Failure, List<UserNotification>>> toggleNotifications(
      {required String customerNumber,
      required List<NotificationSetting> newNotificationSettings});
}

class LoginDatasourceImplementation extends LoginDatasource {
  LoginDatasourceImplementation(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  @override
  Future<Either<Failure, EntityLoginCustomer>> login(
      {required String customerNumber, required String password}) async {
    try {
      final Either<Failure, EntityLoginCustomer> entityLoginCustomer =
          await _firebaseFirestore
              .collection('User')
              .where('customerNumber', isEqualTo: customerNumber)
              .where('password', isEqualTo: password)
              .get()
              .then((value) {
        final Map<String, dynamic>? json = value.docs.firstOrNull?.data();

        if (json != null) {
          debugPrint("customerJson ==> $json");
          return Right(EntityLoginCustomer.fromJson(json));
        } else {
          return const Left(
              Failure.databaseError('Der Benutzer wurde nicht gefunden'));
        }
      }, onError: (error) => debugPrint("error => ${error.toString()}"));

      return entityLoginCustomer;
    } catch (e) {
      return Left(Failure.databaseError(e.toString()));
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
                  statusType: newNotification.enumOrderProcess.sortIndex,
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
                statusType: newNotification.enumOrderProcess.sortIndex,
                active: newNotification.isActive))
            .toList());
      } else {
        return Left(failure!);
      }
    } catch (error) {
      return Left(Failure.databaseError(error.toString()));
    }
  }
}
