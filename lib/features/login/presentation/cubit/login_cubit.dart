import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/repository/login_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginRepository})
      : super(const LoginState.loggedOut());

  final LoginRepository loginRepository;

  Future<void> login(
      {required String? customerNumber, required String? password}) async {
    emit(const LoginState.loading());
    debugPrint("customerNumber == $customerNumber -- password == $password");
    debugPrint("currentState ==> ${state.toString()}");
    if (_loginRules(customerNumber: customerNumber, password: password)) {
      final login = await loginRepository.loginCustomer(
          customerNumber: customerNumber!, password: password!);
      login.fold((failure) {
        debugPrint("failure = ${failure.toString()}");
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
      debugPrint("failure");
      emit(const LoginState.failure(
        Failure.message(
            'Bitte geben Sie ihre Kundennummer und Ihr Passwort ein'),
      ));
      debugPrint("currentState ==> ${state.toString()}");
      debugPrint("after emit");

      return false;
    } else {
      return true;
    }
  }
}
