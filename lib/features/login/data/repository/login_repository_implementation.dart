import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/data/datasource/login_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/repository/login_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/notification_settings_state.dart';
import 'package:either_dart/either.dart';

class LoginRepositoryImplementation extends LoginRepository {
  final LoginDatasource _loginDataSource;

  LoginRepositoryImplementation(this._loginDataSource);

  EntityLoginCustomer? _loginCustomer;

  @override
  Future<Either<Failure, EntityLoginCustomer>> loginCustomer(
      {required String customerNumber, required String password}) async {
    return _loginDataSource
        .login(customerNumber: customerNumber, password: password)
        .fold((left) => Left(left), (entityLoginCustomer) {
      _loginCustomer = entityLoginCustomer;
      return Right(entityLoginCustomer);
    });
  }

  @override
  Future<Either<Failure, EntityLoginCustomer>> updateCustomerDeliveryAddress(
      {required EntityLoginCustomer customerEntity,
      required String street,
      required String zipCode,
      required String city}) async {
    return _loginDataSource
        .updateCustomerDeliveryAddress(
            street: street,
            zipCode: zipCode,
            city: city,
            customerEntity: customerEntity)
        .fold((left) => Left(left), (entityLoginCustomer) {
      _loginCustomer = entityLoginCustomer;

      return Right(entityLoginCustomer);
    });
  }

  @override
  Future<Either<Failure, bool>> toggleNotifications({
    required List<NotificationSetting> newNotificationSettings,
    required String customerNumber,
  }) {
    // TODO: implement toggleAllNotifications
    return _loginDataSource
        .toggleNotifications(
      newNotificationSettings: newNotificationSettings,
      customerNumber: customerNumber,
    )
        .fold((left) => Left(left), (customerEntity) {
      _loginCustomer = _loginCustomer!.copyWith(notifications: customerEntity);
      return const Right(true);
    });
  }

  @override
  EntityLoginCustomer? get customer => _loginCustomer;
}
