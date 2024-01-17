import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_conference_chair_product.freezed.dart';

enum EnumConferenceChairProduct {
  name,
  picturePath,
}

@freezed
class StateConferenceChairProduct with _$StateConferenceChairProduct {
  const factory StateConferenceChairProduct(
      {required String name,
      required String productNumber,
      Uint8List? pictureBytes,
      required List<String> attributes}) = _StateConferenceChairProduct;
}
