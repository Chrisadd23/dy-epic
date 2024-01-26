import 'dart:typed_data';
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_product_workingtable.freezed.dart';

@freezed
class EntityWorkingTableProduct with _$EntityWorkingTableProduct {
  const factory EntityWorkingTableProduct(
      {required String name,
      required double price,
      required String picturePath,
      required String productNumber,
      required List<String> attributes,
      List<EntityBreiteUndTiefe>? breiteXTiefe,
      List<EntityGestell>? frameColors,
      Uint8List? pictureBytes}) = _EntityWorkingTableProduct;
}

@freezed
class EntityBreiteUndTiefe with _$EntityBreiteUndTiefe {
  const factory EntityBreiteUndTiefe({
    required String breite,
    required String tiefe,
  }) = _EntityBreiteUndTiefe;
}

@freezed
class EntityGestell with _$EntityGestell {
  const factory EntityGestell({
    required Color color,
    required String material,
    required String picturePath,
    String? name,
  }) = _EntityGestell;
}
