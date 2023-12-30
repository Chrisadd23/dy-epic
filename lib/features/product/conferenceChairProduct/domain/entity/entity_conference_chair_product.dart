import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_conference_chair_product.freezed.dart';

@freezed
class EntityConferenceChairProduct with _$EntityConferenceChairProduct {
  const factory EntityConferenceChairProduct({
    required String name,
    required List<String> attributes,
  }) = _EntityConferenceChairProduct;
}
