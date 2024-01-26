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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventShoppingBasket {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChosenProduct chosenProduct, int? index) add,
    required TResult Function(int position) change,
    required TResult Function(int position) remove,
    required TResult Function(EnumShoppingBasketOrder orderList) orderList,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChosenProduct chosenProduct, int? index)? add,
    TResult? Function(int position)? change,
    TResult? Function(int position)? remove,
    TResult? Function(EnumShoppingBasketOrder orderList)? orderList,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChosenProduct chosenProduct, int? index)? add,
    TResult Function(int position)? change,
    TResult Function(int position)? remove,
    TResult Function(EnumShoppingBasketOrder orderList)? orderList,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Remove value) remove,
    required TResult Function(_OrderList value) orderList,
    required TResult Function(_Clear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_OrderList value)? orderList,
    TResult? Function(_Clear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Remove value)? remove,
    TResult Function(_OrderList value)? orderList,
    TResult Function(_Clear value)? clear,
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
  $Res call({ChosenProduct chosenProduct, int? index});

  $ChosenProductCopyWith<$Res> get chosenProduct;
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
  }) {
    return _then(_$AddImpl(
      chosenProduct: null == chosenProduct
          ? _value.chosenProduct
          : chosenProduct // ignore: cast_nullable_to_non_nullable
              as ChosenProduct,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChosenProductCopyWith<$Res> get chosenProduct {
    return $ChosenProductCopyWith<$Res>(_value.chosenProduct, (value) {
      return _then(_value.copyWith(chosenProduct: value));
    });
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl({required this.chosenProduct, this.index});

  @override
  final ChosenProduct chosenProduct;
  @override
  final int? index;

  @override
  String toString() {
    return 'EventShoppingBasket.add(chosenProduct: $chosenProduct, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.chosenProduct, chosenProduct) ||
                other.chosenProduct == chosenProduct) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chosenProduct, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChosenProduct chosenProduct, int? index) add,
    required TResult Function(int position) change,
    required TResult Function(int position) remove,
    required TResult Function(EnumShoppingBasketOrder orderList) orderList,
    required TResult Function() clear,
  }) {
    return add(chosenProduct, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChosenProduct chosenProduct, int? index)? add,
    TResult? Function(int position)? change,
    TResult? Function(int position)? remove,
    TResult? Function(EnumShoppingBasketOrder orderList)? orderList,
    TResult? Function()? clear,
  }) {
    return add?.call(chosenProduct, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChosenProduct chosenProduct, int? index)? add,
    TResult Function(int position)? change,
    TResult Function(int position)? remove,
    TResult Function(EnumShoppingBasketOrder orderList)? orderList,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(chosenProduct, index);
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
    required TResult Function(_Clear value) clear,
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
    TResult? Function(_Clear value)? clear,
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
    TResult Function(_Clear value)? clear,
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
      {required final ChosenProduct chosenProduct,
      final int? index}) = _$AddImpl;

  ChosenProduct get chosenProduct;
  int? get index;
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
  $Res call({int position});
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
    Object? position = null,
  }) {
    return _then(_$ChangeImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeImpl implements _Change {
  const _$ChangeImpl({required this.position});

  @override
  final int position;

  @override
  String toString() {
    return 'EventShoppingBasket.change(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeImplCopyWith<_$ChangeImpl> get copyWith =>
      __$$ChangeImplCopyWithImpl<_$ChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChosenProduct chosenProduct, int? index) add,
    required TResult Function(int position) change,
    required TResult Function(int position) remove,
    required TResult Function(EnumShoppingBasketOrder orderList) orderList,
    required TResult Function() clear,
  }) {
    return change(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChosenProduct chosenProduct, int? index)? add,
    TResult? Function(int position)? change,
    TResult? Function(int position)? remove,
    TResult? Function(EnumShoppingBasketOrder orderList)? orderList,
    TResult? Function()? clear,
  }) {
    return change?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChosenProduct chosenProduct, int? index)? add,
    TResult Function(int position)? change,
    TResult Function(int position)? remove,
    TResult Function(EnumShoppingBasketOrder orderList)? orderList,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(position);
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
    required TResult Function(_Clear value) clear,
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
    TResult? Function(_Clear value)? clear,
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
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _Change implements EventShoppingBasket {
  const factory _Change({required final int position}) = _$ChangeImpl;

  int get position;
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
  $Res call({int position});
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
    Object? position = null,
  }) {
    return _then(_$RemoveImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveImpl implements _Remove {
  const _$RemoveImpl({required this.position});

  @override
  final int position;

  @override
  String toString() {
    return 'EventShoppingBasket.remove(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveImplCopyWith<_$RemoveImpl> get copyWith =>
      __$$RemoveImplCopyWithImpl<_$RemoveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChosenProduct chosenProduct, int? index) add,
    required TResult Function(int position) change,
    required TResult Function(int position) remove,
    required TResult Function(EnumShoppingBasketOrder orderList) orderList,
    required TResult Function() clear,
  }) {
    return remove(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChosenProduct chosenProduct, int? index)? add,
    TResult? Function(int position)? change,
    TResult? Function(int position)? remove,
    TResult? Function(EnumShoppingBasketOrder orderList)? orderList,
    TResult? Function()? clear,
  }) {
    return remove?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChosenProduct chosenProduct, int? index)? add,
    TResult Function(int position)? change,
    TResult Function(int position)? remove,
    TResult Function(EnumShoppingBasketOrder orderList)? orderList,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(position);
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
    required TResult Function(_Clear value) clear,
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
    TResult? Function(_Clear value)? clear,
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
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements EventShoppingBasket {
  const factory _Remove({required final int position}) = _$RemoveImpl;

  int get position;
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
  $Res call({EnumShoppingBasketOrder orderList});
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
              as EnumShoppingBasketOrder,
    ));
  }
}

