import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';

abstract class LoginDatasource {
  Future<Either<Failure, EntityLoginCustomer>> login(
      {required String customerNumber, required String password});
}

class LoginDatasourceImplementation extends LoginDatasource {
  LoginDatasourceImplementation(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  @override
  Future<Either<Failure, EntityLoginCustomer>> login(
      {required String customerNumber, required String password}) async {
    try {
      debugPrint("customerNumber => $customerNumber");
      final entityLoginCustomer = await _firebaseFirestore
          .collection('User')
          .where('password', isEqualTo: password)
          .where('customerNumber', isEqualTo: customerNumber)
          .get()
          .then((value) {
        final Map<String, dynamic>? user = value.docs.firstOrNull?.data();
        debugPrint("not crashed yet");
        if (user != null) {
          debugPrint("User exist");

          return EntityLoginCustomer(
            address: CustomerAddress(
                street: user['address']['street'].toString(),
                city: user['address']['city'],
                zipCode: user['address']['zipCode']),
            customerNumber: user['customerNumber'].toString(),
            companyName: user['companyName'],
            email: user['email'],
            customerName: user['firstname'],
            customerSurname: user['lastname'],
            registrationDate: _convertTimestamptoDrawDate(
                user['registrationdate'] as Timestamp),
          );
        }
      }, onError: (error) => debugPrint(error.toString()));
      debugPrint("entityLoginCustomer ==> ${entityLoginCustomer.toString()}");
      if (entityLoginCustomer != null) {
        return Right(entityLoginCustomer);
      } else {
        return const Left(
            Failure.databaseError('Der Benutzer wurde nicht gefunden'));
      }
    } catch (e) {
      return Left(Failure.databaseError(e.toString()));
    }
  }

  DateTime? _convertTimestamptoDrawDate(Timestamp timestamp) {
    return timestamp.toDate();
  }
}
