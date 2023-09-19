import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:bloc/bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.loggedOut());

  Future<void> load() async {
    if (state != const LoginState.loading()) {
      emit(const LoginState.loading());
    }

    const Duration(seconds: 1);

    emit(const LoginState.loggedIn());
  }
}
