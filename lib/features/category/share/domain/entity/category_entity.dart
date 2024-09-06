//ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.freezed.dart';
part 'category_entity.g.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  @JsonSerializable(explicitToJson: true)
  const factory CategoryEntity({
    required String productNumber,
    required String productTitle,
    required String type,
    double? normalPrice,
    List<String>? attributes,
  }) = _CategoryEntity;

  factory CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryEntityFromJson(json);
}
