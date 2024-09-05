// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_shopping_basket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StateShoppingBasket {
  List<ShoppingBasketProduct> get orderChosenProductList =>
      throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateShoppingBasketCopyWith<StateShoppingBasket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateShoppingBasketCopyWith<$Res> {
  factory $StateShoppingBasketCopyWith(
          StateShoppingBasket value, $Res Function(StateShoppingBasket) then) =
      _$StateShoppingBasketCopyWithImpl<$Res, StateShoppingBasket>;
  @useResult
  $Res call(
      {List<ShoppingBasketProduct> orderChosenProductList, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$StateShoppingBasketCopyWithImpl<$Res, $Val extends StateShoppingBasket>
    implements $StateShoppingBasketCopyWith<$Res> {
  _$StateShoppingBasketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderChosenProductList = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      orderChosenProductList: null == orderChosenProductList
          ? _value.orderChosenProductList
          : orderChosenProductList // ignore: cast_nullable_to_non_nullable
              as List<ShoppingBasketProduct>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateShoppingBasketImplCopyWith<$Res>
    implements $StateShoppingBasketCopyWith<$Res> {
  factory _$$StateShoppingBasketImplCopyWith(_$StateShoppingBasketImpl value,
          $Res Function(_$StateShoppingBasketImpl) then) =
      __$$StateShoppingBasketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ShoppingBasketProduct> orderChosenProductList, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$StateShoppingBasketImplCopyWithImpl<$Res>
    extends _$StateShoppingBasketCopyWithImpl<$Res, _$StateShoppingBasketImpl>
    implements _$$StateShoppingBasketImplCopyWith<$Res> {
  __$$StateShoppingBasketImplCopyWithImpl(_$StateShoppingBasketImpl _value,
      $Res Function(_$StateShoppingBasketImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderChosenProductList = null,
    Object? failure = freezed,
  }) {
    return _then(_$StateShoppingBasketImpl(
      orderChosenProductList: null == orderChosenProductList
          ? _value._orderChosenProductList
          : orderChosenProductList // ignore: cast_nullable_to_non_nullable
              as List<ShoppingBasketProduct>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$StateShoppingBasketImpl extends _StateShoppingBasket {
  const _$StateShoppingBasketImpl(
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

  @override
  String toString() {
    return 'StateShoppingBasket(orderChosenProductList: $orderChosenProductList, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateShoppingBasketImpl &&
            const DeepCollectionEquality().equals(
                other._orderChosenProductList, _orderChosenProductList) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_orderChosenProductList), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateShoppingBasketImplCopyWith<_$StateShoppingBasketImpl> get copyWith =>
      __$$StateShoppingBasketImplCopyWithImpl<_$StateShoppingBasketImpl>(
          this, _$identity);
}

abstract class _StateShoppingBasket extends StateShoppingBasket {
  const factory _StateShoppingBasket(
      {required final List<ShoppingBasketProduct> orderChosenProductList,
      final Failure? failure}) = _$StateShoppingBasketImpl;
  const _StateShoppingBasket._() : super._();

  @override
  List<ShoppingBasketProduct> get orderChosenProductList;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$StateShoppingBasketImplCopyWith<_$StateShoppingBasketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
