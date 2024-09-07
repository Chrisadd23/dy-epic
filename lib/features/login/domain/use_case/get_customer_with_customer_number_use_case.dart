import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/repository/login_repository.dart';
import 'package:either_dart/either.dart';

class GetCustomerWithCustomerNumberUseCase {
  GetCustomerWithCustomerNumberUseCase(this._loginRepository);

  final LoginRepository _loginRepository;

  Future<Either<Failure, EntityLoginCustomer>> call(
          {required String customerNumber}) =>
      _loginRepository.getCustomerDataBasedOnCustomerNumber(
          customerNumber: customerNumber);
}
