// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryEntityImpl _$$CategoryEntityImplFromJson(Map<String, dynamic> json) =>
    _$CategoryEntityImpl(
      productNumber: json['productNumber'] as String,
      productTitle: json['productTitle'] as String,
      type: json['type'] as String,
      normalPrice: (json['normalPrice'] as num?)?.toDouble(),
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

Map<String, dynamic> _$$CategoryEntityImplToJson(
        _$CategoryEntityImpl instance) =>
    <String, dynamic>{
      'productNumber': instance.productNumber,
      'productTitle': instance.productTitle,
      'type': instance.type,
      'normalPrice': instance.normalPrice,
      'attributes': instance.attributes,
      'pricePerSize': instance.pricePerSize?.map((e) => e.toJson()).toList(),
      'frameColors': instance.frameColors?.map((e) => e.toJson()).toList(),
    };
