// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryProductModelImpl _$$CategoryProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryProductModelImpl(
      isVisible: json['isVisible'] as bool?,
      productNumber: json['productNumber'] as String?,
      productTitle: json['productTitle'] as String?,
      type: json['type'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      attributes: (json['attributes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoryProductModelImplToJson(
        _$CategoryProductModelImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'productNumber': instance.productNumber,
      'productTitle': instance.productTitle,
      'type': instance.type,
      'price': instance.price,
      'attributes': instance.attributes,
    };
