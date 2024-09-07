import 'package:flutter_bloc/flutter_bloc.dart';

class StayLoggedInCubit extends Cubit<bool> {
  StayLoggedInCubit() : super(false);

  void triggerCheckbox() {
    emit(!state);
  }
}
