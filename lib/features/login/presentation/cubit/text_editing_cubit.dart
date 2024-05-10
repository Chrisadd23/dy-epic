import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/text_editing_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextEditingCubit extends Cubit<TextEditingState> {
  TextEditingCubit()
      : super(
          TextEditingState(
              customerNumber: TextEditingController(),
              customerPassword: TextEditingController(),
              hidePassword: true),
        );

  Future<void> clearController() async {
    state.customerPassword.clear();
    state.customerNumber.clear();
    final newState = state.copyWith(hidePassword: true);

    emit(newState);
  }

  Future<void> changeVisibility() async {
    final newState = state.copyWith(hidePassword: !state.hidePassword);

    emit(newState);
  }

  @override
  Future<void> close() {
    state.customerNumber.dispose();
    state.customerPassword.dispose();
    return super.close();
  }
}
