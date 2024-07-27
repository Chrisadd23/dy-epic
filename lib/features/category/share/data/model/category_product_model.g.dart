// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryProductModelImpl _$$CategoryProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryProductModelImpl(
      productNumber: json['productNumber'] as String?,
      productTitle: json['productTitle'] as String?,
      type: json['type'] as String?,
      normalPrice: (json['price'] as num?)?.toDouble(),
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      pricePerSize: (json['pricePerSize'] as List<dynamic>?)
          ?.map((e) => PricePerSize.fromJson(e as Map<String, dynamic>))
          .toList(),
      frameColors: (json['frameColors'] as List<dynamic>?)
          ?.map((e) => FrameColor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryProductModelImplToJson(
        _$CategoryProductModelImpl instance) =>
    <String, dynamic>{
      'productNumber': instance.productNumber,
      'productTitle': instance.productTitle,
      'type': instance.type,
      'price': instance.normalPrice,
      'attributes': instance.attributes,
      'pricePerSize': instance.pricePerSize,
      'frameColors': instance.frameColors,
    };

_$PricePerSizeImpl _$$PricePerSizeImplFromJson(Map<String, dynamic> json) =>
    _$PricePerSizeImpl(
      height: json['height'] as String,
      width: json['width'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$PricePerSizeImplToJson(_$PricePerSizeImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'price': instance.price,
    };

_$FrameColorImpl _$$FrameColorImplFromJson(Map<String, dynamic> json) =>
    _$FrameColorImpl(
      color: json['color'] as String,
      hexValue: json['hexValue'] as String,
    );

Map<String, dynamic> _$$FrameColorImplToJson(_$FrameColorImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'hexValue': instance.hexValue,
    };
