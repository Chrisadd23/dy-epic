
import 'package:bloc/bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState>
{
   LoginCubit() : super(const LoginState.loggedOut());

   Future<void> load() async {
      if(state != const LoginState.loading())
      emit(LoginState.loading());

      Duration(seconds: 1);

      emit(const LoginState.loggedIn());
   }
}