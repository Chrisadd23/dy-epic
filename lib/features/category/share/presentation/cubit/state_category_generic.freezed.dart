// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_category_generic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateCategoryGeneric {
  ChoosenDateTime? get dateTime => throw _privateConstructorUsedError;
  ProductCategory? get productCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateCategoryGenericCopyWith<StateCategoryGeneric> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCategoryGenericCopyWith<$Res> {
  factory $StateCategoryGenericCopyWith(StateCategoryGeneric value,
          $Res Function(StateCategoryGeneric) then) =
      _$StateCategoryGenericCopyWithImpl<$Res, StateCategoryGeneric>;
  @useResult
  $Res call({ChoosenDateTime? dateTime, ProductCategory? productCategory});

  $ChoosenDateTimeCopyWith<$Res>? get dateTime;
  $ProductCategoryCopyWith<$Res>? get productCategory;
}

/// @nodoc
class _$StateCategoryGenericCopyWithImpl<$Res,
        $Val extends StateCategoryGeneric>
    implements $StateCategoryGenericCopyWith<$Res> {
  _$StateCategoryGenericCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
    Object? productCategory = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as ChoosenDateTime?,
      productCategory: freezed == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChoosenDateTimeCopyWith<$Res>? get dateTime {
    if (_value.dateTime == null) {
      return null;
    }

    return $ChoosenDateTimeCopyWith<$Res>(_value.dateTime!, (value) {
      return _then(_value.copyWith(dateTime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryCopyWith<$Res>? get productCategory {
    if (_value.productCategory == null) {
      return null;
    }

    return $ProductCategoryCopyWith<$Res>(_value.productCategory!, (value) {
      return _then(_value.copyWith(productCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StateCategoryGenericCopyWith<$Res>
    implements $StateCategoryGenericCopyWith<$Res> {
  factory _$$_StateCategoryGenericCopyWith(_$_StateCategoryGeneric value,
          $Res Function(_$_StateCategoryGeneric) then) =
      __$$_StateCategoryGenericCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChoosenDateTime? dateTime, ProductCategory? productCategory});

  @override
  $ChoosenDateTimeCopyWith<$Res>? get dateTime;
  @override
  $ProductCategoryCopyWith<$Res>? get productCategory;
}

/// @nodoc
class __$$_StateCategoryGenericCopyWithImpl<$Res>
    extends _$StateCategoryGenericCopyWithImpl<$Res, _$_StateCategoryGeneric>
    implements _$$_StateCategoryGenericCopyWith<$Res> {
  __$$_StateCategoryGenericCopyWithImpl(_$_StateCategoryGeneric _value,
      $Res Function(_$_StateCategoryGeneric) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
    Object? productCategory = freezed,
  }) {
    return _then(_$_StateCategoryGeneric(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as ChoosenDateTime?,
      productCategory: freezed == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
    ));
  }
}

/// @nodoc

class _$_StateCategoryGeneric extends _StateCategoryGeneric {
  const _$_StateCategoryGeneric({this.dateTime, this.productCategory})
      : super._();

  @override
  final ChoosenDateTime? dateTime;
  @override
  final ProductCategory? productCategory;

  @override
  String toString() {
    return 'StateCategoryGeneric(dateTime: $dateTime, productCategory: $productCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateCategoryGeneric &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.productCategory, productCategory) ||
                other.productCategory == productCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime, productCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCategoryGenericCopyWith<_$_StateCategoryGeneric> get copyWith =>
      __$$_StateCategoryGenericCopyWithImpl<_$_StateCategoryGeneric>(
          this, _$identity);
}

abstract class _StateCategoryGeneric extends StateCategoryGeneric {
  const factory _StateCategoryGeneric(
      {final ChoosenDateTime? dateTime,
      final ProductCategory? productCategory}) = _$_StateCategoryGeneric;
  const _StateCategoryGeneric._() : super._();

  @override
  ChoosenDateTime? get dateTime;
  @override
  ProductCategory? get productCategory;
  @override
  @JsonKey(ignore: true)
  _$$_StateCategoryGenericCopyWith<_$_StateCategoryGeneric> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChoosenDateTime {
  DateTime? get selectedDateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChoosenDateTimeCopyWith<ChoosenDateTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoosenDateTimeCopyWith<$Res> {
  factory $ChoosenDateTimeCopyWith(
          ChoosenDateTime value, $Res Function(ChoosenDateTime) then) =
      _$ChoosenDateTimeCopyWithImpl<$Res, ChoosenDateTime>;
  @useResult
  $Res call({DateTime? selectedDateTime});
}

/// @nodoc
class _$ChoosenDateTimeCopyWithImpl<$Res, $Val extends ChoosenDateTime>
    implements $ChoosenDateTimeCopyWith<$Res> {
  _$ChoosenDateTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      selectedDateTime: freezed == selectedDateTime
          ? _value.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChoosenDateTimeCopyWith<$Res>
    implements $ChoosenDateTimeCopyWith<$Res> {
  factory _$$_ChoosenDateTimeCopyWith(
          _$_ChoosenDateTime value, $Res Function(_$_ChoosenDateTime) then) =
      __$$_ChoosenDateTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? selectedDateTime});
}

/// @nodoc
class __$$_ChoosenDateTimeCopyWithImpl<$Res>
    extends _$ChoosenDateTimeCopyWithImpl<$Res, _$_ChoosenDateTime>
    implements _$$_ChoosenDateTimeCopyWith<$Res> {
  __$$_ChoosenDateTimeCopyWithImpl(
      _$_ChoosenDateTime _value, $Res Function(_$_ChoosenDateTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDateTime = freezed,
  }) {
    return _then(_$_ChoosenDateTime(
      selectedDateTime: freezed == selectedDateTime
          ? _value.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_ChoosenDateTime extends _ChoosenDateTime {
  const _$_ChoosenDateTime({this.selectedDateTime}) : super._();

  @override
  final DateTime? selectedDateTime;

  @override
  String toString() {
    return 'ChoosenDateTime(selectedDateTime: $selectedDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoosenDateTime &&
            (identical(other.selectedDateTime, selectedDateTime) ||
                other.selectedDateTime == selectedDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoosenDateTimeCopyWith<_$_ChoosenDateTime> get copyWith =>
      __$$_ChoosenDateTimeCopyWithImpl<_$_ChoosenDateTime>(this, _$identity);
}

abstract class _ChoosenDateTime extends ChoosenDateTime {
  const factory _ChoosenDateTime({final DateTime? selectedDateTime}) =
      _$_ChoosenDateTime;
  const _ChoosenDateTime._() : super._();

  @override
  DateTime? get selectedDateTime;
  @override
  @JsonKey(ignore: true)
  _$$_ChoosenDateTimeCopyWith<_$_ChoosenDateTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductCategory {
  String get categoryName => throw _privateConstructorUsedError;
  List<Product> get listProduct => throw _privateConstructorUsedError;
  Product? get choosenProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCategoryCopyWith<ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
          ProductCategory value, $Res Function(ProductCategory) then) =
      _$ProductCategoryCopyWithImpl<$Res, ProductCategory>;
  @useResult
  $Res call(
      {String categoryName,
      List<Product> listProduct,
      Product? choosenProduct});

  $ProductCopyWith<$Res>? get choosenProduct;
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res, $Val extends ProductCategory>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
    Object? choosenProduct = freezed,
  }) {
    return _then(_value.copyWith(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _value.listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      choosenProduct: freezed == choosenProduct
          ? _value.choosenProduct
          : choosenProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get choosenProduct {
    if (_value.choosenProduct == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.choosenProduct!, (value) {
      return _then(_value.copyWith(choosenProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductCategoryCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$$_ProductCategoryCopyWith(
          _$_ProductCategory value, $Res Function(_$_ProductCategory) then) =
      __$$_ProductCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String categoryName,
      List<Product> listProduct,
      Product? choosenProduct});

  @override
  $ProductCopyWith<$Res>? get choosenProduct;
}

/// @nodoc
class __$$_ProductCategoryCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res, _$_ProductCategory>
    implements _$$_ProductCategoryCopyWith<$Res> {
  __$$_ProductCategoryCopyWithImpl(
      _$_ProductCategory _value, $Res Function(_$_ProductCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
    Object? choosenProduct = freezed,
  }) {
    return _then(_$_ProductCategory(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      choosenProduct: freezed == choosenProduct
          ? _value.choosenProduct
          : choosenProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc

class _$_ProductCategory extends _ProductCategory {
  const _$_ProductCategory(
      {required this.categoryName,
      required final List<Product> listProduct,
      this.choosenProduct})
      : _listProduct = listProduct,
        super._();

  @override
  final String categoryName;
  final List<Product> _listProduct;
  @override
  List<Product> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  final Product? choosenProduct;

  @override
  String toString() {
    return 'ProductCategory(categoryName: $categoryName, listProduct: $listProduct, choosenProduct: $choosenProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCategory &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct) &&
            (identical(other.choosenProduct, choosenProduct) ||
                other.choosenProduct == choosenProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryName,
      const DeepCollectionEquality().hash(_listProduct), choosenProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCategoryCopyWith<_$_ProductCategory> get copyWith =>
      __$$_ProductCategoryCopyWithImpl<_$_ProductCategory>(this, _$identity);
}

abstract class _ProductCategory extends ProductCategory {
  const factory _ProductCategory(
      {required final String categoryName,
      required final List<Product> listProduct,
      final Product? choosenProduct}) = _$_ProductCategory;
  const _ProductCategory._() : super._();

  @override
  String get categoryName;
  @override
  List<Product> get listProduct;
  @override
  Product? get choosenProduct;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCategoryCopyWith<_$_ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Product {
  String get productName => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int? get offerInPercent => throw _privateConstructorUsedError;
  int? get productCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String productName,
      double price,
      int? offerInPercent,
      int? productCount});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? price = null,
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
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productName,
      double price,
      int? offerInPercent,
      int? productCount});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? price = null,
    Object? offerInPercent = freezed,
    Object? productCount = freezed,
  }) {
    return _then(_$_Product(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
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

class _$_Product extends _Product {
  const _$_Product(
      {required this.productName,
      required this.price,
      this.offerInPercent,
      this.productCount})
      : super._();

  @override
  final String productName;
  @override
  final double price;
  @override
  final int? offerInPercent;
  @override
  final int? productCount;

  @override
  String toString() {
    return 'Product(productName: $productName, price: $price, offerInPercent: $offerInPercent, productCount: $productCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.offerInPercent, offerInPercent) ||
                other.offerInPercent == offerInPercent) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, productName, price, offerInPercent, productCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {required final String productName,
      required final double price,
      final int? offerInPercent,
      final int? productCount}) = _$_Product;
  const _Product._() : super._();

  @override
  String get productName;
  @override
  double get price;
  @override
  int? get offerInPercent;
  @override
  int? get productCount;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
