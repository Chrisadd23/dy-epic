// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: json['id'] as String?,
      customerId: json['userId'] as String?,
      status: (json['status'] as num?)?.toInt(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => OrderModelProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      sendDate: (json['sendDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.customerId,
      'status': instance.status,
      'products': instance.products?.map((e) => e.toJson()).toList(),
      'sendDate': instance.sendDate,
    };

_$OrderModelProductImpl _$$OrderModelProductImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderModelProductImpl(
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

Map<String, dynamic> _$$OrderModelProductImplToJson(
        _$OrderModelProductImpl instance) =>
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
