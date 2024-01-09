import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_office_chair_product.freezed.dart';

@freezed
class EntityOfficeChairProduct with _$EntityOfficeChairProduct {
  const factory EntityOfficeChairProduct({
    required String name,
    required double price,
    required String picturePath,
    required List<String> attributes,
  }) = _EntityOfficeChairProduct;
}
