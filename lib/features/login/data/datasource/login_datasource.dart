import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
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
              .get()
              .then((value) {
        final Map<String, dynamic>? user = value.docs.firstOrNull?.data();

        if (user != null) {
          if (user['password'] != password) {
            return const Left(
                Failure.databaseError('Überprüfen Sie Ihr Passwort'));
          }

          return Right(EntityLoginCustomer(
            id: value.docs.first.id,
            address: CustomerAddress(
                street: user['address']['street'].toString(),
                city: user['address']['city'],
                zipCode: user['address']['zipCode']),
            customerNumber: user['customerNumber'].toString(),
            companyName: user['companyName'],
            email: user['email'],
            customerName: user['firstname'],
            customerSurname: user['lastname'],
            registrationDate: _convertTimestampToDrawDate(
                user['registrationdate'] as Timestamp),
            deliveryAddress: CustomerAddress(
                street: user['deliveryAddress']['street'].toString(),
                city: user['deliveryAddress']['city'],
                zipCode: user['deliveryAddress']['zipCode']),
          ));
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

  DateTime? _convertTimestampToDrawDate(Timestamp timestamp) {
    return timestamp.toDate();
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
          .doc(customerEntity.id)
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
          });

      return Right(customer);
    } catch (error) {
      return Left(Failure.databaseError(error.toString()));
    }
  }
}
