import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    @Default('') String hashKey,
    @Default('') String category,
    @Default(0) int productOrderCount,
    CategoryEntity? productEntity,
    EntityCorePictures? entityCorePicture,
    int? position,
  }) = _ProductState;
}
