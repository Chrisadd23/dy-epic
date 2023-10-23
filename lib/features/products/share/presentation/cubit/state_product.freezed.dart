// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateProduct {
  String get hashKey => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get productOrderCount => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateProductCopyWith<StateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateProductCopyWith<$Res> {
  factory $StateProductCopyWith(
          StateProduct value, $Res Function(StateProduct) then) =
      _$StateProductCopyWithImpl<$Res, StateProduct>;
  @useResult
  $Res call(
      {String hashKey,
      String category,
      int productOrderCount,
      Product? product});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$StateProductCopyWithImpl<$Res, $Val extends StateProduct>
    implements $StateProductCopyWith<$Res> {
  _$StateProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashKey = null,
    Object? category = null,
    Object? productOrderCount = null,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      hashKey: null == hashKey
          ? _value.hashKey
          : hashKey // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      productOrderCount: null == productOrderCount
          ? _value.productOrderCount
          : productOrderCount // ignore: cast_nullable_to_non_nullable
              as int,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StateProductCopyWith<$Res>
    implements $StateProductCopyWith<$Res> {
  factory _$$_StateProductCopyWith(
          _$_StateProduct value, $Res Function(_$_StateProduct) then) =
      __$$_StateProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hashKey,
      String category,
      int productOrderCount,
      Product? product});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_StateProductCopyWithImpl<$Res>
    extends _$StateProductCopyWithImpl<$Res, _$_StateProduct>
    implements _$$_StateProductCopyWith<$Res> {
  __$$_StateProductCopyWithImpl(
      _$_StateProduct _value, $Res Function(_$_StateProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashKey = null,
    Object? category = null,
    Object? productOrderCount = null,
    Object? product = freezed,
  }) {
    return _then(_$_StateProduct(
      hashKey: null == hashKey
          ? _value.hashKey
          : hashKey // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      productOrderCount: null == productOrderCount
          ? _value.productOrderCount
          : productOrderCount // ignore: cast_nullable_to_non_nullable
              as int,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc

class _$_StateProduct implements _StateProduct {
  const _$_StateProduct(
      {this.hashKey = '',
      this.category = '',
      this.productOrderCount = 0,
      this.product});

  @override
  @JsonKey()
  final String hashKey;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final int productOrderCount;
  @override
  final Product? product;

  @override
  String toString() {
    return 'StateProduct(hashKey: $hashKey, category: $category, productOrderCount: $productOrderCount, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateProduct &&
            (identical(other.hashKey, hashKey) || other.hashKey == hashKey) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.productOrderCount, productOrderCount) ||
                other.productOrderCount == productOrderCount) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hashKey, category, productOrderCount, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateProductCopyWith<_$_StateProduct> get copyWith =>
      __$$_StateProductCopyWithImpl<_$_StateProduct>(this, _$identity);
}

abstract class _StateProduct implements StateProduct {
  const factory _StateProduct(
      {final String hashKey,
      final String category,
      final int productOrderCount,
      final Product? product}) = _$_StateProduct;

  @override
  String get hashKey;
  @override
  String get category;
  @override
  int get productOrderCount;
  @override
  Product? get product;
  @override
  @JsonKey(ignore: true)
  _$$_StateProductCopyWith<_$_StateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
