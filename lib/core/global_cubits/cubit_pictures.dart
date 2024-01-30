import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitPictures extends Cubit<Map<String, Uint8List?>> {
  CubitPictures() : super(<String, Uint8List?>{});

  void addPicture({required String key, required Uint8List? value}) {
    final Map<String, Uint8List?> newState = Map<String, Uint8List>.from(state);

    newState[key] = value;

    emit(newState);
  }
}
