import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_office_chair_product.freezed.dart';

enum EnumOfficeChairProduct {
  name,
  picturePath,
}

@freezed
class StateOfficeChairProduct with _$StateOfficeChairProduct {
  const factory StateOfficeChairProduct(
      {required String name,
      required List<String> attributes}) = _StateOfficeChairProduct;
}
