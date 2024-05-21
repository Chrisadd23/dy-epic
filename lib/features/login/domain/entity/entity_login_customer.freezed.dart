// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_login_customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EntityLoginCustomer _$EntityLoginCustomerFromJson(Map<String, dynamic> json) {
  return _EntityLoginCustomer.fromJson(json);
}

/// @nodoc
mixin _$EntityLoginCustomer {
  CustomerAddress get address => throw _privateConstructorUsedError;
  String get customerNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstname')
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastname')
  String? get customerSurname => throw _privateConstructorUsedError;
  int? get registrationDate => throw _privateConstructorUsedError;
  CustomerAddress? get deliveryAddress => throw _privateConstructorUsedError;
  List<UserNotification> get notifications =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityLoginCustomerCopyWith<EntityLoginCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityLoginCustomerCopyWith<$Res> {
  factory $EntityLoginCustomerCopyWith(
          EntityLoginCustomer value, $Res Function(EntityLoginCustomer) then) =
      _$EntityLoginCustomerCopyWithImpl<$Res, EntityLoginCustomer>;
  @useResult
  $Res call(
      {CustomerAddress address,
      String customerNumber,
      String? email,
      String? companyName,
      @JsonKey(name: 'firstname') String? customerName,
      @JsonKey(name: 'lastname') String? customerSurname,
      int? registrationDate,
      CustomerAddress? deliveryAddress,
      List<UserNotification> notifications});

  $CustomerAddressCopyWith<$Res> get address;
  $CustomerAddressCopyWith<$Res>? get deliveryAddress;
}

/// @nodoc
class _$EntityLoginCustomerCopyWithImpl<$Res, $Val extends EntityLoginCustomer>
    implements $EntityLoginCustomerCopyWith<$Res> {
  _$EntityLoginCustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? customerNumber = null,
    Object? email = freezed,
    Object? companyName = freezed,
    Object? customerName = freezed,
    Object? customerSurname = freezed,
    Object? registrationDate = freezed,
    Object? deliveryAddress = freezed,
    Object? notifications = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as CustomerAddress,
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerSurname: freezed == customerSurname
          ? _value.customerSurname
          : customerSurname // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationDate: freezed == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddress?,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<UserNotification>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerAddressCopyWith<$Res> get address {
    return $CustomerAddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerAddressCopyWith<$Res>? get deliveryAddress {
    if (_value.deliveryAddress == null) {
      return null;
    }

    return $CustomerAddressCopyWith<$Res>(_value.deliveryAddress!, (value) {
      return _then(_value.copyWith(deliveryAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EntityLoginCustomerImplCopyWith<$Res>
    implements $EntityLoginCustomerCopyWith<$Res> {
  factory _$$EntityLoginCustomerImplCopyWith(_$EntityLoginCustomerImpl value,
          $Res Function(_$EntityLoginCustomerImpl) then) =
      __$$EntityLoginCustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CustomerAddress address,
      String customerNumber,
      String? email,
      String? companyName,
      @JsonKey(name: 'firstname') String? customerName,
      @JsonKey(name: 'lastname') String? customerSurname,
      int? registrationDate,
      CustomerAddress? deliveryAddress,
      List<UserNotification> notifications});

  @override
  $CustomerAddressCopyWith<$Res> get address;
  @override
  $CustomerAddressCopyWith<$Res>? get deliveryAddress;
}

/// @nodoc
class __$$EntityLoginCustomerImplCopyWithImpl<$Res>
    extends _$EntityLoginCustomerCopyWithImpl<$Res, _$EntityLoginCustomerImpl>
    implements _$$EntityLoginCustomerImplCopyWith<$Res> {
  __$$EntityLoginCustomerImplCopyWithImpl(_$EntityLoginCustomerImpl _value,
      $Res Function(_$EntityLoginCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? customerNumber = null,
    Object? email = freezed,
    Object? companyName = freezed,
    Object? customerName = freezed,
    Object? customerSurname = freezed,
    Object? registrationDate = freezed,
    Object? deliveryAddress = freezed,
    Object? notifications = null,
  }) {
    return _then(_$EntityLoginCustomerImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as CustomerAddress,
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerSurname: freezed == customerSurname
          ? _value.customerSurname
          : customerSurname // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationDate: freezed == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddress?,
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<UserNotification>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$EntityLoginCustomerImpl extends _EntityLoginCustomer {
  const _$EntityLoginCustomerImpl(
      {required this.address,
      required this.customerNumber,
      this.email,
      this.companyName,
      @JsonKey(name: 'firstname') this.customerName,
      @JsonKey(name: 'lastname') this.customerSurname,
      this.registrationDate,
      this.deliveryAddress,
      final List<UserNotification> notifications = const []})
      : _notifications = notifications,
        super._();

  factory _$EntityLoginCustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntityLoginCustomerImplFromJson(json);

  @override
  final CustomerAddress address;
  @override
  final String customerNumber;
  @override
  final String? email;
  @override
  final String? companyName;
  @override
  @JsonKey(name: 'firstname')
  final String? customerName;
  @override
  @JsonKey(name: 'lastname')
  final String? customerSurname;
  @override
  final int? registrationDate;
  @override
  final CustomerAddress? deliveryAddress;
  final List<UserNotification> _notifications;
  @override
  @JsonKey()
  List<UserNotification> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'EntityLoginCustomer(address: $address, customerNumber: $customerNumber, email: $email, companyName: $companyName, customerName: $customerName, customerSurname: $customerSurname, registrationDate: $registrationDate, deliveryAddress: $deliveryAddress, notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityLoginCustomerImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerSurname, customerSurname) ||
                other.customerSurname == customerSurname) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      customerNumber,
      email,
      companyName,
      customerName,
      customerSurname,
      registrationDate,
      deliveryAddress,
      const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityLoginCustomerImplCopyWith<_$EntityLoginCustomerImpl> get copyWith =>
      __$$EntityLoginCustomerImplCopyWithImpl<_$EntityLoginCustomerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntityLoginCustomerImplToJson(
      this,
    );
  }
}

abstract class _EntityLoginCustomer extends EntityLoginCustomer {
  const factory _EntityLoginCustomer(
      {required final CustomerAddress address,
      required final String customerNumber,
      final String? email,
      final String? companyName,
      @JsonKey(name: 'firstname') final String? customerName,
      @JsonKey(name: 'lastname') final String? customerSurname,
      final int? registrationDate,
      final CustomerAddress? deliveryAddress,
      final List<UserNotification> notifications}) = _$EntityLoginCustomerImpl;
  const _EntityLoginCustomer._() : super._();

  factory _EntityLoginCustomer.fromJson(Map<String, dynamic> json) =
      _$EntityLoginCustomerImpl.fromJson;

  @override
  CustomerAddress get address;
  @override
  String get customerNumber;
  @override
  String? get email;
  @override
  String? get companyName;
  @override
  @JsonKey(name: 'firstname')
  String? get customerName;
  @override
  @JsonKey(name: 'lastname')
  String? get customerSurname;
  @override
  int? get registrationDate;
  @override
  CustomerAddress? get deliveryAddress;
  @override
  List<UserNotification> get notifications;
  @override
  @JsonKey(ignore: true)
  _$$EntityLoginCustomerImplCopyWith<_$EntityLoginCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerAddress _$CustomerAddressFromJson(Map<String, dynamic> json) {
  return _CustomerAddress.fromJson(json);
}

/// @nodoc
mixin _$CustomerAddress {
  String get street => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerAddressCopyWith<CustomerAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAddressCopyWith<$Res> {
  factory $CustomerAddressCopyWith(
          CustomerAddress value, $Res Function(CustomerAddress) then) =
      _$CustomerAddressCopyWithImpl<$Res, CustomerAddress>;
  @useResult
  $Res call({String street, String city, String zipCode});
}

/// @nodoc
class _$CustomerAddressCopyWithImpl<$Res, $Val extends CustomerAddress>
    implements $CustomerAddressCopyWith<$Res> {
  _$CustomerAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? zipCode = null,
  }) {
    return _then(_value.copyWith(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerAddressImplCopyWith<$Res>
    implements $CustomerAddressCopyWith<$Res> {
  factory _$$CustomerAddressImplCopyWith(_$CustomerAddressImpl value,
          $Res Function(_$CustomerAddressImpl) then) =
      __$$CustomerAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String street, String city, String zipCode});
}

/// @nodoc
class __$$CustomerAddressImplCopyWithImpl<$Res>
    extends _$CustomerAddressCopyWithImpl<$Res, _$CustomerAddressImpl>
    implements _$$CustomerAddressImplCopyWith<$Res> {
  __$$CustomerAddressImplCopyWithImpl(
      _$CustomerAddressImpl _value, $Res Function(_$CustomerAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? zipCode = null,
  }) {
    return _then(_$CustomerAddressImpl(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CustomerAddressImpl implements _CustomerAddress {
  const _$CustomerAddressImpl(
      {required this.street, required this.city, required this.zipCode});

  factory _$CustomerAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerAddressImplFromJson(json);

  @override
  final String street;
  @override
  final String city;
  @override
  final String zipCode;

  @override
  String toString() {
    return 'CustomerAddress(street: $street, city: $city, zipCode: $zipCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerAddressImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, street, city, zipCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerAddressImplCopyWith<_$CustomerAddressImpl> get copyWith =>
      __$$CustomerAddressImplCopyWithImpl<_$CustomerAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerAddressImplToJson(
      this,
    );
  }
}

abstract class _CustomerAddress implements CustomerAddress {
  const factory _CustomerAddress(
      {required final String street,
      required final String city,
      required final String zipCode}) = _$CustomerAddressImpl;

  factory _CustomerAddress.fromJson(Map<String, dynamic> json) =
      _$CustomerAddressImpl.fromJson;

  @override
  String get street;
  @override
  String get city;
  @override
  String get zipCode;
  @override
  @JsonKey(ignore: true)
  _$$CustomerAddressImplCopyWith<_$CustomerAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserNotification _$UserNotificationFromJson(Map<String, dynamic> json) {
  return _UserNotification.fromJson(json);
}

/// @nodoc
mixin _$UserNotification {
  int get statusType => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNotificationCopyWith<UserNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNotificationCopyWith<$Res> {
  factory $UserNotificationCopyWith(
          UserNotification value, $Res Function(UserNotification) then) =
      _$UserNotificationCopyWithImpl<$Res, UserNotification>;
  @useResult
  $Res call({int statusType, bool active});
}

/// @nodoc
class _$UserNotificationCopyWithImpl<$Res, $Val extends UserNotification>
    implements $UserNotificationCopyWith<$Res> {
  _$UserNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusType = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      statusType: null == statusType
          ? _value.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserNotificationImplCopyWith<$Res>
    implements $UserNotificationCopyWith<$Res> {
  factory _$$UserNotificationImplCopyWith(_$UserNotificationImpl value,
          $Res Function(_$UserNotificationImpl) then) =
      __$$UserNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusType, bool active});
}

/// @nodoc
class __$$UserNotificationImplCopyWithImpl<$Res>
    extends _$UserNotificationCopyWithImpl<$Res, _$UserNotificationImpl>
    implements _$$UserNotificationImplCopyWith<$Res> {
  __$$UserNotificationImplCopyWithImpl(_$UserNotificationImpl _value,
      $Res Function(_$UserNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusType = null,
    Object? active = null,
  }) {
    return _then(_$UserNotificationImpl(
      statusType: null == statusType
          ? _value.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserNotificationImpl extends _UserNotification {
  const _$UserNotificationImpl({required this.statusType, required this.active})
      : super._();

  factory _$UserNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserNotificationImplFromJson(json);

  @override
  final int statusType;
  @override
  final bool active;

  @override
  String toString() {
    return 'UserNotification(statusType: $statusType, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotificationImpl &&
            (identical(other.statusType, statusType) ||
                other.statusType == statusType) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusType, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNotificationImplCopyWith<_$UserNotificationImpl> get copyWith =>
      __$$UserNotificationImplCopyWithImpl<_$UserNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserNotificationImplToJson(
      this,
    );
  }
}

abstract class _UserNotification extends UserNotification {
  const factory _UserNotification(
      {required final int statusType,
      required final bool active}) = _$UserNotificationImpl;
  const _UserNotification._() : super._();

  factory _UserNotification.fromJson(Map<String, dynamic> json) =
      _$UserNotificationImpl.fromJson;

  @override
  int get statusType;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$UserNotificationImplCopyWith<_$UserNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
