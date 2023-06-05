
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loggedOut() = _LoggedOut;
  const factory LoginState.loggedIn() = _LoggedIn;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.failure(Failure failure) = _Failure;
}