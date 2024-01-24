import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/data/datasource/login_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/repository/login_repository.dart';
import 'package:either_dart/either.dart';

class LoginRepositoryImplementation extends LoginRepository {
  final LoginDatasource loginDataSource;

  LoginRepositoryImplementation({required this.loginDataSource});

  @override
  Future<Either<Failure, EntityLoginCustomer>> loginCustomer(
      {required String customerNumber, required String password}) async {
    return loginDataSource.login(
        customerNumber: customerNumber, password: password);
  }
}
