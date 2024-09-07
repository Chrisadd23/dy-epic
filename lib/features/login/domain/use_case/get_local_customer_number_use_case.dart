import 'package:app_flutter_produkt_bestellen/features/login/domain/repository/login_repository.dart';

class GetLocalCustomerNumberUseCase {
  GetLocalCustomerNumberUseCase(this._loginRepository);

  final LoginRepository _loginRepository;

  String? call() => _loginRepository.getLocalCustomerNumber();
}
