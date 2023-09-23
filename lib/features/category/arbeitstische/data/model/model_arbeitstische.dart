import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_arbeitstische.freezed.dart';

@freezed
abstract class ModelArbeitstische with _$ModelArbeitstische {
  const ModelArbeitstische._();

  const factory ModelArbeitstische({
    required String categoryName,
    required List<ModelProduct> listProduct,
  }) = _ModelArbeitstische;
}

@freezed
class ModelProduct with _$ModelProduct {
  const ModelProduct._();

  const factory ModelProduct({
    required String productName,
    required double price,
    required int indexNumber,
    int? offerInPercent,
    int? productCount,
  }) = _ModelProduct;
}