/// @nodoc

class _$OrderListImpl implements _OrderList {
  const _$OrderListImpl({required this.orderList});

  @override
  final EnumShoppingBasketOrder orderList;

  @override
  String toString() {
    return 'EventShoppingBasket.orderList(orderList: $orderList)';
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(ChosenProduct chosenProduct, int? index) add,
    required TResult Function(int position) change,
    required TResult Function(int position) remove,
    required TResult Function(EnumShoppingBasketOrder orderList) orderList,
    required TResult Function() clear,
  }) {
    return orderList(this.orderList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChosenProduct chosenProduct, int? index)? add,
    TResult? Function(int position)? change,
    TResult? Function(int position)? remove,
    TResult? Function(EnumShoppingBasketOrder orderList)? orderList,
    TResult? Function()? clear,
  }) {
    return orderList?.call(this.orderList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChosenProduct chosenProduct, int? index)? add,
    TResult Function(int position)? change,
    TResult Function(int position)? remove,
    TResult Function(EnumShoppingBasketOrder orderList)? orderList,
    TResult Function()? clear,
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
    required TResult Function(_Clear value) clear,
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
    TResult? Function(_Clear value)? clear,
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
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (orderList != null) {
      return orderList(this);
    }
    return orElse();
  }
}

abstract class _OrderList implements EventShoppingBasket {
  const factory _OrderList({required final EnumShoppingBasketOrder orderList}) =
      _$OrderListImpl;

  EnumShoppingBasketOrder get orderList;
  @JsonKey(ignore: true)
  _$$OrderListImplCopyWith<_$OrderListImpl> get copyWith =>
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChosenProduct chosenProduct, int? index) add,
    required TResult Function(int position) change,
    required TResult Function(int position) remove,
    required TResult Function(EnumShoppingBasketOrder orderList) orderList,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChosenProduct chosenProduct, int? index)? add,
    TResult? Function(int position)? change,
    TResult? Function(int position)? remove,
    TResult? Function(EnumShoppingBasketOrder orderList)? orderList,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChosenProduct chosenProduct, int? index)? add,
    TResult Function(int position)? change,
    TResult Function(int position)? remove,
    TResult Function(EnumShoppingBasketOrder orderList)? orderList,
    TResult Function()? clear,
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
    required TResult Function(_Clear value) clear,
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
    TResult? Function(_Clear value)? clear,
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
    TResult Function(_Clear value)? clear,
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
