import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_konferenzstuehle.freezed.dart';

enum EnumCategoryConferenceChair { camiro, none }

@freezed
class EntityConferenceChair with _$EntityConferenceChair {
  const EntityConferenceChair._();

  const factory EntityConferenceChair(
          {required String categoryName,
          required List<CategoryProductEntity> listProduct}) =
      _EntityConferenceChair;
}
