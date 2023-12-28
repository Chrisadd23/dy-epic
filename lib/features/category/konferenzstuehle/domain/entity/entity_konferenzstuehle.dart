import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_konferenzstuehle.freezed.dart';

enum EnumCategoryConferenceChair { camiro }

@freezed
class EntityConferenceChair with _$EntityConferenceChair {
  const EntityConferenceChair._();

  const factory EntityConferenceChair(
      {required String categoryName,
      required List<EntityProduct> listProduct}) = _EntityConferenceChair;
}

@freezed
class EntityProduct with _$EntityProduct {
  const EntityProduct._();

  const factory EntityProduct({
    required EnumCategoryConferenceChair productType,
    required double price,
    required int indexNumber,
    required String picturePath,
    int? offerInPercent,
    int? productCount,
  }) = _EntityProduct;
}
