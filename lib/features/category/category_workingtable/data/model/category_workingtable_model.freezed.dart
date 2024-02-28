// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_workingtable_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryWorkingtableModel {
  String get categoryName => throw _privateConstructorUsedError;
  List<CategoryWorkingtableProductModel> get listProduct =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryWorkingtableModelCopyWith<CategoryWorkingtableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWorkingtableModelCopyWith<$Res> {
  factory $CategoryWorkingtableModelCopyWith(CategoryWorkingtableModel value,
          $Res Function(CategoryWorkingtableModel) then) =
      _$CategoryWorkingtableModelCopyWithImpl<$Res, CategoryWorkingtableModel>;
  @useResult
  $Res call(
      {String categoryName,
      List<CategoryWorkingtableProductModel> listProduct});
}

/// @nodoc
class _$CategoryWorkingtableModelCopyWithImpl<$Res,
        $Val extends CategoryWorkingtableModel>
    implements $CategoryWorkingtableModelCopyWith<$Res> {
  _$CategoryWorkingtableModelCopyWithImpl(this._value, this._then);

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
              as List<CategoryWorkingtableProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryWorkingtableModelImplCopyWith<$Res>
    implements $CategoryWorkingtableModelCopyWith<$Res> {
  factory _$$CategoryWorkingtableModelImplCopyWith(
          _$CategoryWorkingtableModelImpl value,
          $Res Function(_$CategoryWorkingtableModelImpl) then) =
      __$$CategoryWorkingtableModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String categoryName,
      List<CategoryWorkingtableProductModel> listProduct});
}

/// @nodoc
class __$$CategoryWorkingtableModelImplCopyWithImpl<$Res>
    extends _$CategoryWorkingtableModelCopyWithImpl<$Res,
        _$CategoryWorkingtableModelImpl>
    implements _$$CategoryWorkingtableModelImplCopyWith<$Res> {
  __$$CategoryWorkingtableModelImplCopyWithImpl(
      _$CategoryWorkingtableModelImpl _value,
      $Res Function(_$CategoryWorkingtableModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
  }) {
    return _then(_$CategoryWorkingtableModelImpl(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<CategoryWorkingtableProductModel>,
    ));
  }
}

/// @nodoc

class _$CategoryWorkingtableModelImpl extends _CategoryWorkingtableModel {
  const _$CategoryWorkingtableModelImpl(
      {required this.categoryName,
      required final List<CategoryWorkingtableProductModel> listProduct})
      : _listProduct = listProduct,
        super._();

  @override
  final String categoryName;
  final List<CategoryWorkingtableProductModel> _listProduct;
  @override
  List<CategoryWorkingtableProductModel> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'CategoryWorkingtableModel(categoryName: $categoryName, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWorkingtableModelImpl &&
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
  _$$CategoryWorkingtableModelImplCopyWith<_$CategoryWorkingtableModelImpl>
      get copyWith => __$$CategoryWorkingtableModelImplCopyWithImpl<
          _$CategoryWorkingtableModelImpl>(this, _$identity);
}

abstract class _CategoryWorkingtableModel extends CategoryWorkingtableModel {
  const factory _CategoryWorkingtableModel(
          {required final String categoryName,
          required final List<CategoryWorkingtableProductModel> listProduct}) =
      _$CategoryWorkingtableModelImpl;
  const _CategoryWorkingtableModel._() : super._();

  @override
  String get categoryName;
  @override
  List<CategoryWorkingtableProductModel> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$CategoryWorkingtableModelImplCopyWith<_$CategoryWorkingtableModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryWorkingtableProductModel {
  String get productName => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get indexNumber => throw _privateConstructorUsedError;
  int? get offerInPercent => throw _privateConstructorUsedError;
  int? get productCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryWorkingtableProductModelCopyWith<CategoryWorkingtableProductModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWorkingtableProductModelCopyWith<$Res> {
  factory $CategoryWorkingtableProductModelCopyWith(
          CategoryWorkingtableProductModel value,
          $Res Function(CategoryWorkingtableProductModel) then) =
      _$CategoryWorkingtableProductModelCopyWithImpl<$Res,
          CategoryWorkingtableProductModel>;
  @useResult
  $Res call(
      {String productName,
      double price,
      int indexNumber,
      int? offerInPercent,
      int? productCount});
}

/// @nodoc
class _$CategoryWorkingtableProductModelCopyWithImpl<$Res,
        $Val extends CategoryWorkingtableProductModel>
    implements $CategoryWorkingtableProductModelCopyWith<$Res> {
  _$CategoryWorkingtableProductModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CategoryWorkingtableProductModelImplCopyWith<$Res>
    implements $CategoryWorkingtableProductModelCopyWith<$Res> {
  factory _$$CategoryWorkingtableProductModelImplCopyWith(
          _$CategoryWorkingtableProductModelImpl value,
          $Res Function(_$CategoryWorkingtableProductModelImpl) then) =
      __$$CategoryWorkingtableProductModelImplCopyWithImpl<$Res>;
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
class __$$CategoryWorkingtableProductModelImplCopyWithImpl<$Res>
    extends _$CategoryWorkingtableProductModelCopyWithImpl<$Res,
        _$CategoryWorkingtableProductModelImpl>
    implements _$$CategoryWorkingtableProductModelImplCopyWith<$Res> {
  __$$CategoryWorkingtableProductModelImplCopyWithImpl(
      _$CategoryWorkingtableProductModelImpl _value,
      $Res Function(_$CategoryWorkingtableProductModelImpl) _then)
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
    return _then(_$CategoryWorkingtableProductModelImpl(
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

class _$CategoryWorkingtableProductModelImpl
    extends _CategoryWorkingtableProductModel {
  const _$CategoryWorkingtableProductModelImpl(
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
    return 'CategoryWorkingtableProductModel(productName: $productName, price: $price, indexNumber: $indexNumber, offerInPercent: $offerInPercent, productCount: $productCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWorkingtableProductModelImpl &&
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
  _$$CategoryWorkingtableProductModelImplCopyWith<
          _$CategoryWorkingtableProductModelImpl>
      get copyWith => __$$CategoryWorkingtableProductModelImplCopyWithImpl<
          _$CategoryWorkingtableProductModelImpl>(this, _$identity);
}

abstract class _CategoryWorkingtableProductModel
    extends CategoryWorkingtableProductModel {
  const factory _CategoryWorkingtableProductModel(
      {required final String productName,
      required final double price,
      required final int indexNumber,
      final int? offerInPercent,
      final int? productCount}) = _$CategoryWorkingtableProductModelImpl;
  const _CategoryWorkingtableProductModel._() : super._();

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
  _$$CategoryWorkingtableProductModelImplCopyWith<
          _$CategoryWorkingtableProductModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
