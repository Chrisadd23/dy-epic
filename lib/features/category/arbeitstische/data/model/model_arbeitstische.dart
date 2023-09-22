import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_arbeitstische.freezed.dart';

@freezed
abstract class ModelArbeitstische with _$ModelArbeitstische {
  const ModelArbeitstische._();

  const factory ModelArbeitstische({
    ChoosenDateTime? dateTime,
    ProductCategory? productCategory,
  }) = _ModelArbeitstische;
}

@freezed
class ChoosenDateTime with _$ChoosenDateTime {
  const ChoosenDateTime._();

  const factory ChoosenDateTime({DateTime? selectedDateTime}) =
      _ChoosenDateTime;
}

@freezed
class ProductCategory with _$ProductCategory {
  const ProductCategory._();

  const factory ProductCategory({
    required String categoryName,
    required List<Product> listProduct,
    Product? choosenProduct,
  }) = _ProductCategory;
}

@freezed
class Product with _$Product {
  const Product._();

  const factory Product({
    required String productName,
    required double price,
    int? offerInPercent,
    int? productCount,
  }) = _Product;
}
