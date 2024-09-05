import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_core_pictures.freezed.dart';
part 'entity_core_pictures.g.dart';

@freezed
class EntityCorePictures with _$EntityCorePictures {
  //ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory EntityCorePictures({
    required String name,
    required List<int> listIntForUint8List,
  }) = _EntityCorePictures;

  factory EntityCorePictures.fromJson(Map<String, dynamic> json) =>
      _$EntityCorePicturesFromJson(json);
}
