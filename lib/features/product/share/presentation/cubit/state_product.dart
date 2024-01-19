import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_product.freezed.dart';

@freezed
class StateProduct<T> with _$StateProduct<T> {
  const factory StateProduct.loading() = _Loading;

  const factory StateProduct.success({
    @Default('') String hashKey,
    @Default('') String category,
    @Default(0) int productOrderCount,
    @Default(0.00) double price,
    EntityProduct? product,
    @Default({}) Map<Enum, dynamic> selectedCharacteristics,
  }) = _Success;

  const factory StateProduct.failure({required Failure failure}) = _Failure;
}
