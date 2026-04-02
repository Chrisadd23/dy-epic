import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_basket_entity.freezed.dart';
part 'shopping_basket_entity.g.dart';

@freezed
abstract class ShoppingBasketEntity with _$ShoppingBasketEntity {
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
abstract class ShoppingBasketProduct with _$ShoppingBasketProduct {
  //ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory ShoppingBasketProduct({
    required CategoryEntity categoryEntity,
    required int addedTime,
    required int productCount,
    required double completeAmount,
  }) = _ShoppingBasketProduct;

  factory ShoppingBasketProduct.fromJson(Map<String, dynamic> json) =>
      _$ShoppingBasketProductFromJson(json);
}
