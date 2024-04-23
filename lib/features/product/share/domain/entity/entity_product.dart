import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/entity/entity_product_workingtable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_product.freezed.dart';

@freezed
class EntityProduct with _$EntityProduct {
  const factory EntityProduct(
      {required EnumCategoryProduct productCategory,
      required double price,
      required String name,
      required String productNumber,
      required List<String> attributes,
      Uint8List? pictureBytes,
      WorkingTableAdditionalAttributes? workingTableAdditionalAttributes,
      int? offerInPercent}) = _EntityProduct;
}

@freezed
class WorkingTableAdditionalAttributes with _$WorkingTableAdditionalAttributes {
  const factory WorkingTableAdditionalAttributes({
    required List<EntityGestell> listEntityGestell,
    EntityGestell? selectedEntityGestell,
    required List<EntityBreiteUndTiefe> listBreisteUndTiefe,
    EntityBreiteUndTiefe? selectedBreiteUndTiefe,
  }) = _WorkingTableAdditionalAttributes;
}
