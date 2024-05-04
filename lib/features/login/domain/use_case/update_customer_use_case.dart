import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/repository/login_repository.dart';
import 'package:either_dart/either.dart';

class UpdateCustomerUseCase {
  UpdateCustomerUseCase(this._loginRepository);

  final LoginRepository _loginRepository;

  Future<Either<Failure, EntityLoginCustomer>> call({
    required EntityLoginCustomer customerEntity,
    required String street,
    required String zipCode,
    required String city,
  }) =>
      _loginRepository.updateCustomerDeliveryAddress(
          street: street,
          zipCode: zipCode,
          city: city,
          customerEntity: customerEntity);
}
