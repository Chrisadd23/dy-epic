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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntityLoginCustomer {
  CustomerAddress get address => throw _privateConstructorUsedError;
  String get customerNumber => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String? get customerSurname => throw _privateConstructorUsedError;
  DateTime? get registrationDate => throw _privateConstructorUsedError;
  CustomerAddress? get deliveryAddress => throw _privateConstructorUsedError;

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
      String? companyName,
      String? customerName,
      String? customerSurname,
      DateTime? registrationDate,
      CustomerAddress? deliveryAddress});

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
    Object? companyName = freezed,
    Object? customerName = freezed,
    Object? customerSurname = freezed,
    Object? registrationDate = freezed,
    Object? deliveryAddress = freezed,
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
              as DateTime?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddress?,
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
      String? companyName,
      String? customerName,
      String? customerSurname,
      DateTime? registrationDate,
      CustomerAddress? deliveryAddress});

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
    Object? companyName = freezed,
    Object? customerName = freezed,
    Object? customerSurname = freezed,
    Object? registrationDate = freezed,
    Object? deliveryAddress = freezed,
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
              as DateTime?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddress?,
    ));
  }
}

/// @nodoc

class _$EntityLoginCustomerImpl implements _EntityLoginCustomer {
  const _$EntityLoginCustomerImpl(
      {required this.address,
      required this.customerNumber,
      this.companyName,
      this.customerName,
      this.customerSurname,
      this.registrationDate,
      this.deliveryAddress});

  @override
  final CustomerAddress address;
  @override
  final String customerNumber;
  @override
  final String? companyName;
  @override
  final String? customerName;
  @override
  final String? customerSurname;
  @override
  final DateTime? registrationDate;
  @override
  final CustomerAddress? deliveryAddress;

  @override
  String toString() {
    return 'EntityLoginCustomer(address: $address, customerNumber: $customerNumber, companyName: $companyName, customerName: $customerName, customerSurname: $customerSurname, registrationDate: $registrationDate, deliveryAddress: $deliveryAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityLoginCustomerImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerSurname, customerSurname) ||
                other.customerSurname == customerSurname) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      customerNumber,
      companyName,
      customerName,
      customerSurname,
      registrationDate,
      deliveryAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityLoginCustomerImplCopyWith<_$EntityLoginCustomerImpl> get copyWith =>
      __$$EntityLoginCustomerImplCopyWithImpl<_$EntityLoginCustomerImpl>(
          this, _$identity);
}

abstract class _EntityLoginCustomer implements EntityLoginCustomer {
  const factory _EntityLoginCustomer(
      {required final CustomerAddress address,
      required final String customerNumber,
      final String? companyName,
      final String? customerName,
      final String? customerSurname,
      final DateTime? registrationDate,
      final CustomerAddress? deliveryAddress}) = _$EntityLoginCustomerImpl;

  @override
  CustomerAddress get address;
  @override
  String get customerNumber;
  @override
  String? get companyName;
  @override
  String? get customerName;
  @override
  String? get customerSurname;
  @override
  DateTime? get registrationDate;
  @override
  CustomerAddress? get deliveryAddress;
  @override
  @JsonKey(ignore: true)
  _$$EntityLoginCustomerImplCopyWith<_$EntityLoginCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerAddress {
  String get street => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;

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

class _$CustomerAddressImpl implements _CustomerAddress {
  const _$CustomerAddressImpl(
      {required this.street, required this.city, required this.zipCode});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerAddressImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, street, city, zipCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerAddressImplCopyWith<_$CustomerAddressImpl> get copyWith =>
      __$$CustomerAddressImplCopyWithImpl<_$CustomerAddressImpl>(
          this, _$identity);
}

abstract class _CustomerAddress implements CustomerAddress {
  const factory _CustomerAddress(
      {required final String street,
      required final String city,
      required final String zipCode}) = _$CustomerAddressImpl;

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
