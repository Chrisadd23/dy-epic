// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_shopping_basket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StateShoppingBasket {
  List<ShoppingBasketProduct> get orderChosenProductList;
  Failure? get failure;

  /// Create a copy of StateShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StateShoppingBasketCopyWith<StateShoppingBasket> get copyWith =>
      _$StateShoppingBasketCopyWithImpl<StateShoppingBasket>(
          this as StateShoppingBasket, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StateShoppingBasket &&
            const DeepCollectionEquality()
                .equals(other.orderChosenProductList, orderChosenProductList) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(orderChosenProductList), failure);

  @override
  String toString() {
    return 'StateShoppingBasket(orderChosenProductList: $orderChosenProductList, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $StateShoppingBasketCopyWith<$Res> {
  factory $StateShoppingBasketCopyWith(
          StateShoppingBasket value, $Res Function(StateShoppingBasket) _then) =
      _$StateShoppingBasketCopyWithImpl;
  @useResult
  $Res call(
      {List<ShoppingBasketProduct> orderChosenProductList, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$StateShoppingBasketCopyWithImpl<$Res>
    implements $StateShoppingBasketCopyWith<$Res> {
  _$StateShoppingBasketCopyWithImpl(this._self, this._then);

  final StateShoppingBasket _self;
  final $Res Function(StateShoppingBasket) _then;

  /// Create a copy of StateShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderChosenProductList = null,
    Object? failure = freezed,
  }) {
    return _then(_self.copyWith(
      orderChosenProductList: null == orderChosenProductList
          ? _self.orderChosenProductList
          : orderChosenProductList // ignore: cast_nullable_to_non_nullable
              as List<ShoppingBasketProduct>,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  /// Create a copy of StateShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_self.failure!, (value) {
      return _then(_self.copyWith(failure: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StateShoppingBasket].
extension StateShoppingBasketPatterns on StateShoppingBasket {
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
    TResult Function(_StateShoppingBasket value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StateShoppingBasket() when $default != null:
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
    TResult Function(_StateShoppingBasket value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StateShoppingBasket():
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
    TResult? Function(_StateShoppingBasket value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StateShoppingBasket() when $default != null:
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
    TResult Function(List<ShoppingBasketProduct> orderChosenProductList,
            Failure? failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StateShoppingBasket() when $default != null:
        return $default(_that.orderChosenProductList, _that.failure);
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
    TResult Function(List<ShoppingBasketProduct> orderChosenProductList,
            Failure? failure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StateShoppingBasket():
        return $default(_that.orderChosenProductList, _that.failure);
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
    TResult? Function(List<ShoppingBasketProduct> orderChosenProductList,
            Failure? failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StateShoppingBasket() when $default != null:
        return $default(_that.orderChosenProductList, _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StateShoppingBasket extends StateShoppingBasket {
  const _StateShoppingBasket(
      {required final List<ShoppingBasketProduct> orderChosenProductList,
      this.failure})
      : _orderChosenProductList = orderChosenProductList,
        super._();

  final List<ShoppingBasketProduct> _orderChosenProductList;
  @override
  List<ShoppingBasketProduct> get orderChosenProductList {
    if (_orderChosenProductList is EqualUnmodifiableListView)
      return _orderChosenProductList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderChosenProductList);
  }

  @override
  final Failure? failure;

  /// Create a copy of StateShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StateShoppingBasketCopyWith<_StateShoppingBasket> get copyWith =>
      __$StateShoppingBasketCopyWithImpl<_StateShoppingBasket>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StateShoppingBasket &&
            const DeepCollectionEquality().equals(
                other._orderChosenProductList, _orderChosenProductList) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_orderChosenProductList), failure);

  @override
  String toString() {
    return 'StateShoppingBasket(orderChosenProductList: $orderChosenProductList, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$StateShoppingBasketCopyWith<$Res>
    implements $StateShoppingBasketCopyWith<$Res> {
  factory _$StateShoppingBasketCopyWith(_StateShoppingBasket value,
          $Res Function(_StateShoppingBasket) _then) =
      __$StateShoppingBasketCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<ShoppingBasketProduct> orderChosenProductList, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$StateShoppingBasketCopyWithImpl<$Res>
    implements _$StateShoppingBasketCopyWith<$Res> {
  __$StateShoppingBasketCopyWithImpl(this._self, this._then);

  final _StateShoppingBasket _self;
  final $Res Function(_StateShoppingBasket) _then;

  /// Create a copy of StateShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderChosenProductList = null,
    Object? failure = freezed,
  }) {
    return _then(_StateShoppingBasket(
      orderChosenProductList: null == orderChosenProductList
          ? _self._orderChosenProductList
          : orderChosenProductList // ignore: cast_nullable_to_non_nullable
              as List<ShoppingBasketProduct>,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  /// Create a copy of StateShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_self.failure!, (value) {
      return _then(_self.copyWith(failure: value));
    });
  }
}

// dart format on
