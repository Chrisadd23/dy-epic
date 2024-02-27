import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_product_entity.freezed.dart';

@freezed
class CategoryProductEntity with _$CategoryProductEntity {
  const CategoryProductEntity._();

  const factory CategoryProductEntity({
    required String productNumber,
    required String name,
    required Enum productType,
    required double price,
    required int indexNumber,
    required String picturePath,
    int? offerInPercent,
    int? productCount,
  }) = _CategoryProductEntity;
}
