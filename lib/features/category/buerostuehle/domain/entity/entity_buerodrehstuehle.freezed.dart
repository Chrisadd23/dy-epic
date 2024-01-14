// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_buerodrehstuehle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntityBuerodrehstuehle {
  String get categoryName => throw _privateConstructorUsedError;
  List<EntityProduct> get listProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityBuerodrehstuehleCopyWith<EntityBuerodrehstuehle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityBuerodrehstuehleCopyWith<$Res> {
  factory $EntityBuerodrehstuehleCopyWith(EntityBuerodrehstuehle value,
          $Res Function(EntityBuerodrehstuehle) then) =
      _$EntityBuerodrehstuehleCopyWithImpl<$Res, EntityBuerodrehstuehle>;
  @useResult
  $Res call({String categoryName, List<EntityProduct> listProduct});
}

/// @nodoc
class _$EntityBuerodrehstuehleCopyWithImpl<$Res,
        $Val extends EntityBuerodrehstuehle>
    implements $EntityBuerodrehstuehleCopyWith<$Res> {
  _$EntityBuerodrehstuehleCopyWithImpl(this._value, this._then);

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
abstract class _$$EntityBuerodrehstuehleImplCopyWith<$Res>
    implements $EntityBuerodrehstuehleCopyWith<$Res> {
  factory _$$EntityBuerodrehstuehleImplCopyWith(
          _$EntityBuerodrehstuehleImpl value,
          $Res Function(_$EntityBuerodrehstuehleImpl) then) =
      __$$EntityBuerodrehstuehleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryName, List<EntityProduct> listProduct});
}

/// @nodoc
class __$$EntityBuerodrehstuehleImplCopyWithImpl<$Res>
    extends _$EntityBuerodrehstuehleCopyWithImpl<$Res,
        _$EntityBuerodrehstuehleImpl>
    implements _$$EntityBuerodrehstuehleImplCopyWith<$Res> {
  __$$EntityBuerodrehstuehleImplCopyWithImpl(
      _$EntityBuerodrehstuehleImpl _value,
      $Res Function(_$EntityBuerodrehstuehleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
  }) {
    return _then(_$EntityBuerodrehstuehleImpl(
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

class _$EntityBuerodrehstuehleImpl extends _EntityBuerodrehstuehle {
  const _$EntityBuerodrehstuehleImpl(
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
    return 'EntityBuerodrehstuehle(categoryName: $categoryName, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityBuerodrehstuehleImpl &&
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
  _$$EntityBuerodrehstuehleImplCopyWith<_$EntityBuerodrehstuehleImpl>
      get copyWith => __$$EntityBuerodrehstuehleImplCopyWithImpl<
          _$EntityBuerodrehstuehleImpl>(this, _$identity);
}

abstract class _EntityBuerodrehstuehle extends EntityBuerodrehstuehle {
  const factory _EntityBuerodrehstuehle(
          {required final String categoryName,
          required final List<EntityProduct> listProduct}) =
      _$EntityBuerodrehstuehleImpl;
  const _EntityBuerodrehstuehle._() : super._();

  @override
  String get categoryName;
  @override
  List<EntityProduct> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$EntityBuerodrehstuehleImplCopyWith<_$EntityBuerodrehstuehleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntityProduct {
  String get productNumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  EnumCategoryOfficeChair get productType => throw _privateConstructorUsedError;
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
      {String productNumber,
      String name,
      EnumCategoryOfficeChair productType,
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
    Object? productNumber = null,
    Object? name = null,
    Object? productType = null,
    Object? price = null,
    Object? indexNumber = null,
    Object? picturePath = null,
    Object? offerInPercent = freezed,
    Object? productCount = freezed,
  }) {
    return _then(_value.copyWith(
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as EnumCategoryOfficeChair,
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
abstract class _$$EntityProductImplCopyWith<$Res>
    implements $EntityProductCopyWith<$Res> {
  factory _$$EntityProductImplCopyWith(
          _$EntityProductImpl value, $Res Function(_$EntityProductImpl) then) =
      __$$EntityProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productNumber,
      String name,
      EnumCategoryOfficeChair productType,
      double price,
      int indexNumber,
      String picturePath,
      int? offerInPercent,
      int? productCount});
}

/// @nodoc
class __$$EntityProductImplCopyWithImpl<$Res>
    extends _$EntityProductCopyWithImpl<$Res, _$EntityProductImpl>
    implements _$$EntityProductImplCopyWith<$Res> {
  __$$EntityProductImplCopyWithImpl(
      _$EntityProductImpl _value, $Res Function(_$EntityProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productNumber = null,
    Object? name = null,
    Object? productType = null,
    Object? price = null,
    Object? indexNumber = null,
    Object? picturePath = null,
    Object? offerInPercent = freezed,
    Object? productCount = freezed,
  }) {
    return _then(_$EntityProductImpl(
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as EnumCategoryOfficeChair,
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

class _$EntityProductImpl extends _EntityProduct {
  const _$EntityProductImpl(
      {required this.productNumber,
      required this.name,
      required this.productType,
      required this.price,
      required this.indexNumber,
      required this.picturePath,
      this.offerInPercent,
      this.productCount})
      : super._();

  @override
  final String productNumber;
  @override
  final String name;
  @override
  final EnumCategoryOfficeChair productType;
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
    return 'EntityProduct(productNumber: $productNumber, name: $name, productType: $productType, price: $price, indexNumber: $indexNumber, picturePath: $picturePath, offerInPercent: $offerInPercent, productCount: $productCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityProductImpl &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
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
  int get hashCode => Object.hash(runtimeType, productNumber, name, productType,
      price, indexNumber, picturePath, offerInPercent, productCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityProductImplCopyWith<_$EntityProductImpl> get copyWith =>
      __$$EntityProductImplCopyWithImpl<_$EntityProductImpl>(this, _$identity);
}

abstract class _EntityProduct extends EntityProduct {
  const factory _EntityProduct(
      {required final String productNumber,
      required final String name,
      required final EnumCategoryOfficeChair productType,
      required final double price,
      required final int indexNumber,
      required final String picturePath,
      final int? offerInPercent,
      final int? productCount}) = _$EntityProductImpl;
  const _EntityProduct._() : super._();

  @override
  String get productNumber;
  @override
  String get name;
  @override
  EnumCategoryOfficeChair get productType;
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
  _$$EntityProductImplCopyWith<_$EntityProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
