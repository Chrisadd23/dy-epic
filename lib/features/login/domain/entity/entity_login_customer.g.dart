// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_login_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EntityLoginCustomer _$EntityLoginCustomerFromJson(Map<String, dynamic> json) =>
    _EntityLoginCustomer(
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

Map<String, dynamic> _$EntityLoginCustomerToJson(
        _EntityLoginCustomer instance) =>
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

_CustomerAddress _$CustomerAddressFromJson(Map<String, dynamic> json) =>
    _CustomerAddress(
      street: json['street'] as String,
      city: json['city'] as String,
      zipCode: json['zipCode'] as String,
    );

Map<String, dynamic> _$CustomerAddressToJson(_CustomerAddress instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'zipCode': instance.zipCode,
    };

_UserNotification _$UserNotificationFromJson(Map<String, dynamic> json) =>
    _UserNotification(
      statusType: (json['statusType'] as num).toInt(),
      active: json['active'] as bool,
    );

Map<String, dynamic> _$UserNotificationToJson(_UserNotification instance) =>
    <String, dynamic>{
      'statusType': instance.statusType,
      'active': instance.active,
    };
