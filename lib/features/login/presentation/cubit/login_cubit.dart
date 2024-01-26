import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/repository/login_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginRepository})
      : super(const LoginState.loggedOut());

  final LoginRepository loginRepository;

  Future<void> login(
      {required String? customerNumber, required String? password}) async {
    emit(const LoginState.loading());

    if (_loginRules(customerNumber: customerNumber, password: password)) {
      final login = await loginRepository.loginCustomer(
          customerNumber: customerNumber!,
          password: hash(password!).toString());
      login.fold((failure) {
        emit(LoginState.failure(failure));
      }, (entityLoginCustomer) {
        debugPrint("cubit user exist");
        emit(LoginState.loggedIn(entityLoginCustomer: entityLoginCustomer));
        return null;
      });
    }
  }

  bool _loginRules(
      {required String? customerNumber, required String? password}) {
    if (customerNumber == null ||
        customerNumber.isEmpty ||
        password == null ||
        password.isEmpty) {
      emit(const LoginState.failure(
        Failure.message(
            'Bitte geben Sie Ihre Kundennummer und Ihr Passwort ein'),
      ));

      return false;
    } else {
      return true;
    }
  }

  Future<void> logOut() async {
    emit(const LoginState.loggedOut());
  }
}
