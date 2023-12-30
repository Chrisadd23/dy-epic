import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_category_generic.freezed.dart';

@freezed
abstract class StateCategory with _$StateCategory {
  const StateCategory._();

  const factory StateCategory({
    ChoosenDateTime? dateTime,
    ProductCategory? productCategory,
  }) = _StateCategory;
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
    required Enum productType,
    required double price,
    required String picturePath,
    int? offerInPercent,
    int? productCount,
  }) = _Product;
}
