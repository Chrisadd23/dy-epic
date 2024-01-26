import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:either_dart/either.dart';

abstract class LoginRepository {
  Future<Either<Failure, EntityLoginCustomer>> loginCustomer(
      {required String customerNumber, required String password});
}
