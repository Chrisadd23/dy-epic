import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_product.freezed.dart';

@freezed
class StateProduct<T> with _$StateProduct<T> {
  const factory StateProduct({
    @Default('') String hashKey,
    @Default('') String category,
    @Default(0) int productOrderCount,
    @Default(0.00) double price,
    T? product,
    int? position,
    @Default({}) Map<Enum, dynamic> selectedCharacteristics,
  }) = _StateProduct;
}
