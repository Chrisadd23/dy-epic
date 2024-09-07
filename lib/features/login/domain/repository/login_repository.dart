import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/notification_settings_state.dart';
import 'package:either_dart/either.dart';

abstract class LoginRepository {
  Future<Either<Failure, EntityLoginCustomer>> loginCustomer(
      {required String customerNumber,
      required String password,
      required bool stayLoggedIn});

  Future<Either<Failure, EntityLoginCustomer>> updateCustomerDeliveryAddress(
      {required String street,
      required String zipCode,
      required String city,
      required EntityLoginCustomer customerEntity});

  Future<Either<Failure, bool>> toggleNotifications(
      {required String customerNumber,
      required List<NotificationSetting> newNotificationSettings});

  EntityLoginCustomer? get customer;

  Stream<EntityLoginCustomer> get entityLoginCustomer;

  Future<Either<Failure, EntityLoginCustomer>>
      getCustomerDataBasedOnCustomerNumber({required String customerNumber});

  String? getLocalCustomerNumber();

  Future<Failure?> logout();
}
