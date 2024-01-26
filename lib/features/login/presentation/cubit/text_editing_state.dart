import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_editing_state.freezed.dart';

@freezed
class TextEditingState with _$TextEditingState {
  const factory TextEditingState({
    required TextEditingController customerNumber,
    required TextEditingController customerPassword,
    required bool hidePassword,
  }) = _TextEditingState;
}
