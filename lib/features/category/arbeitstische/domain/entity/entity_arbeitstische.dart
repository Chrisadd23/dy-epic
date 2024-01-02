import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_arbeitstische.freezed.dart';

@freezed
abstract class EntityArbeitstische with _$EntityArbeitstische {
  const EntityArbeitstische._();

  const factory EntityArbeitstische({
    required String categoryName,
    required List<EntityProduct> listProduct,
  }) = _EntityArbeitstische;
}

@freezed
class EntityProduct with _$EntityProduct {
  const EntityProduct._();

  const factory EntityProduct({
    required EnumCategoryWorkingTable productType,
    required double price,
    required int indexNumber,
    required String picturePath,
    required String name,
    int? offerInPercent,
    int? productCount,
  }) = _EntityProduct;
}
