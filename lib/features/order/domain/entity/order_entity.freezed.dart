// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEntity {
  String get id => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  List<Order> get listOrderEntity => throw _privateConstructorUsedError;
  int get sendDate => throw _privateConstructorUsedError;
  bool get hide => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res, OrderEntity>;
  @useResult
  $Res call(
      {String id,
      String customerId,
      int status,
      List<Order> listOrderEntity,
      int sendDate,
      bool hide});
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res, $Val extends OrderEntity>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? status = null,
    Object? listOrderEntity = null,
    Object? sendDate = null,
    Object? hide = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      listOrderEntity: null == listOrderEntity
          ? _value.listOrderEntity
          : listOrderEntity // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      sendDate: null == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int,
      hide: null == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderEntityImplCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$OrderEntityImplCopyWith(
          _$OrderEntityImpl value, $Res Function(_$OrderEntityImpl) then) =
      __$$OrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String customerId,
      int status,
      List<Order> listOrderEntity,
      int sendDate,
      bool hide});
}

/// @nodoc
class __$$OrderEntityImplCopyWithImpl<$Res>
    extends _$OrderEntityCopyWithImpl<$Res, _$OrderEntityImpl>
    implements _$$OrderEntityImplCopyWith<$Res> {
  __$$OrderEntityImplCopyWithImpl(
      _$OrderEntityImpl _value, $Res Function(_$OrderEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? status = null,
    Object? listOrderEntity = null,
    Object? sendDate = null,
    Object? hide = null,
  }) {
    return _then(_$OrderEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      listOrderEntity: null == listOrderEntity
          ? _value._listOrderEntity
          : listOrderEntity // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      sendDate: null == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int,
      hide: null == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OrderEntityImpl extends _OrderEntity {
  const _$OrderEntityImpl(
      {required this.id,
      required this.customerId,
      required this.status,
      required final List<Order> listOrderEntity,
      required this.sendDate,
      this.hide = false})
      : _listOrderEntity = listOrderEntity,
        super._();

  @override
  final String id;
  @override
  final String customerId;
  @override
  final int status;
  final List<Order> _listOrderEntity;
  @override
  List<Order> get listOrderEntity {
    if (_listOrderEntity is EqualUnmodifiableListView) return _listOrderEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOrderEntity);
  }

  @override
  final int sendDate;
  @override
  @JsonKey()
  final bool hide;

  @override
  String toString() {
    return 'OrderEntity(id: $id, customerId: $customerId, status: $status, listOrderEntity: $listOrderEntity, sendDate: $sendDate, hide: $hide)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._listOrderEntity, _listOrderEntity) &&
            (identical(other.sendDate, sendDate) ||
                other.sendDate == sendDate) &&
            (identical(other.hide, hide) || other.hide == hide));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, customerId, status,
      const DeepCollectionEquality().hash(_listOrderEntity), sendDate, hide);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      __$$OrderEntityImplCopyWithImpl<_$OrderEntityImpl>(this, _$identity);
}

abstract class _OrderEntity extends OrderEntity {
  const factory _OrderEntity(
      {required final String id,
      required final String customerId,
      required final int status,
      required final List<Order> listOrderEntity,
      required final int sendDate,
      final bool hide}) = _$OrderEntityImpl;
  const _OrderEntity._() : super._();

  @override
  String get id;
  @override
  String get customerId;
  @override
  int get status;
  @override
  List<Order> get listOrderEntity;
  @override
  int get sendDate;
  @override
  bool get hide;
  @override
  @JsonKey(ignore: true)
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
