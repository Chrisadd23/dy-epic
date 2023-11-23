import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_product.freezed.dart';

@freezed
class StateProduct<T> with _$StateProduct<T> {
  const factory StateProduct.loading() = _Loading;

  const factory StateProduct.success({
    @Default('') String hashKey,
    @Default('') String category,
    @Default(0) int productOrderCount,
    @Default(null) T? product,
    @Default({}) Map<Enum, dynamic> selectedCharacteristics,
  }) = _Success;
}
