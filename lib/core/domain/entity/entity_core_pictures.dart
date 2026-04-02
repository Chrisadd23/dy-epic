import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_core_pictures.freezed.dart';

@freezed
abstract class EntityCorePictures with _$EntityCorePictures {
  const factory EntityCorePictures({
    required String name,
    required Uint8List? listIntForUint8List,
  }) = _EntityCorePictures;
}
