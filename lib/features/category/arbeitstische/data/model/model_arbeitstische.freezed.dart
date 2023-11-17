// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_arbeitstische.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ModelArbeitstische {
  String get categoryName => throw _privateConstructorUsedError;
  List<ModelProduct> get listProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModelArbeitstischeCopyWith<ModelArbeitstische> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelArbeitstischeCopyWith<$Res> {
  factory $ModelArbeitstischeCopyWith(
          ModelArbeitstische value, $Res Function(ModelArbeitstische) then) =
      _$ModelArbeitstischeCopyWithImpl<$Res, ModelArbeitstische>;
  @useResult
  $Res call({String categoryName, List<ModelProduct> listProduct});
}

/// @nodoc
class _$ModelArbeitstischeCopyWithImpl<$Res, $Val extends ModelArbeitstische>
    implements $ModelArbeitstischeCopyWith<$Res> {
  _$ModelArbeitstischeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
  }) {
    return _then(_value.copyWith(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _value.listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ModelProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelArbeitstischeImplCopyWith<$Res>
    implements $ModelArbeitstischeCopyWith<$Res> {
  factory _$$ModelArbeitstischeImplCopyWith(_$ModelArbeitstischeImpl value,
          $Res Function(_$ModelArbeitstischeImpl) then) =
      __$$ModelArbeitstischeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryName, List<ModelProduct> listProduct});
}

/// @nodoc
class __$$ModelArbeitstischeImplCopyWithImpl<$Res>
    extends _$ModelArbeitstischeCopyWithImpl<$Res, _$ModelArbeitstischeImpl>
    implements _$$ModelArbeitstischeImplCopyWith<$Res> {
  __$$ModelArbeitstischeImplCopyWithImpl(_$ModelArbeitstischeImpl _value,
      $Res Function(_$ModelArbeitstischeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
  }) {
    return _then(_$ModelArbeitstischeImpl(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ModelProduct>,
    ));
  }
}

/// @nodoc

class _$ModelArbeitstischeImpl extends _ModelArbeitstische {
  const _$ModelArbeitstischeImpl(
      {required this.categoryName,
      required final List<ModelProduct> listProduct})
      : _listProduct = listProduct,
        super._();

  @override
  final String categoryName;
  final List<ModelProduct> _listProduct;
  @override
  List<ModelProduct> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'ModelArbeitstische(categoryName: $categoryName, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelArbeitstischeImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryName,
      const DeepCollectionEquality().hash(_listProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelArbeitstischeImplCopyWith<_$ModelArbeitstischeImpl> get copyWith =>
      __$$ModelArbeitstischeImplCopyWithImpl<_$ModelArbeitstischeImpl>(
          this, _$identity);
}

abstract class _ModelArbeitstische extends ModelArbeitstische {
  const factory _ModelArbeitstische(
          {required final String categoryName,
          required final List<ModelProduct> listProduct}) =
      _$ModelArbeitstischeImpl;
  const _ModelArbeitstische._() : super._();

  @override
  String get categoryName;
  @override
  List<ModelProduct> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$ModelArbeitstischeImplCopyWith<_$ModelArbeitstischeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ModelProduct {
  String get productName => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get indexNumber => throw _privateConstructorUsedError;
  int? get offerInPercent => throw _privateConstructorUsedError;
  int? get productCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModelProductCopyWith<ModelProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelProductCopyWith<$Res> {
  factory $ModelProductCopyWith(
          ModelProduct value, $Res Function(ModelProduct) then) =
      _$ModelProductCopyWithImpl<$Res, ModelProduct>;
  @useResult
  $Res call(
      {String productName,
      double price,
      int indexNumber,
      int? offerInPercent,
      int? productCount});
}

/// @nodoc
class _$ModelProductCopyWithImpl<$Res, $Val extends ModelProduct>
    implements $ModelProductCopyWith<$Res> {
  _$ModelProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? price = null,
    Object? indexNumber = null,
    Object? offerInPercent = freezed,
    Object? productCount = freezed,
  }) {
    return _then(_value.copyWith(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      indexNumber: null == indexNumber
          ? _value.indexNumber
          : indexNumber // ignore: cast_nullable_to_non_nullable
              as int,
      offerInPercent: freezed == offerInPercent
          ? _value.offerInPercent
          : offerInPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelProductImplCopyWith<$Res>
    implements $ModelProductCopyWith<$Res> {
  factory _$$ModelProductImplCopyWith(
          _$ModelProductImpl value, $Res Function(_$ModelProductImpl) then) =
      __$$ModelProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productName,
      double price,
      int indexNumber,
      int? offerInPercent,
      int? productCount});
}

/// @nodoc
class __$$ModelProductImplCopyWithImpl<$Res>
    extends _$ModelProductCopyWithImpl<$Res, _$ModelProductImpl>
    implements _$$ModelProductImplCopyWith<$Res> {
  __$$ModelProductImplCopyWithImpl(
      _$ModelProductImpl _value, $Res Function(_$ModelProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? price = null,
    Object? indexNumber = null,
    Object? offerInPercent = freezed,
    Object? productCount = freezed,
  }) {
    return _then(_$ModelProductImpl(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      indexNumber: null == indexNumber
          ? _value.indexNumber
          : indexNumber // ignore: cast_nullable_to_non_nullable
              as int,
      offerInPercent: freezed == offerInPercent
          ? _value.offerInPercent
          : offerInPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ModelProductImpl extends _ModelProduct {
  const _$ModelProductImpl(
      {required this.productName,
      required this.price,
      required this.indexNumber,
      this.offerInPercent,
      this.productCount})
      : super._();

  @override
  final String productName;
  @override
  final double price;
  @override
  final int indexNumber;
  @override
  final int? offerInPercent;
  @override
  final int? productCount;

  @override
  String toString() {
    return 'ModelProduct(productName: $productName, price: $price, indexNumber: $indexNumber, offerInPercent: $offerInPercent, productCount: $productCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelProductImpl &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.indexNumber, indexNumber) ||
                other.indexNumber == indexNumber) &&
            (identical(other.offerInPercent, offerInPercent) ||
                other.offerInPercent == offerInPercent) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productName, price, indexNumber,
      offerInPercent, productCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelProductImplCopyWith<_$ModelProductImpl> get copyWith =>
      __$$ModelProductImplCopyWithImpl<_$ModelProductImpl>(this, _$identity);
}

abstract class _ModelProduct extends ModelProduct {
  const factory _ModelProduct(
      {required final String productName,
      required final double price,
      required final int indexNumber,
      final int? offerInPercent,
      final int? productCount}) = _$ModelProductImpl;
  const _ModelProduct._() : super._();

  @override
  String get productName;
  @override
  double get price;
  @override
  int get indexNumber;
  @override
  int? get offerInPercent;
  @override
  int? get productCount;
  @override
  @JsonKey(ignore: true)
  _$$ModelProductImplCopyWith<_$ModelProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
