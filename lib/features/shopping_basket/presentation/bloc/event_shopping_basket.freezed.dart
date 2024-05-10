// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_shopping_basket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventShoppingBasket {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)
        add,
    required TResult Function(int timePosition, String location) change,
    required TResult Function(int timePosition) remove,
    required TResult Function(EnumSortProductOrder orderList) orderList,
    required TResult Function(String customerNumber) send,
    required TResult Function() clear,
    required TResult Function() deleteFailureMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult? Function(int timePosition, String location)? change,
    TResult? Function(int timePosition)? remove,
    TResult? Function(EnumSortProductOrder orderList)? orderList,
    TResult? Function(String customerNumber)? send,
    TResult? Function()? clear,
    TResult? Function()? deleteFailureMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult Function(int timePosition, String location)? change,
    TResult Function(int timePosition)? remove,
    TResult Function(EnumSortProductOrder orderList)? orderList,
    TResult Function(String customerNumber)? send,
    TResult Function()? clear,
    TResult Function()? deleteFailureMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Remove value) remove,
    required TResult Function(_OrderList value) orderList,
    required TResult Function(_Send value) send,
    required TResult Function(_Clear value) clear,
    required TResult Function(_DeleteFailureMessage value) deleteFailureMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_OrderList value)? orderList,
    TResult? Function(_Send value)? send,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_DeleteFailureMessage value)? deleteFailureMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Remove value)? remove,
    TResult Function(_OrderList value)? orderList,
    TResult Function(_Send value)? send,
    TResult Function(_Clear value)? clear,
    TResult Function(_DeleteFailureMessage value)? deleteFailureMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventShoppingBasketCopyWith<$Res> {
  factory $EventShoppingBasketCopyWith(
          EventShoppingBasket value, $Res Function(EventShoppingBasket) then) =
      _$EventShoppingBasketCopyWithImpl<$Res, EventShoppingBasket>;
}

/// @nodoc
class _$EventShoppingBasketCopyWithImpl<$Res, $Val extends EventShoppingBasket>
    implements $EventShoppingBasketCopyWith<$Res> {
  _$EventShoppingBasketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ShoppingBasketProduct chosenProduct,
      int? index,
      EnumOrderType orderType});

  $ShoppingBasketProductCopyWith<$Res> get chosenProduct;
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$EventShoppingBasketCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chosenProduct = null,
    Object? index = freezed,
    Object? orderType = null,
  }) {
    return _then(_$AddImpl(
      chosenProduct: null == chosenProduct
          ? _value.chosenProduct
          : chosenProduct // ignore: cast_nullable_to_non_nullable
              as ShoppingBasketProduct,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as EnumOrderType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ShoppingBasketProductCopyWith<$Res> get chosenProduct {
    return $ShoppingBasketProductCopyWith<$Res>(_value.chosenProduct, (value) {
      return _then(_value.copyWith(chosenProduct: value));
    });
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl(
      {required this.chosenProduct, this.index, required this.orderType});

  @override
  final ShoppingBasketProduct chosenProduct;
  @override
  final int? index;
  @override
  final EnumOrderType orderType;

  @override
  String toString() {
    return 'EventShoppingBasket.add(chosenProduct: $chosenProduct, index: $index, orderType: $orderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.chosenProduct, chosenProduct) ||
                other.chosenProduct == chosenProduct) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chosenProduct, index, orderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)
        add,
    required TResult Function(int timePosition, String location) change,
    required TResult Function(int timePosition) remove,
    required TResult Function(EnumSortProductOrder orderList) orderList,
    required TResult Function(String customerNumber) send,
    required TResult Function() clear,
    required TResult Function() deleteFailureMessage,
  }) {
    return add(chosenProduct, index, orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult? Function(int timePosition, String location)? change,
    TResult? Function(int timePosition)? remove,
    TResult? Function(EnumSortProductOrder orderList)? orderList,
    TResult? Function(String customerNumber)? send,
    TResult? Function()? clear,
    TResult? Function()? deleteFailureMessage,
  }) {
    return add?.call(chosenProduct, index, orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult Function(int timePosition, String location)? change,
    TResult Function(int timePosition)? remove,
    TResult Function(EnumSortProductOrder orderList)? orderList,
    TResult Function(String customerNumber)? send,
    TResult Function()? clear,
    TResult Function()? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(chosenProduct, index, orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Remove value) remove,
    required TResult Function(_OrderList value) orderList,
    required TResult Function(_Send value) send,
    required TResult Function(_Clear value) clear,
    required TResult Function(_DeleteFailureMessage value) deleteFailureMessage,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_OrderList value)? orderList,
    TResult? Function(_Send value)? send,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_DeleteFailureMessage value)? deleteFailureMessage,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Remove value)? remove,
    TResult Function(_OrderList value)? orderList,
    TResult Function(_Send value)? send,
    TResult Function(_Clear value)? clear,
    TResult Function(_DeleteFailureMessage value)? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements EventShoppingBasket {
  const factory _Add(
      {required final ShoppingBasketProduct chosenProduct,
      final int? index,
      required final EnumOrderType orderType}) = _$AddImpl;

  ShoppingBasketProduct get chosenProduct;
  int? get index;
  EnumOrderType get orderType;
  @JsonKey(ignore: true)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeImplCopyWith<$Res> {
  factory _$$ChangeImplCopyWith(
          _$ChangeImpl value, $Res Function(_$ChangeImpl) then) =
      __$$ChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int timePosition, String location});
}

