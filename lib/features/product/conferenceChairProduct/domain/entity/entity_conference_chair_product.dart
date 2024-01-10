import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_conference_chair_product.freezed.dart';

@freezed
class EntityConferenceChairProduct with _$EntityConferenceChairProduct {
  const factory EntityConferenceChairProduct(
      {required String name,
      required double price,
      required List<String> attributes,
      required String picturePath}) = _EntityConferenceChairProduct;
}
