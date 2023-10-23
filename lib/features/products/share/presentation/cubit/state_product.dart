import 'package:app_flutter_produkt_bestellen/features/products/share/domain/entity/entity_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_product.freezed.dart';

@freezed
class StateProduct with _$StateProduct {
  const factory StateProduct({
    @Default('') String hashKey,
    @Default('') String category,
    @Default(0) int productOrderCount,
    Product? product,
  }) = _StateProduct;
}
