import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_product.freezed.dart';

@freezed
class StateProduct with _$StateProduct {
  const factory StateProduct({
    @Default('') String name,
    @Default(0) int productOrderCount,
  }) = _StateProduct;
}
