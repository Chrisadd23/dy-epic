import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_integration_state.freezed.dart';

@freezed
class ProductIntegrationState with _$ProductIntegrationState {
  const factory ProductIntegrationState(
      {required EnumCategoryProduct categoryProduct,
      required bool imageUploadInProcess,
      required bool infoUploadInProcess,
      required bool isProductVisible,
      Uint8List? imageUint8List,
      @Default([]) List<String> attributes,
      Failure? failure}) = _ProductIntegrationState;
}
