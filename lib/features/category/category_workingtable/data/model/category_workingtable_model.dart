import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_workingtable_model.freezed.dart';

@freezed
abstract class CategoryWorkingtableModel with _$CategoryWorkingtableModel {
  const CategoryWorkingtableModel._();

  const factory CategoryWorkingtableModel({
    required String categoryName,
    required List<CategoryWorkingtableProductModel> listProduct,
  }) = _CategoryWorkingtableModel;
}

@freezed
class CategoryWorkingtableProductModel with _$CategoryWorkingtableProductModel {
  const CategoryWorkingtableProductModel._();

  const factory CategoryWorkingtableProductModel({
    required String productName,
    required double price,
    required int indexNumber,
    int? offerInPercent,
    int? productCount,
  }) = _CategoryWorkingtableProductModel;
}
