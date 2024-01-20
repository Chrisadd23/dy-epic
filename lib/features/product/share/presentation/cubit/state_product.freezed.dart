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
mixin _$StateProduct<T> {
  String get hashKey => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get productOrderCount => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  EntityProduct? get product => throw _privateConstructorUsedError;
  Map<Enum, dynamic> get selectedCharacteristics =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateProductCopyWith<T, StateProduct<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateProductCopyWith<T, $Res> {
  factory $StateProductCopyWith(
          StateProduct<T> value, $Res Function(StateProduct<T>) then) =
      _$StateProductCopyWithImpl<T, $Res, StateProduct<T>>;
  @useResult
  $Res call(
      {String hashKey,
      String category,
      int productOrderCount,
      double price,
      EntityProduct? product,
      Map<Enum, dynamic> selectedCharacteristics});

  $EntityProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$StateProductCopyWithImpl<T, $Res, $Val extends StateProduct<T>>
    implements $StateProductCopyWith<T, $Res> {
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
    Object? price = null,
    Object? product = freezed,
    Object? selectedCharacteristics = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as EntityProduct?,
      selectedCharacteristics: null == selectedCharacteristics
          ? _value.selectedCharacteristics
          : selectedCharacteristics // ignore: cast_nullable_to_non_nullable
              as Map<Enum, dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EntityProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $EntityProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateProductImplCopyWith<T, $Res>
    implements $StateProductCopyWith<T, $Res> {
  factory _$$StateProductImplCopyWith(_$StateProductImpl<T> value,
          $Res Function(_$StateProductImpl<T>) then) =
      __$$StateProductImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String hashKey,
      String category,
      int productOrderCount,
      double price,
      EntityProduct? product,
      Map<Enum, dynamic> selectedCharacteristics});

  @override
  $EntityProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$StateProductImplCopyWithImpl<T, $Res>
    extends _$StateProductCopyWithImpl<T, $Res, _$StateProductImpl<T>>
    implements _$$StateProductImplCopyWith<T, $Res> {
  __$$StateProductImplCopyWithImpl(
      _$StateProductImpl<T> _value, $Res Function(_$StateProductImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashKey = null,
    Object? category = null,
    Object? productOrderCount = null,
    Object? price = null,
    Object? product = freezed,
    Object? selectedCharacteristics = null,
  }) {
    return _then(_$StateProductImpl<T>(
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as EntityProduct?,
      selectedCharacteristics: null == selectedCharacteristics
          ? _value._selectedCharacteristics
          : selectedCharacteristics // ignore: cast_nullable_to_non_nullable
              as Map<Enum, dynamic>,
    ));
  }
}

/// @nodoc

class _$StateProductImpl<T> implements _StateProduct<T> {
  const _$StateProductImpl(
      {this.hashKey = '',
      this.category = '',
      this.productOrderCount = 0,
      this.price = 0.00,
      this.product,
      final Map<Enum, dynamic> selectedCharacteristics = const {}})
      : _selectedCharacteristics = selectedCharacteristics;

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
  @JsonKey()
  final double price;
  @override
  final EntityProduct? product;
  final Map<Enum, dynamic> _selectedCharacteristics;
  @override
  @JsonKey()
  Map<Enum, dynamic> get selectedCharacteristics {
    if (_selectedCharacteristics is EqualUnmodifiableMapView)
      return _selectedCharacteristics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedCharacteristics);
  }

  @override
  String toString() {
    return 'StateProduct<$T>(hashKey: $hashKey, category: $category, productOrderCount: $productOrderCount, price: $price, product: $product, selectedCharacteristics: $selectedCharacteristics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateProductImpl<T> &&
            (identical(other.hashKey, hashKey) || other.hashKey == hashKey) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.productOrderCount, productOrderCount) ||
                other.productOrderCount == productOrderCount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(
                other._selectedCharacteristics, _selectedCharacteristics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hashKey,
      category,
      productOrderCount,
      price,
      product,
      const DeepCollectionEquality().hash(_selectedCharacteristics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateProductImplCopyWith<T, _$StateProductImpl<T>> get copyWith =>
      __$$StateProductImplCopyWithImpl<T, _$StateProductImpl<T>>(
          this, _$identity);
}

abstract class _StateProduct<T> implements StateProduct<T> {
  const factory _StateProduct(
          {final String hashKey,
          final String category,
          final int productOrderCount,
          final double price,
          final EntityProduct? product,
          final Map<Enum, dynamic> selectedCharacteristics}) =
      _$StateProductImpl<T>;

  @override
  String get hashKey;
  @override
  String get category;
  @override
  int get productOrderCount;
  @override
  double get price;
  @override
  EntityProduct? get product;
  @override
  Map<Enum, dynamic> get selectedCharacteristics;
  @override
  @JsonKey(ignore: true)
  _$$StateProductImplCopyWith<T, _$StateProductImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
