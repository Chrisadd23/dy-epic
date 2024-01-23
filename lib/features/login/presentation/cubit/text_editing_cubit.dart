import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/text_editing_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextEditingCubit extends Cubit<TextEditingState> {
  TextEditingCubit()
      : super(
          TextEditingState(
            customerNumber: TextEditingController(),
            customerPassword: TextEditingController(),
          ),
        );

  @override
  Future<void> close() {
    state.customerNumber.dispose();
    state.customerPassword.dispose();
    return super.close();
  }
}