/// @nodoc
class __$$ChangeImplCopyWithImpl<$Res>
    extends _$EventShoppingBasketCopyWithImpl<$Res, _$ChangeImpl>
    implements _$$ChangeImplCopyWith<$Res> {
  __$$ChangeImplCopyWithImpl(
      _$ChangeImpl _value, $Res Function(_$ChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timePosition = null,
    Object? location = null,
  }) {
    return _then(_$ChangeImpl(
      timePosition: null == timePosition
          ? _value.timePosition
          : timePosition // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeImpl implements _Change {
  const _$ChangeImpl({required this.timePosition, required this.location});

  @override
  final int timePosition;
  @override
  final String location;

  @override
  String toString() {
    return 'EventShoppingBasket.change(timePosition: $timePosition, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeImpl &&
            (identical(other.timePosition, timePosition) ||
                other.timePosition == timePosition) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timePosition, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeImplCopyWith<_$ChangeImpl> get copyWith =>
      __$$ChangeImplCopyWithImpl<_$ChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)
        add,
    required TResult Function(int timePosition, String location) change,
    required TResult Function(int timePosition) remove,
    required TResult Function(EnumSortProductOrder orderList) orderList,
    required TResult Function(String customerNumber) send,
    required TResult Function() clear,
    required TResult Function() deleteFailureMessage,
  }) {
    return change(timePosition, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult? Function(int timePosition, String location)? change,
    TResult? Function(int timePosition)? remove,
    TResult? Function(EnumSortProductOrder orderList)? orderList,
    TResult? Function(String customerNumber)? send,
    TResult? Function()? clear,
    TResult? Function()? deleteFailureMessage,
  }) {
    return change?.call(timePosition, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult Function(int timePosition, String location)? change,
    TResult Function(int timePosition)? remove,
    TResult Function(EnumSortProductOrder orderList)? orderList,
    TResult Function(String customerNumber)? send,
    TResult Function()? clear,
    TResult Function()? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(timePosition, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Remove value) remove,
    required TResult Function(_OrderList value) orderList,
    required TResult Function(_Send value) send,
    required TResult Function(_Clear value) clear,
    required TResult Function(_DeleteFailureMessage value) deleteFailureMessage,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_OrderList value)? orderList,
    TResult? Function(_Send value)? send,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_DeleteFailureMessage value)? deleteFailureMessage,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Remove value)? remove,
    TResult Function(_OrderList value)? orderList,
    TResult Function(_Send value)? send,
    TResult Function(_Clear value)? clear,
    TResult Function(_DeleteFailureMessage value)? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _Change implements EventShoppingBasket {
  const factory _Change(
      {required final int timePosition,
      required final String location}) = _$ChangeImpl;

  int get timePosition;
  String get location;
  @JsonKey(ignore: true)
  _$$ChangeImplCopyWith<_$ChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveImplCopyWith<$Res> {
  factory _$$RemoveImplCopyWith(
          _$RemoveImpl value, $Res Function(_$RemoveImpl) then) =
      __$$RemoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int timePosition});
}

