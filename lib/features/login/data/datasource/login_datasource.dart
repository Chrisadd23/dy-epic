import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';

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
          .where('password', isEqualTo: '801795556')
          .where('customerNumber', isEqualTo: customerNumber)
          .get()
          .then((value) {
        final Map<String, dynamic>? user = value.docs.firstOrNull?.data();
        debugPrint("not crashed yet");
        if (user != null) {
          debugPrint("User exist");
          return EntityLoginCustomer(
              address: const CustomerAddress(
                  street: 'street', city: 'city', zipCode: 'zipCode'),
              customerNumber: user['customerNumber'].toString());
        }
      }, onError: (error) => debugPrint(error.toString()));
      if (entityLoginCustomer != null) {
        return Right(entityLoginCustomer);
      } else {
        const Left(Failure.databaseError(
            'Der Benutzer wurder noch nicht registriert'));
      }
    } catch (e) {
      return Left(Failure.databaseError(e.toString()));
    }
    debugPrint("datasource --- hashkey ==> ${hash('password')}");
    return const Left(Failure.databaseError("DummyFailure"));
  }
}
// 1027989622
// 764050101
