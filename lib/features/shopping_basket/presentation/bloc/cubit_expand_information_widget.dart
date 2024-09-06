import 'package:flutter_bloc/flutter_bloc.dart';

class CubitExpandInformationWidget extends Cubit<bool> {
  CubitExpandInformationWidget() : super(false);

  onTap() {
    emit(!state);
  }
}
