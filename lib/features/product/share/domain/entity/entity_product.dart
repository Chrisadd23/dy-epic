import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/entity/entity_product_workingtable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_product.freezed.dart';

@freezed
class EntityProduct with _$EntityProduct {
  const EntityProduct._();

  const factory EntityProduct(
      {required EnumCategoryProduct productCategory,
      required double price,
      required String name,
      required String productNumber,
      required List<String> attributes,
      Uint8List? pictureBytes,
      WorkingTableSizeAndColor? workingTableSizeAndColor,
      List<AdditionalAttributes>? additionalAttributes,
      int? offerInPercent}) = _EntityProduct;

  double get additionalAmount {
    double additionalAmount = 0;
    if (additionalAttributes == null) return additionalAmount;

    for (final attribute in additionalAttributes!) {
      additionalAmount += attribute.amount;
    }
    return additionalAmount;
  }
}

@freezed
class WorkingTableSizeAndColor with _$WorkingTableSizeAndColor {
  const factory WorkingTableSizeAndColor({
    required List<EntityGestell> listEntityGestell,
    EntityGestell? selectedEntityGestell,
    required List<EntityBreiteUndTiefe> listBreisteUndTiefe,
    EntityBreiteUndTiefe? selectedBreiteUndTiefe,
  }) = _WorkingTableSizeAndColor;
}

@freezed
class AdditionalAttributes with _$AdditionalAttributes {
  const factory AdditionalAttributes({
    required String name,
    required double amount,
  }) = _AdditionalAttributes;
}
