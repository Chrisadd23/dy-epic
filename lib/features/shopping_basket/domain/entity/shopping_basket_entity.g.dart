// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_basket_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShoppingBasketEntity _$ShoppingBasketEntityFromJson(
        Map<String, dynamic> json) =>
    _ShoppingBasketEntity(
      id: json['id'] as String,
      userId: json['userId'] as String,
      status: (json['status'] as num).toInt(),
      products: (json['products'] as List<dynamic>)
          .map((e) => ShoppingBasketProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      sendDate: (json['sendDate'] as num).toInt(),
    );

Map<String, dynamic> _$ShoppingBasketEntityToJson(
        _ShoppingBasketEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'status': instance.status,
      'products': instance.products.map((e) => e.toJson()).toList(),
      'sendDate': instance.sendDate,
    };

_ShoppingBasketProduct _$ShoppingBasketProductFromJson(
        Map<String, dynamic> json) =>
    _ShoppingBasketProduct(
      categoryEntity: CategoryEntity.fromJson(
          json['categoryEntity'] as Map<String, dynamic>),
      addedTime: (json['addedTime'] as num).toInt(),
      productCount: (json['productCount'] as num).toInt(),
      completeAmount: (json['completeAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$ShoppingBasketProductToJson(
        _ShoppingBasketProduct instance) =>
    <String, dynamic>{
      'categoryEntity': instance.categoryEntity.toJson(),
      'addedTime': instance.addedTime,
      'productCount': instance.productCount,
      'completeAmount': instance.completeAmount,
    };
