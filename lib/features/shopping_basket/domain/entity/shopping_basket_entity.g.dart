// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_basket_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShoppingBasketEntityImpl _$$ShoppingBasketEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ShoppingBasketEntityImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      status: (json['status'] as num).toInt(),
      products: (json['products'] as List<dynamic>)
          .map((e) => ShoppingBasketProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      sendDate: (json['sendDate'] as num).toInt(),
    );

Map<String, dynamic> _$$ShoppingBasketEntityImplToJson(
        _$ShoppingBasketEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'status': instance.status,
      'products': instance.products.map((e) => e.toJson()).toList(),
      'sendDate': instance.sendDate,
    };

_$ShoppingBasketProductImpl _$$ShoppingBasketProductImplFromJson(
        Map<String, dynamic> json) =>
    _$ShoppingBasketProductImpl(
      productNumber: json['productNumber'] as String,
      productName: json['productName'] as String,
      productType: (json['productType'] as num).toInt(),
      productCount: (json['productCount'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      addedTime: (json['addedTime'] as num).toInt(),
      color: json['color'] as String?,
      widthAndHeight: json['widthAndHeight'] == null
          ? null
          : Size.fromJson(json['widthAndHeight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShoppingBasketProductImplToJson(
        _$ShoppingBasketProductImpl instance) =>
    <String, dynamic>{
      'productNumber': instance.productNumber,
      'productName': instance.productName,
      'productType': instance.productType,
      'productCount': instance.productCount,
      'price': instance.price,
      'addedTime': instance.addedTime,
      'color': instance.color,
      'widthAndHeight': instance.widthAndHeight?.toJson(),
    };

_$SizeImpl _$$SizeImplFromJson(Map<String, dynamic> json) => _$SizeImpl(
      width: json['width'] as String,
      height: json['height'] as String,
    );

Map<String, dynamic> _$$SizeImplToJson(_$SizeImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
    };
