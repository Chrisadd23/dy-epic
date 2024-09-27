// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_login_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntityLoginCustomerImpl _$$EntityLoginCustomerImplFromJson(
        Map<String, dynamic> json) =>
    _$EntityLoginCustomerImpl(
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
    );

Map<String, dynamic> _$$EntityLoginCustomerImplToJson(
        _$EntityLoginCustomerImpl instance) =>
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
    };

_$CustomerAddressImpl _$$CustomerAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerAddressImpl(
      street: json['street'] as String,
      city: json['city'] as String,
      zipCode: json['zipCode'] as String,
    );

Map<String, dynamic> _$$CustomerAddressImplToJson(
        _$CustomerAddressImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'zipCode': instance.zipCode,
    };

_$UserNotificationImpl _$$UserNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$UserNotificationImpl(
      statusType: (json['statusType'] as num).toInt(),
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$UserNotificationImplToJson(
        _$UserNotificationImpl instance) =>
    <String, dynamic>{
      'statusType': instance.statusType,
      'active': instance.active,
    };
