import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState.loggedOut() = _LoggedOut;

  const factory LoginState.loggedIn({
    required EntityLoginCustomer entityLoginCustomer,
  }) = _LoggedIn;

  const factory LoginState.loading() = _Loading;

  const factory LoginState.failure(Failure failure) = _Failure;

  EntityLoginCustomer? get customer =>
      whenOrNull(loggedIn: (customer) => customer);
}
