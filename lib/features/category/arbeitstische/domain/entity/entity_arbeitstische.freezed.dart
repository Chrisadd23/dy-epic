// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_arbeitstische.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntityArbeitstische {
  String get categoryName => throw _privateConstructorUsedError;
  List<EntityProduct> get listProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityArbeitstischeCopyWith<EntityArbeitstische> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityArbeitstischeCopyWith<$Res> {
  factory $EntityArbeitstischeCopyWith(
          EntityArbeitstische value, $Res Function(EntityArbeitstische) then) =
      _$EntityArbeitstischeCopyWithImpl<$Res, EntityArbeitstische>;
  @useResult
  $Res call({String categoryName, List<EntityProduct> listProduct});
}

/// @nodoc
class _$EntityArbeitstischeCopyWithImpl<$Res, $Val extends EntityArbeitstische>
    implements $EntityArbeitstischeCopyWith<$Res> {
  _$EntityArbeitstischeCopyWithImpl(this._value, this._then);

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
              as List<EntityProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EntityArbeitstischeCopyWith<$Res>
    implements $EntityArbeitstischeCopyWith<$Res> {
  factory _$$_EntityArbeitstischeCopyWith(_$_EntityArbeitstische value,
          $Res Function(_$_EntityArbeitstische) then) =
      __$$_EntityArbeitstischeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryName, List<EntityProduct> listProduct});
}

/// @nodoc
class __$$_EntityArbeitstischeCopyWithImpl<$Res>
    extends _$EntityArbeitstischeCopyWithImpl<$Res, _$_EntityArbeitstische>
    implements _$$_EntityArbeitstischeCopyWith<$Res> {
  __$$_EntityArbeitstischeCopyWithImpl(_$_EntityArbeitstische _value,
      $Res Function(_$_EntityArbeitstische) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
  }) {
    return _then(_$_EntityArbeitstische(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<EntityProduct>,
    ));
  }
}

/// @nodoc

class _$_EntityArbeitstische extends _EntityArbeitstische {
  const _$_EntityArbeitstische(
      {required this.categoryName,
      required final List<EntityProduct> listProduct})
      : _listProduct = listProduct,
        super._();

  @override
  final String categoryName;
  final List<EntityProduct> _listProduct;
  @override
  List<EntityProduct> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'EntityArbeitstische(categoryName: $categoryName, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityArbeitstische &&
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
  _$$_EntityArbeitstischeCopyWith<_$_EntityArbeitstische> get copyWith =>
      __$$_EntityArbeitstischeCopyWithImpl<_$_EntityArbeitstische>(
          this, _$identity);
}

abstract class _EntityArbeitstische extends EntityArbeitstische {
  const factory _EntityArbeitstische(
      {required final String categoryName,
      required final List<EntityProduct> listProduct}) = _$_EntityArbeitstische;
  const _EntityArbeitstische._() : super._();

  @override
  String get categoryName;
  @override
  List<EntityProduct> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$_EntityArbeitstischeCopyWith<_$_EntityArbeitstische> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntityProduct {
  String get productName => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get indexNumber => throw _privateConstructorUsedError;
  String get picturePath => throw _privateConstructorUsedError;
  int? get offerInPercent => throw _privateConstructorUsedError;
  int? get productCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityProductCopyWith<EntityProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityProductCopyWith<$Res> {
  factory $EntityProductCopyWith(
          EntityProduct value, $Res Function(EntityProduct) then) =
      _$EntityProductCopyWithImpl<$Res, EntityProduct>;
  @useResult
  $Res call(
      {String productName,
      double price,
      int indexNumber,
      String picturePath,
      int? offerInPercent,
      int? productCount});
}

/// @nodoc
class _$EntityProductCopyWithImpl<$Res, $Val extends EntityProduct>
    implements $EntityProductCopyWith<$Res> {
  _$EntityProductCopyWithImpl(this._value, this._then);

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
    Object? picturePath = null,
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
      picturePath: null == picturePath
          ? _value.picturePath
          : picturePath // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_EntityProductCopyWith<$Res>
    implements $EntityProductCopyWith<$Res> {
  factory _$$_EntityProductCopyWith(
          _$_EntityProduct value, $Res Function(_$_EntityProduct) then) =
      __$$_EntityProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productName,
      double price,
      int indexNumber,
      String picturePath,
      int? offerInPercent,
      int? productCount});
}

/// @nodoc
class __$$_EntityProductCopyWithImpl<$Res>
    extends _$EntityProductCopyWithImpl<$Res, _$_EntityProduct>
    implements _$$_EntityProductCopyWith<$Res> {
  __$$_EntityProductCopyWithImpl(
      _$_EntityProduct _value, $Res Function(_$_EntityProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? price = null,
    Object? indexNumber = null,
    Object? picturePath = null,
    Object? offerInPercent = freezed,
    Object? productCount = freezed,
  }) {
    return _then(_$_EntityProduct(
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
      picturePath: null == picturePath
          ? _value.picturePath
          : picturePath // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_EntityProduct extends _EntityProduct {
  const _$_EntityProduct(
      {required this.productName,
      required this.price,
      required this.indexNumber,
      required this.picturePath,
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
  final String picturePath;
  @override
  final int? offerInPercent;
  @override
  final int? productCount;

  @override
  String toString() {
    return 'EntityProduct(productName: $productName, price: $price, indexNumber: $indexNumber, picturePath: $picturePath, offerInPercent: $offerInPercent, productCount: $productCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityProduct &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.indexNumber, indexNumber) ||
                other.indexNumber == indexNumber) &&
            (identical(other.picturePath, picturePath) ||
                other.picturePath == picturePath) &&
            (identical(other.offerInPercent, offerInPercent) ||
                other.offerInPercent == offerInPercent) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productName, price, indexNumber,
      picturePath, offerInPercent, productCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntityProductCopyWith<_$_EntityProduct> get copyWith =>
      __$$_EntityProductCopyWithImpl<_$_EntityProduct>(this, _$identity);
}

abstract class _EntityProduct extends EntityProduct {
  const factory _EntityProduct(
      {required final String productName,
      required final double price,
      required final int indexNumber,
      required final String picturePath,
      final int? offerInPercent,
      final int? productCount}) = _$_EntityProduct;
  const _EntityProduct._() : super._();

  @override
  String get productName;
  @override
  double get price;
  @override
  int get indexNumber;
  @override
  String get picturePath;
  @override
  int? get offerInPercent;
  @override
  int? get productCount;
  @override
  @JsonKey(ignore: true)
  _$$_EntityProductCopyWith<_$_EntityProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