/// @nodoc
class __$$RemoveImplCopyWithImpl<$Res>
    extends _$EventShoppingBasketCopyWithImpl<$Res, _$RemoveImpl>
    implements _$$RemoveImplCopyWith<$Res> {
  __$$RemoveImplCopyWithImpl(
      _$RemoveImpl _value, $Res Function(_$RemoveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timePosition = null,
  }) {
    return _then(_$RemoveImpl(
      timePosition: null == timePosition
          ? _value.timePosition
          : timePosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveImpl implements _Remove {
  const _$RemoveImpl({required this.timePosition});

  @override
  final int timePosition;

  @override
  String toString() {
    return 'EventShoppingBasket.remove(timePosition: $timePosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveImpl &&
            (identical(other.timePosition, timePosition) ||
                other.timePosition == timePosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timePosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveImplCopyWith<_$RemoveImpl> get copyWith =>
      __$$RemoveImplCopyWithImpl<_$RemoveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)
        add,
    required TResult Function(int timePosition, String location) change,
    required TResult Function(int timePosition) remove,
    required TResult Function(EnumSortProductOrder orderList) orderList,
    required TResult Function(String customerNumber) send,
    required TResult Function() clear,
    required TResult Function() deleteFailureMessage,
  }) {
    return remove(timePosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult? Function(int timePosition, String location)? change,
    TResult? Function(int timePosition)? remove,
    TResult? Function(EnumSortProductOrder orderList)? orderList,
    TResult? Function(String customerNumber)? send,
    TResult? Function()? clear,
    TResult? Function()? deleteFailureMessage,
  }) {
    return remove?.call(timePosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult Function(int timePosition, String location)? change,
    TResult Function(int timePosition)? remove,
    TResult Function(EnumSortProductOrder orderList)? orderList,
    TResult Function(String customerNumber)? send,
    TResult Function()? clear,
    TResult Function()? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(timePosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Remove value) remove,
    required TResult Function(_OrderList value) orderList,
    required TResult Function(_Send value) send,
    required TResult Function(_Clear value) clear,
    required TResult Function(_DeleteFailureMessage value) deleteFailureMessage,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_OrderList value)? orderList,
    TResult? Function(_Send value)? send,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_DeleteFailureMessage value)? deleteFailureMessage,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Remove value)? remove,
    TResult Function(_OrderList value)? orderList,
    TResult Function(_Send value)? send,
    TResult Function(_Clear value)? clear,
    TResult Function(_DeleteFailureMessage value)? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements EventShoppingBasket {
  const factory _Remove({required final int timePosition}) = _$RemoveImpl;

  int get timePosition;
  @JsonKey(ignore: true)
  _$$RemoveImplCopyWith<_$RemoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderListImplCopyWith<$Res> {
  factory _$$OrderListImplCopyWith(
          _$OrderListImpl value, $Res Function(_$OrderListImpl) then) =
      __$$OrderListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EnumSortProductOrder orderList});
}

/// @nodoc
class __$$OrderListImplCopyWithImpl<$Res>
    extends _$EventShoppingBasketCopyWithImpl<$Res, _$OrderListImpl>
    implements _$$OrderListImplCopyWith<$Res> {
  __$$OrderListImplCopyWithImpl(
      _$OrderListImpl _value, $Res Function(_$OrderListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
  }) {
    return _then(_$OrderListImpl(
      orderList: null == orderList
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as EnumSortProductOrder,
    ));
  }
}

/// @nodoc

class _$OrderListImpl implements _OrderList {
  const _$OrderListImpl({required this.orderList});

  @override
  final EnumSortProductOrder orderList;

  @override
  String toString() {
    return 'EventShoppingBasket.orderList(orderList: $orderList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListImpl &&
            (identical(other.orderList, orderList) ||
                other.orderList == orderList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListImplCopyWith<_$OrderListImpl> get copyWith =>
      __$$OrderListImplCopyWithImpl<_$OrderListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)
        add,
    required TResult Function(int timePosition, String location) change,
    required TResult Function(int timePosition) remove,
    required TResult Function(EnumSortProductOrder orderList) orderList,
    required TResult Function(String customerNumber) send,
    required TResult Function() clear,
    required TResult Function() deleteFailureMessage,
  }) {
    return orderList(this.orderList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult? Function(int timePosition, String location)? change,
    TResult? Function(int timePosition)? remove,
    TResult? Function(EnumSortProductOrder orderList)? orderList,
    TResult? Function(String customerNumber)? send,
    TResult? Function()? clear,
    TResult? Function()? deleteFailureMessage,
  }) {
    return orderList?.call(this.orderList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult Function(int timePosition, String location)? change,
    TResult Function(int timePosition)? remove,
    TResult Function(EnumSortProductOrder orderList)? orderList,
    TResult Function(String customerNumber)? send,
    TResult Function()? clear,
    TResult Function()? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (orderList != null) {
      return orderList(this.orderList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Remove value) remove,
    required TResult Function(_OrderList value) orderList,
    required TResult Function(_Send value) send,
    required TResult Function(_Clear value) clear,
    required TResult Function(_DeleteFailureMessage value) deleteFailureMessage,
  }) {
    return orderList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_OrderList value)? orderList,
    TResult? Function(_Send value)? send,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_DeleteFailureMessage value)? deleteFailureMessage,
  }) {
    return orderList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Remove value)? remove,
    TResult Function(_OrderList value)? orderList,
    TResult Function(_Send value)? send,
    TResult Function(_Clear value)? clear,
    TResult Function(_DeleteFailureMessage value)? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (orderList != null) {
      return orderList(this);
    }
    return orElse();
  }
}

