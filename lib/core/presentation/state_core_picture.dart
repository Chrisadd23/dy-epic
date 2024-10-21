import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_core_picture.freezed.dart';

@freezed
class StateCorePicture with _$StateCorePicture {
  const factory StateCorePicture.loading() = _Loading;

  const factory StateCorePicture.success(
      {required List<EntityCorePictures> entityPictures}) = _Success;

  const factory StateCorePicture.failure({required Failure failure}) = _Failure;
}
