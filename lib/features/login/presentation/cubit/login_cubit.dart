import 'package:app_flutter_produkt_bestellen/features/login/domain/repository/login_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginRepository})
      : super(const LoginState.loggedOut());

  final LoginRepository loginRepository;

  Future<void> login(
      {required String customerNumber, required String password}) async {
    if (state != const LoginState.loading()) {
      emit(const LoginState.loading());
    }
    final login = loginRepository.loginCustomer(
        customerNumber: customerNumber, password: password);

    login.fold((failure) => emit(LoginState.failure(failure)),
        (entityLoginCustomer) {
      emit(LoginState.loggedIn(entityLoginCustomer: entityLoginCustomer));
      return null;
    });
  }
}
