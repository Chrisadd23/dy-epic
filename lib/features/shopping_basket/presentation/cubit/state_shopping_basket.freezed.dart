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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateShoppingBasket {
  List<ChosenProduct> get listChosenProduct =>
      throw _privateConstructorUsedError;

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
  $Res call({List<ChosenProduct> listChosenProduct});
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
    Object? listChosenProduct = null,
  }) {
    return _then(_value.copyWith(
      listChosenProduct: null == listChosenProduct
          ? _value.listChosenProduct
          : listChosenProduct // ignore: cast_nullable_to_non_nullable
              as List<ChosenProduct>,
    ) as $Val);
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
  $Res call({List<ChosenProduct> listChosenProduct});
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
    Object? listChosenProduct = null,
  }) {
    return _then(_$StateShoppingBasketImpl(
      listChosenProduct: null == listChosenProduct
          ? _value._listChosenProduct
          : listChosenProduct // ignore: cast_nullable_to_non_nullable
              as List<ChosenProduct>,
    ));
  }
}

/// @nodoc

class _$StateShoppingBasketImpl implements _StateShoppingBasket {
  const _$StateShoppingBasketImpl(
      {required final List<ChosenProduct> listChosenProduct})
      : _listChosenProduct = listChosenProduct;

  final List<ChosenProduct> _listChosenProduct;
  @override
  List<ChosenProduct> get listChosenProduct {
    if (_listChosenProduct is EqualUnmodifiableListView)
      return _listChosenProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listChosenProduct);
  }

  @override
  String toString() {
    return 'StateShoppingBasket(listChosenProduct: $listChosenProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateShoppingBasketImpl &&
            const DeepCollectionEquality()
                .equals(other._listChosenProduct, _listChosenProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listChosenProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateShoppingBasketImplCopyWith<_$StateShoppingBasketImpl> get copyWith =>
      __$$StateShoppingBasketImplCopyWithImpl<_$StateShoppingBasketImpl>(
          this, _$identity);
}

abstract class _StateShoppingBasket implements StateShoppingBasket {
  const factory _StateShoppingBasket(
          {required final List<ChosenProduct> listChosenProduct}) =
      _$StateShoppingBasketImpl;

  @override
  List<ChosenProduct> get listChosenProduct;
  @override
  @JsonKey(ignore: true)
  _$$StateShoppingBasketImplCopyWith<_$StateShoppingBasketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChosenProduct {
  String get name => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get productNumber => throw _privateConstructorUsedError;
  EnumOrderType get orderType => throw _privateConstructorUsedError;
  EntityProduct get entityProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChosenProductCopyWith<ChosenProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChosenProductCopyWith<$Res> {
  factory $ChosenProductCopyWith(
          ChosenProduct value, $Res Function(ChosenProduct) then) =
      _$ChosenProductCopyWithImpl<$Res, ChosenProduct>;
  @useResult
  $Res call(
      {String name,
      int count,
      String productNumber,
      EnumOrderType orderType,
      EntityProduct entityProduct});

  $EntityProductCopyWith<$Res> get entityProduct;
}

/// @nodoc
class _$ChosenProductCopyWithImpl<$Res, $Val extends ChosenProduct>
    implements $ChosenProductCopyWith<$Res> {
  _$ChosenProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
    Object? productNumber = null,
    Object? orderType = null,
    Object? entityProduct = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as EnumOrderType,
      entityProduct: null == entityProduct
          ? _value.entityProduct
          : entityProduct // ignore: cast_nullable_to_non_nullable
              as EntityProduct,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EntityProductCopyWith<$Res> get entityProduct {
    return $EntityProductCopyWith<$Res>(_value.entityProduct, (value) {
      return _then(_value.copyWith(entityProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChosenProductImplCopyWith<$Res>
    implements $ChosenProductCopyWith<$Res> {
  factory _$$ChosenProductImplCopyWith(
          _$ChosenProductImpl value, $Res Function(_$ChosenProductImpl) then) =
      __$$ChosenProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int count,
      String productNumber,
      EnumOrderType orderType,
      EntityProduct entityProduct});

  @override
  $EntityProductCopyWith<$Res> get entityProduct;
}

/// @nodoc
class __$$ChosenProductImplCopyWithImpl<$Res>
    extends _$ChosenProductCopyWithImpl<$Res, _$ChosenProductImpl>
    implements _$$ChosenProductImplCopyWith<$Res> {
  __$$ChosenProductImplCopyWithImpl(
      _$ChosenProductImpl _value, $Res Function(_$ChosenProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
    Object? productNumber = null,
    Object? orderType = null,
    Object? entityProduct = null,
  }) {
    return _then(_$ChosenProductImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as EnumOrderType,
      entityProduct: null == entityProduct
          ? _value.entityProduct
          : entityProduct // ignore: cast_nullable_to_non_nullable
              as EntityProduct,
    ));
  }
}

/// @nodoc

class _$ChosenProductImpl implements _ChosenProduct {
  const _$ChosenProductImpl(
      {required this.name,
      required this.count,
      required this.productNumber,
      required this.orderType,
      required this.entityProduct});

  @override
  final String name;
  @override
  final int count;
  @override
  final String productNumber;
  @override
  final EnumOrderType orderType;
  @override
  final EntityProduct entityProduct;

  @override
  String toString() {
    return 'ChosenProduct(name: $name, count: $count, productNumber: $productNumber, orderType: $orderType, entityProduct: $entityProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChosenProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.entityProduct, entityProduct) ||
                other.entityProduct == entityProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, count, productNumber, orderType, entityProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChosenProductImplCopyWith<_$ChosenProductImpl> get copyWith =>
      __$$ChosenProductImplCopyWithImpl<_$ChosenProductImpl>(this, _$identity);
}

abstract class _ChosenProduct implements ChosenProduct {
  const factory _ChosenProduct(
      {required final String name,
      required final int count,
      required final String productNumber,
      required final EnumOrderType orderType,
      required final EntityProduct entityProduct}) = _$ChosenProductImpl;

  @override
  String get name;
  @override
  int get count;
  @override
  String get productNumber;
  @override
  EnumOrderType get orderType;
  @override
  EntityProduct get entityProduct;
  @override
  @JsonKey(ignore: true)
  _$$ChosenProductImplCopyWith<_$ChosenProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
