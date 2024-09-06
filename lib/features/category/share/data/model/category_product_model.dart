//ignore_for_file: invalid_annotation_target
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_product_model.freezed.dart';
part 'category_product_model.g.dart';

@freezed
class CategoryProductModel with _$CategoryProductModel {
  const CategoryProductModel._();

  const factory CategoryProductModel({
    String? productNumber,
    String? productTitle,
    String? type,
    @JsonKey(name: 'price') double? normalPrice,
    List<String>? attributes,
  }) = _CategoryProductModel;

  CategoryEntity toEntity() {
    return CategoryEntity(
      productNumber: productNumber!,
      productTitle: productTitle!,
      type: type!,
      normalPrice: normalPrice,
      attributes: attributes,
    );
  }

  factory CategoryProductModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryProductModelFromJson(json);
}