abstract class _OrderList implements EventShoppingBasket {
  const factory _OrderList({required final EnumSortProductOrder orderList}) =
      _$OrderListImpl;

  EnumSortProductOrder get orderList;
  @JsonKey(ignore: true)
  _$$OrderListImplCopyWith<_$OrderListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendImplCopyWith<$Res> {
  factory _$$SendImplCopyWith(
          _$SendImpl value, $Res Function(_$SendImpl) then) =
      __$$SendImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String customerNumber});
}

/// @nodoc
class __$$SendImplCopyWithImpl<$Res>
    extends _$EventShoppingBasketCopyWithImpl<$Res, _$SendImpl>
    implements _$$SendImplCopyWith<$Res> {
  __$$SendImplCopyWithImpl(_$SendImpl _value, $Res Function(_$SendImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerNumber = null,
  }) {
    return _then(_$SendImpl(
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendImpl implements _Send {
  const _$SendImpl({required this.customerNumber});

  @override
  final String customerNumber;

  @override
  String toString() {
    return 'EventShoppingBasket.send(customerNumber: $customerNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImpl &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendImplCopyWith<_$SendImpl> get copyWith =>
      __$$SendImplCopyWithImpl<_$SendImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)
        add,
    required TResult Function(int timePosition, String location) change,
    required TResult Function(int timePosition) remove,
    required TResult Function(EnumSortProductOrder orderList) orderList,
    required TResult Function(String customerNumber) send,
    required TResult Function() clear,
    required TResult Function() deleteFailureMessage,
  }) {
    return send(customerNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult? Function(int timePosition, String location)? change,
    TResult? Function(int timePosition)? remove,
    TResult? Function(EnumSortProductOrder orderList)? orderList,
    TResult? Function(String customerNumber)? send,
    TResult? Function()? clear,
    TResult? Function()? deleteFailureMessage,
  }) {
    return send?.call(customerNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult Function(int timePosition, String location)? change,
    TResult Function(int timePosition)? remove,
    TResult Function(EnumSortProductOrder orderList)? orderList,
    TResult Function(String customerNumber)? send,
    TResult Function()? clear,
    TResult Function()? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(customerNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Remove value) remove,
    required TResult Function(_OrderList value) orderList,
    required TResult Function(_Send value) send,
    required TResult Function(_Clear value) clear,
    required TResult Function(_DeleteFailureMessage value) deleteFailureMessage,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_OrderList value)? orderList,
    TResult? Function(_Send value)? send,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_DeleteFailureMessage value)? deleteFailureMessage,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Remove value)? remove,
    TResult Function(_OrderList value)? orderList,
    TResult Function(_Send value)? send,
    TResult Function(_Clear value)? clear,
    TResult Function(_DeleteFailureMessage value)? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class _Send implements EventShoppingBasket {
  const factory _Send({required final String customerNumber}) = _$SendImpl;

  String get customerNumber;
  @JsonKey(ignore: true)
  _$$SendImplCopyWith<_$SendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$EventShoppingBasketCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'EventShoppingBasket.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)
        add,
    required TResult Function(int timePosition, String location) change,
    required TResult Function(int timePosition) remove,
    required TResult Function(EnumSortProductOrder orderList) orderList,
    required TResult Function(String customerNumber) send,
    required TResult Function() clear,
    required TResult Function() deleteFailureMessage,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult? Function(int timePosition, String location)? change,
    TResult? Function(int timePosition)? remove,
    TResult? Function(EnumSortProductOrder orderList)? orderList,
    TResult? Function(String customerNumber)? send,
    TResult? Function()? clear,
    TResult? Function()? deleteFailureMessage,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult Function(int timePosition, String location)? change,
    TResult Function(int timePosition)? remove,
    TResult Function(EnumSortProductOrder orderList)? orderList,
    TResult Function(String customerNumber)? send,
    TResult Function()? clear,
    TResult Function()? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Remove value) remove,
    required TResult Function(_OrderList value) orderList,
    required TResult Function(_Send value) send,
    required TResult Function(_Clear value) clear,
    required TResult Function(_DeleteFailureMessage value) deleteFailureMessage,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_OrderList value)? orderList,
    TResult? Function(_Send value)? send,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_DeleteFailureMessage value)? deleteFailureMessage,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Remove value)? remove,
    TResult Function(_OrderList value)? orderList,
    TResult Function(_Send value)? send,
    TResult Function(_Clear value)? clear,
    TResult Function(_DeleteFailureMessage value)? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements EventShoppingBasket {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$DeleteFailureMessageImplCopyWith<$Res> {
  factory _$$DeleteFailureMessageImplCopyWith(_$DeleteFailureMessageImpl value,
          $Res Function(_$DeleteFailureMessageImpl) then) =
      __$$DeleteFailureMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteFailureMessageImplCopyWithImpl<$Res>
    extends _$EventShoppingBasketCopyWithImpl<$Res, _$DeleteFailureMessageImpl>
    implements _$$DeleteFailureMessageImplCopyWith<$Res> {
  __$$DeleteFailureMessageImplCopyWithImpl(_$DeleteFailureMessageImpl _value,
      $Res Function(_$DeleteFailureMessageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteFailureMessageImpl implements _DeleteFailureMessage {
  const _$DeleteFailureMessageImpl();

  @override
  String toString() {
    return 'EventShoppingBasket.deleteFailureMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailureMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)
        add,
    required TResult Function(int timePosition, String location) change,
    required TResult Function(int timePosition) remove,
    required TResult Function(EnumSortProductOrder orderList) orderList,
    required TResult Function(String customerNumber) send,
    required TResult Function() clear,
    required TResult Function() deleteFailureMessage,
  }) {
    return deleteFailureMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult? Function(int timePosition, String location)? change,
    TResult? Function(int timePosition)? remove,
    TResult? Function(EnumSortProductOrder orderList)? orderList,
    TResult? Function(String customerNumber)? send,
    TResult? Function()? clear,
    TResult? Function()? deleteFailureMessage,
  }) {
    return deleteFailureMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingBasketProduct chosenProduct, int? index,
            EnumOrderType orderType)?
        add,
    TResult Function(int timePosition, String location)? change,
    TResult Function(int timePosition)? remove,
    TResult Function(EnumSortProductOrder orderList)? orderList,
    TResult Function(String customerNumber)? send,
    TResult Function()? clear,
    TResult Function()? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (deleteFailureMessage != null) {
      return deleteFailureMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Remove value) remove,
    required TResult Function(_OrderList value) orderList,
    required TResult Function(_Send value) send,
    required TResult Function(_Clear value) clear,
    required TResult Function(_DeleteFailureMessage value) deleteFailureMessage,
  }) {
    return deleteFailureMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_OrderList value)? orderList,
    TResult? Function(_Send value)? send,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_DeleteFailureMessage value)? deleteFailureMessage,
  }) {
    return deleteFailureMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Remove value)? remove,
    TResult Function(_OrderList value)? orderList,
    TResult Function(_Send value)? send,
    TResult Function(_Clear value)? clear,
    TResult Function(_DeleteFailureMessage value)? deleteFailureMessage,
    required TResult orElse(),
  }) {
    if (deleteFailureMessage != null) {
      return deleteFailureMessage(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailureMessage implements EventShoppingBasket {
  const factory _DeleteFailureMessage() = _$DeleteFailureMessageImpl;
}
