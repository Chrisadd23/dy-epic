import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_office_chair_product.freezed.dart';

@freezed
class EntityOfficeChairProduct with _$EntityOfficeChairProduct {
  const factory EntityOfficeChairProduct(
      {required String name,
      required double price,
      required List<String> attributes,
      required String picturePath,
      required String productNumber,
      Uint8List? pictureBytes}) = _EntityOfficeChairProduct;
}
