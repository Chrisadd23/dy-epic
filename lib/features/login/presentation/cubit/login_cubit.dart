import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/repository/login_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/repository/order_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepository, this._orderRepository)
      : super(const LoginState.loggedOut()) {
    _streamSubscription =
        _loginRepository.entityLoginCustomer.listen((entityLoginCustomer) {
      emit(LoginState.loggedIn(entityLoginCustomer: entityLoginCustomer));
    });
  }

  final LoginRepository _loginRepository;
  final OrderRepository _orderRepository;
  late final StreamSubscription<EntityLoginCustomer> _streamSubscription;

  Future<bool?> login(
      {required String? customerNumber,
      required String? password,
      required bool stayLoggedIn}) async {
    emit(const LoginState.loading());

    if (_loginRules(customerNumber: customerNumber, password: password)) {
      final login = await _loginRepository.loginCustomer(
        customerNumber: customerNumber!,
        password: hash(password!).toString(),
        stayLoggedIn: stayLoggedIn,
      );

      return login.fold((failure) {
        emit(LoginState.failure(failure));
        return false;
      }, (entityLoginCustomer) async {
        emit(LoginState.loggedIn(entityLoginCustomer: entityLoginCustomer));
        return true;
      });
    }
    return false;
  }

  bool _loginRules(
      {required String? customerNumber, required String? password}) {
    //check if customer entered test
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

  Future<Failure?> logOut() async {
    _orderRepository
      ..clearOrderList()
      ..clearRequestList();

    emit(const LoginState.loggedOut());
    return _loginRepository.logout();
  }

  void updateCustomer(EntityLoginCustomer newCustomerEntity) {
    state.mapOrNull(
        loggedIn: (loggedInState) => emit(
            loggedInState.copyWith(entityLoginCustomer: newCustomerEntity)));
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
