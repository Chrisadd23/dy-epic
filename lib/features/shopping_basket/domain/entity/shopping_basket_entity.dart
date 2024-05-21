import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_basket_entity.freezed.dart';
part 'shopping_basket_entity.g.dart';

@freezed
class ShoppingBasketEntity with _$ShoppingBasketEntity {
  //ignore: invalid_annotation_target
  @JsonSerializable(
      explicitToJson: true) // Verschachtelte Objekte korrekt serialisieren
  const factory ShoppingBasketEntity({
    required String id,
    required String userId,
    required int status,
    required List<ShoppingBasketProduct> products,
    required int sendDate,
  }) = _ShoppingBasketEntity;

  factory ShoppingBasketEntity.fromJson(Map<String, dynamic> json) =>
      _$ShoppingBasketEntityFromJson(json);
}

@freezed
class ShoppingBasketProduct with _$ShoppingBasketProduct {
  //ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory ShoppingBasketProduct({
    required String productNumber,
    required String productName,
    required int productType,
    required int productCount,
    required double price,
    required int addedTime,
    String? color,
    Size? widthAndHeight,
  }) = _ShoppingBasketProduct;

  factory ShoppingBasketProduct.fromJson(Map<String, dynamic> json) =>
      _$ShoppingBasketProductFromJson(json);
}

@freezed
class Size with _$Size {
  //ignore: invalid_annotation_target
  @JsonSerializable()
  const factory Size({
    required String width, // Typ zu double geändert für Maße
    required String height,
  }) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
}
