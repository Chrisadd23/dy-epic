// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderEntity {
  String get id;
  String get customerId;
  int get status;
  List<Order> get listOrderEntity;
  int get sendDate;
  bool get hide;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      _$OrderEntityCopyWithImpl<OrderEntity>(this as OrderEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.listOrderEntity, listOrderEntity) &&
            (identical(other.sendDate, sendDate) ||
                other.sendDate == sendDate) &&
            (identical(other.hide, hide) || other.hide == hide));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, customerId, status,
      const DeepCollectionEquality().hash(listOrderEntity), sendDate, hide);

  @override
  String toString() {
    return 'OrderEntity(id: $id, customerId: $customerId, status: $status, listOrderEntity: $listOrderEntity, sendDate: $sendDate, hide: $hide)';
  }
}

/// @nodoc
abstract mixin class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) _then) =
      _$OrderEntityCopyWithImpl;
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
class _$OrderEntityCopyWithImpl<$Res> implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._self, this._then);

  final OrderEntity _self;
  final $Res Function(OrderEntity) _then;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      listOrderEntity: null == listOrderEntity
          ? _self.listOrderEntity
          : listOrderEntity // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      sendDate: null == sendDate
          ? _self.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int,
      hide: null == hide
          ? _self.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderEntity].
extension OrderEntityPatterns on OrderEntity {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrderEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderEntity() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OrderEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderEntity():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrderEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderEntity() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String customerId, int status,
            List<Order> listOrderEntity, int sendDate, bool hide)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderEntity() when $default != null:
        return $default(_that.id, _that.customerId, _that.status,
            _that.listOrderEntity, _that.sendDate, _that.hide);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String customerId, int status,
            List<Order> listOrderEntity, int sendDate, bool hide)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderEntity():
        return $default(_that.id, _that.customerId, _that.status,
            _that.listOrderEntity, _that.sendDate, _that.hide);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String customerId, int status,
            List<Order> listOrderEntity, int sendDate, bool hide)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderEntity() when $default != null:
        return $default(_that.id, _that.customerId, _that.status,
            _that.listOrderEntity, _that.sendDate, _that.hide);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _OrderEntity extends OrderEntity {
  const _OrderEntity(
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

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderEntityCopyWith<_OrderEntity> get copyWith =>
      __$OrderEntityCopyWithImpl<_OrderEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderEntity &&
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

  @override
  String toString() {
    return 'OrderEntity(id: $id, customerId: $customerId, status: $status, listOrderEntity: $listOrderEntity, sendDate: $sendDate, hide: $hide)';
  }
}

/// @nodoc
abstract mixin class _$OrderEntityCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$OrderEntityCopyWith(
          _OrderEntity value, $Res Function(_OrderEntity) _then) =
      __$OrderEntityCopyWithImpl;
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
class __$OrderEntityCopyWithImpl<$Res> implements _$OrderEntityCopyWith<$Res> {
  __$OrderEntityCopyWithImpl(this._self, this._then);

  final _OrderEntity _self;
  final $Res Function(_OrderEntity) _then;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? status = null,
    Object? listOrderEntity = null,
    Object? sendDate = null,
    Object? hide = null,
  }) {
    return _then(_OrderEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      listOrderEntity: null == listOrderEntity
          ? _self._listOrderEntity
          : listOrderEntity // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      sendDate: null == sendDate
          ? _self.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int,
      hide: null == hide
          ? _self.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
