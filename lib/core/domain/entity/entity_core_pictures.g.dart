// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_core_pictures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntityCorePicturesImpl _$$EntityCorePicturesImplFromJson(
        Map<String, dynamic> json) =>
    _$EntityCorePicturesImpl(
      name: json['name'] as String,
      listIntForUint8List: (json['listIntForUint8List'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$EntityCorePicturesImplToJson(
        _$EntityCorePicturesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'listIntForUint8List': instance.listIntForUint8List,
    };
