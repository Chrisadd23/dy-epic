import 'dart:typed_data';
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_product_workingtable.freezed.dart';

@freezed
class EntityWorkingTableProduct with _$EntityWorkingTableProduct {
  const factory EntityWorkingTableProduct({
    required String name,
    required String productNumber,
    required List<String> attributes,
    List<EntityBreiteUndTiefe>? breiteXTiefe,
    EntityBreiteUndTiefe? selectedWidthAndHeight,
    List<EntityGestell>? frameColors,
    EntityGestell? selectedEntityGestell,
  }) = _EntityWorkingTableProduct;
}

@freezed
class EntityBreiteUndTiefe with _$EntityBreiteUndTiefe {
  const factory EntityBreiteUndTiefe({
    required String breite,
    required String tiefe,
    required String price,
  }) = _EntityBreiteUndTiefe;
}

@freezed
class EntityGestell with _$EntityGestell {
  const factory EntityGestell({
    required Color color,
    required String material,
    Uint8List? pictureBytes,
    String? name,
  }) = _EntityGestell;
}
