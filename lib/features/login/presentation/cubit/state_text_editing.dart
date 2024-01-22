import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_text_editing.freezed.dart';

@freezed
class StateTextEditing with _$StateTextEditing {
  const factory StateTextEditing({
    required TextEditingController customerNumber,
    required TextEditingController customerPassword,
  }) = _StateTextEditing;
}
