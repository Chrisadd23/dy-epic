import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/entity_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_konferenzstuehle.freezed.dart';

enum EnumCategoryConferenceChair { camiro, none }

@freezed
class EntityConferenceChair with _$EntityConferenceChair {
  const EntityConferenceChair._();

  const factory EntityConferenceChair(
      {required String categoryName,
      required List<EntityProduct> listProduct}) = _EntityConferenceChair;
}
