import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product() = _Product;
}
