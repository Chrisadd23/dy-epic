// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
      id: json['id'] as String?,
      customerId: json['userId'] as String?,
      status: (json['status'] as num?)?.toInt(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      sendDate: (json['sendDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.customerId,
      'status': instance.status,
      'products': instance.products?.map((e) => e.toJson()).toList(),
      'sendDate': instance.sendDate,
    };

_Order _$OrderFromJson(Map<String, dynamic> json) => _Order(
      categoryEntity: CategoryProductModel.fromJson(
          json['categoryEntity'] as Map<String, dynamic>),
      productCount: (json['productCount'] as num).toInt(),
      completeAmount: (json['completeAmount'] as num).toDouble(),
      addedTime: (json['addedTime'] as num).toInt(),
    );

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
      'categoryEntity': instance.categoryEntity.toJson(),
      'productCount': instance.productCount,
      'completeAmount': instance.completeAmount,
      'addedTime': instance.addedTime,
    };
