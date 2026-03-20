import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/repository/login_repository.dart';

class GetCustomerWithCustomerNumberUseCase {
  GetCustomerWithCustomerNumberUseCase(this._loginRepository);

  final LoginRepository _loginRepository;

  EntityLoginCustomer? call() => _loginRepository.customer;
}
