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
      categoryEntity: CategoryEntity.fromJson(
          json['categoryEntity'] as Map<String, dynamic>),
      entityCorePictures: json['entityCorePictures'] == null
          ? null
          : EntityCorePictures.fromJson(
              json['entityCorePictures'] as Map<String, dynamic>),
      addedTime: (json['addedTime'] as num).toInt(),
      productCount: (json['productCount'] as num).toInt(),
      completeAmount: json['completeAmount'] as String,
    );

Map<String, dynamic> _$$ShoppingBasketProductImplToJson(
        _$ShoppingBasketProductImpl instance) =>
    <String, dynamic>{
      'categoryEntity': instance.categoryEntity.toJson(),
      'entityCorePictures': instance.entityCorePictures?.toJson(),
      'addedTime': instance.addedTime,
      'productCount': instance.productCount,
      'completeAmount': instance.completeAmount,
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
