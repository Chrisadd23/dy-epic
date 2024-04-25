import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_workingtable_entity.freezed.dart';

enum CategoryWorkingTablePricePerSizeEnum {
  large,
  superLarge,
  extremLarge,
}

@freezed
class CategoryWorkingTableEntity with _$CategoryWorkingTableEntity {
  const factory CategoryWorkingTableEntity({
    required String categoryName,
    required List<CategoryWorkingTableProductEntity> listProduct,
  }) = _CategoryWorkingTableEntity;
}

@freezed
class CategoryWorkingTableProductEntity
    with _$CategoryWorkingTableProductEntity {
  const factory CategoryWorkingTableProductEntity({
    required CategoryProductEntity categoryProductEntity,
    required List<CategoryWorkingTableFrameColor> workingTableFrameColors,
    required List<CategoryWorkingTableProductPricePerSize> pricePerSize,
  }) = _CategoryWorkingtableProductEntity;
}

@freezed
class CategoryWorkingTableFrameColor with _$CategoryWorkingTableFrameColor {
  const factory CategoryWorkingTableFrameColor({
    required String colorName,
    required String hexValue,
  }) = _CategoryWorkingTableFrameColor;
}

@freezed
class CategoryWorkingTableProductPricePerSize
    with _$CategoryWorkingTableProductPricePerSize {
  const factory CategoryWorkingTableProductPricePerSize({
    required CategoryWorkingTablePricePerSizeEnum pricePerSizeEnum,
    required int width,
    required int height,
    required double price,
  }) = _CategoryWorkingTableProductPricePerSize;
}
