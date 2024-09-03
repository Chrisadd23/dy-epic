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
    List<PricePerSize>? pricePerSize,
    List<FrameColor>? frameColors,
  }) = _CategoryProductModel;

  CategoryEntity toEntity() {
    return CategoryEntity(
      productNumber: productNumber!,
      productTitle: productTitle!,
      type: type!,
      normalPrice: normalPrice,
      attributes: attributes,
      pricePerSize: pricePerSize,
      frameColors: frameColors,
    );
  }

  factory CategoryProductModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryProductModelFromJson(json);
}

@freezed
class PricePerSize with _$PricePerSize {
  @JsonSerializable(explicitToJson: true)
  const factory PricePerSize({
    required String height,
    required String width,
    required String price,
  }) = _PricePerSize;

  factory PricePerSize.fromJson(Map<String, dynamic> json) =>
      _$PricePerSizeFromJson(json);
}

@freezed
class FrameColor with _$FrameColor {
  @JsonSerializable(explicitToJson: true)
  const factory FrameColor({
    required String color,
    required String hexValue,
  }) = _FrameColor;

  factory FrameColor.fromJson(Map<String, dynamic> json) =>
      _$FrameColorFromJson(json);
}
