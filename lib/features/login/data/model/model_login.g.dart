// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelLoginImpl _$$ModelLoginImplFromJson(Map<String, dynamic> json) =>
    _$ModelLoginImpl(
      address:
          CustomerAddress.fromJson(json['address'] as Map<String, dynamic>),
      customerNumber: json['customerNumber'] as String,
      userTypeIndex: (json['userTypeIndex'] as num).toInt(),
      email: json['email'] as String?,
      companyName: json['companyName'] as String?,
      customerName: json['firstname'] as String?,
      customerSurname: json['lastname'] as String?,
      registrationDate: (json['registrationDate'] as num?)?.toInt(),
      deliveryAddress: json['deliveryAddress'] == null
          ? null
          : CustomerAddress.fromJson(
              json['deliveryAddress'] as Map<String, dynamic>),
      notifications: (json['notifications'] as List<dynamic>?)
              ?.map((e) => UserNotification.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      fToken: json['fToken'] as String?,
    );

Map<String, dynamic> _$$ModelLoginImplToJson(_$ModelLoginImpl instance) =>
    <String, dynamic>{
      'address': instance.address.toJson(),
      'customerNumber': instance.customerNumber,
      'userTypeIndex': instance.userTypeIndex,
      'email': instance.email,
      'companyName': instance.companyName,
      'firstname': instance.customerName,
      'lastname': instance.customerSurname,
      'registrationDate': instance.registrationDate,
      'deliveryAddress': instance.deliveryAddress?.toJson(),
      'notifications': instance.notifications.map((e) => e.toJson()).toList(),
      'fToken': instance.fToken,
    };
