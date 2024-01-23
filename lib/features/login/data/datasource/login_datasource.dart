import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

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
    debugPrint("datasource --- ");
    return const Left(FailureState.databaseError("DummyFailure"));
  }
}
