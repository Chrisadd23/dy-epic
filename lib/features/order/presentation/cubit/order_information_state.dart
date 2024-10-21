import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_information_state.freezed.dart';

@freezed
class OrderInformationState with _$OrderInformationState {
  const factory OrderInformationState.loading() = _Loading;

  const factory OrderInformationState.success(
      {required List<EntityCorePictures> pictures}) = _Success;

  const factory OrderInformationState.failure({required Failure failure}) =
      _Failure;
}
