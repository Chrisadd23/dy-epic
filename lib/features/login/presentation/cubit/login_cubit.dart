
import 'package:bloc/bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState>
{
   LoginCubit() : super(const LoginState.loggedOut());

   Future<void> load() async {

   }
}