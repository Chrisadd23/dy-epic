import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/entity_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_buerodrehstuehle.freezed.dart';

enum EnumCategoryOfficeChair { xenon, kyra, lo, camiro, none }

@freezed
abstract class EntityBuerodrehstuehle with _$EntityBuerodrehstuehle {
  const EntityBuerodrehstuehle._();

  const factory EntityBuerodrehstuehle(
      {required String categoryName,
      required List<EntityProduct> listProduct}) = _EntityBuerodrehstuehle;
}
