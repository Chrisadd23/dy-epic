import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_workingtable_entity.freezed.dart';

@freezed
abstract class CategoryWorkingtableEntity with _$CategoryWorkingtableEntity {
  const CategoryWorkingtableEntity._();

  const factory CategoryWorkingtableEntity({
    required String categoryName,
    required List<CategoryProductEntity> listProduct,
  }) = _CategoryWorkingtableEntity;
}
