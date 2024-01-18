import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_category_generic.freezed.dart';

@freezed
class StateCategory with _$StateCategory {
  const StateCategory._();

  const factory StateCategory.loading() = _Loading;

  const factory StateCategory.success({
    ChosenDateTime? dateTime,
    ProductCategory? productCategory,
  }) = _Success;

  const factory StateCategory.failure({required Failure failure}) = _Failure;
}

@freezed
class ChosenDateTime with _$ChosenDateTime {
  const ChosenDateTime._();

  const factory ChosenDateTime({DateTime? selectedDateTime}) = _ChosenDateTime;
}

@freezed
class ProductCategory with _$ProductCategory {
  const ProductCategory._();

  const factory ProductCategory({
    required String categoryName,
    required List<Product> listProduct,
    Product? chosenProduct,
  }) = _ProductCategory;
}

@freezed
class Product with _$Product {
  const Product._();

  const factory Product({
    required String name,
    required Enum productType,
    required double price,
    required String picturePath,
    Uint8List? pictureByte,
    int? offerInPercent,
    int? productCount,
  }) = _Product;
}
