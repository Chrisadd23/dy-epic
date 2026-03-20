// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_contacts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EntityContact {
  String get customerNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String? get customerSurname => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityContactCopyWith<EntityContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityContactCopyWith<$Res> {
  factory $EntityContactCopyWith(
          EntityContact value, $Res Function(EntityContact) then) =
      _$EntityContactCopyWithImpl<$Res, EntityContact>;
  @useResult
  $Res call(
      {String customerNumber,
      String email,
      String? companyName,
      String? customerName,
      String? customerSurname});
}

/// @nodoc
class _$EntityContactCopyWithImpl<$Res, $Val extends EntityContact>
    implements $EntityContactCopyWith<$Res> {
  _$EntityContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerNumber = null,
    Object? email = null,
    Object? companyName = freezed,
    Object? customerName = freezed,
    Object? customerSurname = freezed,
  }) {
    return _then(_value.copyWith(
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityContactImplCopyWith<$Res>
    implements $EntityContactCopyWith<$Res> {
  factory _$$EntityContactImplCopyWith(
          _$EntityContactImpl value, $Res Function(_$EntityContactImpl) then) =
      __$$EntityContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerNumber,
      String email,
      String? companyName,
      String? customerName,
      String? customerSurname});
}

/// @nodoc
class __$$EntityContactImplCopyWithImpl<$Res>
    extends _$EntityContactCopyWithImpl<$Res, _$EntityContactImpl>
    implements _$$EntityContactImplCopyWith<$Res> {
  __$$EntityContactImplCopyWithImpl(
      _$EntityContactImpl _value, $Res Function(_$EntityContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerNumber = null,
    Object? email = null,
    Object? companyName = freezed,
    Object? customerName = freezed,
    Object? customerSurname = freezed,
  }) {
    return _then(_$EntityContactImpl(
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

class _$EntityContactImpl implements _EntityContact {
  const _$EntityContactImpl(
      {required this.customerNumber,
      required this.email,
      this.companyName,
      this.customerName,
      this.customerSurname});

  @override
  final String customerNumber;
  @override
  final String email;
  @override
  final String? companyName;
  @override
  final String? customerName;
  @override
  final String? customerSurname;

  @override
  String toString() {
    return 'EntityContact(customerNumber: $customerNumber, email: $email, companyName: $companyName, customerName: $customerName, customerSurname: $customerSurname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityContactImpl &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerSurname, customerSurname) ||
                other.customerSurname == customerSurname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerNumber, email,
      companyName, customerName, customerSurname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityContactImplCopyWith<_$EntityContactImpl> get copyWith =>
      __$$EntityContactImplCopyWithImpl<_$EntityContactImpl>(this, _$identity);
}

abstract class _EntityContact implements EntityContact {
  const factory _EntityContact(
      {required final String customerNumber,
      required final String email,
      final String? companyName,
      final String? customerName,
      final String? customerSurname}) = _$EntityContactImpl;

  @override
  String get customerNumber;
  @override
  String get email;
  @override
  String? get companyName;
  @override
  String? get customerName;
  @override
  String? get customerSurname;
  @override
  @JsonKey(ignore: true)
  _$$EntityContactImplCopyWith<_$EntityContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
