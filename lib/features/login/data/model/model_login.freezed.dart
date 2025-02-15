// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelLogin _$ModelLoginFromJson(Map<String, dynamic> json) {
  return _ModelLogin.fromJson(json);
}

/// @nodoc
mixin _$ModelLogin {
  CustomerAddress get address => throw _privateConstructorUsedError;
  String get customerNumber => throw _privateConstructorUsedError;
  int get userTypeIndex => throw _privateConstructorUsedError;
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
  String? get fToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelLoginCopyWith<ModelLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelLoginCopyWith<$Res> {
  factory $ModelLoginCopyWith(
          ModelLogin value, $Res Function(ModelLogin) then) =
      _$ModelLoginCopyWithImpl<$Res, ModelLogin>;
  @useResult
  $Res call(
      {CustomerAddress address,
      String customerNumber,
      int userTypeIndex,
      String? email,
      String? companyName,
      @JsonKey(name: 'firstname') String? customerName,
      @JsonKey(name: 'lastname') String? customerSurname,
      int? registrationDate,
      CustomerAddress? deliveryAddress,
      List<UserNotification> notifications,
      String? fToken});

  $CustomerAddressCopyWith<$Res> get address;
  $CustomerAddressCopyWith<$Res>? get deliveryAddress;
}

/// @nodoc
class _$ModelLoginCopyWithImpl<$Res, $Val extends ModelLogin>
    implements $ModelLoginCopyWith<$Res> {
  _$ModelLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? customerNumber = null,
    Object? userTypeIndex = null,
    Object? email = freezed,
    Object? companyName = freezed,
    Object? customerName = freezed,
    Object? customerSurname = freezed,
    Object? registrationDate = freezed,
    Object? deliveryAddress = freezed,
    Object? notifications = null,
    Object? fToken = freezed,
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
      userTypeIndex: null == userTypeIndex
          ? _value.userTypeIndex
          : userTypeIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
      fToken: freezed == fToken
          ? _value.fToken
          : fToken // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ModelLoginImplCopyWith<$Res>
    implements $ModelLoginCopyWith<$Res> {
  factory _$$ModelLoginImplCopyWith(
          _$ModelLoginImpl value, $Res Function(_$ModelLoginImpl) then) =
      __$$ModelLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CustomerAddress address,
      String customerNumber,
      int userTypeIndex,
      String? email,
      String? companyName,
      @JsonKey(name: 'firstname') String? customerName,
      @JsonKey(name: 'lastname') String? customerSurname,
      int? registrationDate,
      CustomerAddress? deliveryAddress,
      List<UserNotification> notifications,
      String? fToken});

  @override
  $CustomerAddressCopyWith<$Res> get address;
  @override
  $CustomerAddressCopyWith<$Res>? get deliveryAddress;
}

/// @nodoc
class __$$ModelLoginImplCopyWithImpl<$Res>
    extends _$ModelLoginCopyWithImpl<$Res, _$ModelLoginImpl>
    implements _$$ModelLoginImplCopyWith<$Res> {
  __$$ModelLoginImplCopyWithImpl(
      _$ModelLoginImpl _value, $Res Function(_$ModelLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? customerNumber = null,
    Object? userTypeIndex = null,
    Object? email = freezed,
    Object? companyName = freezed,
    Object? customerName = freezed,
    Object? customerSurname = freezed,
    Object? registrationDate = freezed,
    Object? deliveryAddress = freezed,
    Object? notifications = null,
    Object? fToken = freezed,
  }) {
    return _then(_$ModelLoginImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as CustomerAddress,
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userTypeIndex: null == userTypeIndex
          ? _value.userTypeIndex
          : userTypeIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
      fToken: freezed == fToken
          ? _value.fToken
          : fToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ModelLoginImpl extends _ModelLogin {
  const _$ModelLoginImpl(
      {required this.address,
      required this.customerNumber,
      required this.userTypeIndex,
      this.email,
      this.companyName,
      @JsonKey(name: 'firstname') this.customerName,
      @JsonKey(name: 'lastname') this.customerSurname,
      this.registrationDate,
      this.deliveryAddress,
      final List<UserNotification> notifications = const [],
      this.fToken})
      : _notifications = notifications,
        super._();

  factory _$ModelLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelLoginImplFromJson(json);

  @override
  final CustomerAddress address;
  @override
  final String customerNumber;
  @override
  final int userTypeIndex;
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
  final String? fToken;

  @override
  String toString() {
    return 'ModelLogin(address: $address, customerNumber: $customerNumber, userTypeIndex: $userTypeIndex, email: $email, companyName: $companyName, customerName: $customerName, customerSurname: $customerSurname, registrationDate: $registrationDate, deliveryAddress: $deliveryAddress, notifications: $notifications, fToken: $fToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelLoginImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.userTypeIndex, userTypeIndex) ||
                other.userTypeIndex == userTypeIndex) &&
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
                .equals(other._notifications, _notifications) &&
            (identical(other.fToken, fToken) || other.fToken == fToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      customerNumber,
      userTypeIndex,
      email,
      companyName,
      customerName,
      customerSurname,
      registrationDate,
      deliveryAddress,
      const DeepCollectionEquality().hash(_notifications),
      fToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelLoginImplCopyWith<_$ModelLoginImpl> get copyWith =>
      __$$ModelLoginImplCopyWithImpl<_$ModelLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelLoginImplToJson(
      this,
    );
  }
}

abstract class _ModelLogin extends ModelLogin {
  const factory _ModelLogin(
      {required final CustomerAddress address,
      required final String customerNumber,
      required final int userTypeIndex,
      final String? email,
      final String? companyName,
      @JsonKey(name: 'firstname') final String? customerName,
      @JsonKey(name: 'lastname') final String? customerSurname,
      final int? registrationDate,
      final CustomerAddress? deliveryAddress,
      final List<UserNotification> notifications,
      final String? fToken}) = _$ModelLoginImpl;
  const _ModelLogin._() : super._();

  factory _ModelLogin.fromJson(Map<String, dynamic> json) =
      _$ModelLoginImpl.fromJson;

  @override
  CustomerAddress get address;
  @override
  String get customerNumber;
  @override
  int get userTypeIndex;
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
  String? get fToken;
  @override
  @JsonKey(ignore: true)
  _$$ModelLoginImplCopyWith<_$ModelLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
