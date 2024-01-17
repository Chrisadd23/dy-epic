import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_category.freezed.dart';

class EntityCategory {
  const EntityCategory();
}

@freezed
class EntityProduct with _$EntityProduct {
  const EntityProduct._();

  const factory EntityProduct({
    required String productNumber,
    required String name,
    required Enum productType,
    required double price,
    required int indexNumber,
    required String picturePath,
    int? offerInPercent,
    int? productCount,
  }) = _EntityProduct;
}
