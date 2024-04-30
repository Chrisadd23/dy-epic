// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryProductEntity {
  String get productNumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Enum get productType => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get indexNumber => throw _privateConstructorUsedError;
  String get picturePath => throw _privateConstructorUsedError;
  int? get offerInPercent => throw _privateConstructorUsedError;
  int? get productCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryProductEntityCopyWith<CategoryProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductEntityCopyWith<$Res> {
  factory $CategoryProductEntityCopyWith(CategoryProductEntity value,
          $Res Function(CategoryProductEntity) then) =
      _$CategoryProductEntityCopyWithImpl<$Res, CategoryProductEntity>;
  @useResult
  $Res call(
      {String productNumber,
      String name,
      Enum productType,
      double price,
      int indexNumber,
      String picturePath,
      int? offerInPercent,
      int? productCount});
}

/// @nodoc
class _$CategoryProductEntityCopyWithImpl<$Res,
        $Val extends CategoryProductEntity>
    implements $CategoryProductEntityCopyWith<$Res> {
  _$CategoryProductEntityCopyWithImpl(this._value, this._then);

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
              as Enum,
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
abstract class _$$CategoryProductEntityImplCopyWith<$Res>
    implements $CategoryProductEntityCopyWith<$Res> {
  factory _$$CategoryProductEntityImplCopyWith(
          _$CategoryProductEntityImpl value,
          $Res Function(_$CategoryProductEntityImpl) then) =
      __$$CategoryProductEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productNumber,
      String name,
      Enum productType,
      double price,
      int indexNumber,
      String picturePath,
      int? offerInPercent,
      int? productCount});
}

/// @nodoc
class __$$CategoryProductEntityImplCopyWithImpl<$Res>
    extends _$CategoryProductEntityCopyWithImpl<$Res,
        _$CategoryProductEntityImpl>
    implements _$$CategoryProductEntityImplCopyWith<$Res> {
  __$$CategoryProductEntityImplCopyWithImpl(_$CategoryProductEntityImpl _value,
      $Res Function(_$CategoryProductEntityImpl) _then)
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
    return _then(_$CategoryProductEntityImpl(
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
              as Enum,
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

class _$CategoryProductEntityImpl extends _CategoryProductEntity {
  const _$CategoryProductEntityImpl(
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
  final Enum productType;
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
    return 'CategoryProductEntity(productNumber: $productNumber, name: $name, productType: $productType, price: $price, indexNumber: $indexNumber, picturePath: $picturePath, offerInPercent: $offerInPercent, productCount: $productCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductEntityImpl &&
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
  _$$CategoryProductEntityImplCopyWith<_$CategoryProductEntityImpl>
      get copyWith => __$$CategoryProductEntityImplCopyWithImpl<
          _$CategoryProductEntityImpl>(this, _$identity);
}

abstract class _CategoryProductEntity extends CategoryProductEntity {
  const factory _CategoryProductEntity(
      {required final String productNumber,
      required final String name,
      required final Enum productType,
      required final double price,
      required final int indexNumber,
      required final String picturePath,
      final int? offerInPercent,
      final int? productCount}) = _$CategoryProductEntityImpl;
  const _CategoryProductEntity._() : super._();

  @override
  String get productNumber;
  @override
  String get name;
  @override
  Enum get productType;
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
  _$$CategoryProductEntityImplCopyWith<_$CategoryProductEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
