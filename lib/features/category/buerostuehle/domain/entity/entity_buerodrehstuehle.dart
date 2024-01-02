import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_buerodrehstuehle.freezed.dart';

enum EnumCategoryOfficeChair { xenon, kyra, lo, camiro }

@freezed
abstract class EntityBuerodrehstuehle with _$EntityBuerodrehstuehle {
  const EntityBuerodrehstuehle._();

  const factory EntityBuerodrehstuehle(
      {required String categoryName,
      required List<EntityProduct> listProduct}) = _EntityBuerodrehstuehle;
}

@freezed
class EntityProduct with _$EntityProduct {
  const EntityProduct._();

  const factory EntityProduct({
    required String name,
    required EnumCategoryOfficeChair productType,
    required double price,
    required int indexNumber,
    required String picturePath,
    int? offerInPercent,
    int? productCount,
  }) = _EntityProduct;
}
