// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_arbeitstische.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateWorkTable {
  ChoosenDateTime? get dateTime => throw _privateConstructorUsedError;
  ProductCategory? get productCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateWorkTableCopyWith<StateWorkTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateWorkTableCopyWith<$Res> {
  factory $StateWorkTableCopyWith(
          StateWorkTable value, $Res Function(StateWorkTable) then) =
      _$StateWorkTableCopyWithImpl<$Res, StateWorkTable>;
  @useResult
  $Res call({ChoosenDateTime? dateTime, ProductCategory? productCategory});

  $ChoosenDateTimeCopyWith<$Res>? get dateTime;
  $ProductCategoryCopyWith<$Res>? get productCategory;
}

/// @nodoc
class _$StateWorkTableCopyWithImpl<$Res, $Val extends StateWorkTable>
    implements $StateWorkTableCopyWith<$Res> {
  _$StateWorkTableCopyWithImpl(this._value, this._then);

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
abstract class _$$StateWorkTableImplCopyWith<$Res>
    implements $StateWorkTableCopyWith<$Res> {
  factory _$$StateWorkTableImplCopyWith(_$StateWorkTableImpl value,
          $Res Function(_$StateWorkTableImpl) then) =
      __$$StateWorkTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChoosenDateTime? dateTime, ProductCategory? productCategory});

  @override
  $ChoosenDateTimeCopyWith<$Res>? get dateTime;
  @override
  $ProductCategoryCopyWith<$Res>? get productCategory;
}

/// @nodoc
class __$$StateWorkTableImplCopyWithImpl<$Res>
    extends _$StateWorkTableCopyWithImpl<$Res, _$StateWorkTableImpl>
    implements _$$StateWorkTableImplCopyWith<$Res> {
  __$$StateWorkTableImplCopyWithImpl(
      _$StateWorkTableImpl _value, $Res Function(_$StateWorkTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
    Object? productCategory = freezed,
  }) {
    return _then(_$StateWorkTableImpl(
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

class _$StateWorkTableImpl extends _StateWorkTable {
  const _$StateWorkTableImpl({this.dateTime, this.productCategory}) : super._();

  @override
  final ChoosenDateTime? dateTime;
  @override
  final ProductCategory? productCategory;

  @override
  String toString() {
    return 'StateWorkTable(dateTime: $dateTime, productCategory: $productCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateWorkTableImpl &&
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
  _$$StateWorkTableImplCopyWith<_$StateWorkTableImpl> get copyWith =>
      __$$StateWorkTableImplCopyWithImpl<_$StateWorkTableImpl>(
          this, _$identity);
}

abstract class _StateWorkTable extends StateWorkTable {
  const factory _StateWorkTable(
      {final ChoosenDateTime? dateTime,
      final ProductCategory? productCategory}) = _$StateWorkTableImpl;
  const _StateWorkTable._() : super._();

  @override
  ChoosenDateTime? get dateTime;
  @override
  ProductCategory? get productCategory;
  @override
  @JsonKey(ignore: true)
  _$$StateWorkTableImplCopyWith<_$StateWorkTableImpl> get copyWith =>
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
abstract class _$$ChoosenDateTimeImplCopyWith<$Res>
    implements $ChoosenDateTimeCopyWith<$Res> {
  factory _$$ChoosenDateTimeImplCopyWith(_$ChoosenDateTimeImpl value,
          $Res Function(_$ChoosenDateTimeImpl) then) =
      __$$ChoosenDateTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? selectedDateTime});
}

/// @nodoc
class __$$ChoosenDateTimeImplCopyWithImpl<$Res>
    extends _$ChoosenDateTimeCopyWithImpl<$Res, _$ChoosenDateTimeImpl>
    implements _$$ChoosenDateTimeImplCopyWith<$Res> {
  __$$ChoosenDateTimeImplCopyWithImpl(
      _$ChoosenDateTimeImpl _value, $Res Function(_$ChoosenDateTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDateTime = freezed,
  }) {
    return _then(_$ChoosenDateTimeImpl(
      selectedDateTime: freezed == selectedDateTime
          ? _value.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ChoosenDateTimeImpl extends _ChoosenDateTime {
  const _$ChoosenDateTimeImpl({this.selectedDateTime}) : super._();

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
            other is _$ChoosenDateTimeImpl &&
            (identical(other.selectedDateTime, selectedDateTime) ||
                other.selectedDateTime == selectedDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoosenDateTimeImplCopyWith<_$ChoosenDateTimeImpl> get copyWith =>
      __$$ChoosenDateTimeImplCopyWithImpl<_$ChoosenDateTimeImpl>(
          this, _$identity);
}

abstract class _ChoosenDateTime extends ChoosenDateTime {
  const factory _ChoosenDateTime({final DateTime? selectedDateTime}) =
      _$ChoosenDateTimeImpl;
  const _ChoosenDateTime._() : super._();

  @override
  DateTime? get selectedDateTime;
  @override
  @JsonKey(ignore: true)
  _$$ChoosenDateTimeImplCopyWith<_$ChoosenDateTimeImpl> get copyWith =>
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
abstract class _$$ProductCategoryImplCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$$ProductCategoryImplCopyWith(_$ProductCategoryImpl value,
          $Res Function(_$ProductCategoryImpl) then) =
      __$$ProductCategoryImplCopyWithImpl<$Res>;
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
class __$$ProductCategoryImplCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res, _$ProductCategoryImpl>
    implements _$$ProductCategoryImplCopyWith<$Res> {
  __$$ProductCategoryImplCopyWithImpl(
      _$ProductCategoryImpl _value, $Res Function(_$ProductCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
    Object? choosenProduct = freezed,
  }) {
    return _then(_$ProductCategoryImpl(
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

class _$ProductCategoryImpl extends _ProductCategory {
  const _$ProductCategoryImpl(
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
            other is _$ProductCategoryImpl &&
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
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      __$$ProductCategoryImplCopyWithImpl<_$ProductCategoryImpl>(
          this, _$identity);
}

abstract class _ProductCategory extends ProductCategory {
  const factory _ProductCategory(
      {required final String categoryName,
      required final List<Product> listProduct,
      final Product? choosenProduct}) = _$ProductCategoryImpl;
  const _ProductCategory._() : super._();

  @override
  String get categoryName;
  @override
  List<Product> get listProduct;
  @override
  Product? get choosenProduct;
  @override
  @JsonKey(ignore: true)
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Product {
  String get productName => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get picturePath => throw _privateConstructorUsedError;
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
      String picturePath,
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
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productName,
      double price,
      String picturePath,
      int? offerInPercent,
      int? productCount});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? price = null,
    Object? picturePath = null,
    Object? offerInPercent = freezed,
    Object? productCount = freezed,
  }) {
    return _then(_$ProductImpl(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
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

class _$ProductImpl extends _Product {
  const _$ProductImpl(
      {required this.productName,
      required this.price,
      required this.picturePath,
      this.offerInPercent,
      this.productCount})
      : super._();

  @override
  final String productName;
  @override
  final double price;
  @override
  final String picturePath;
  @override
  final int? offerInPercent;
  @override
  final int? productCount;

  @override
  String toString() {
    return 'Product(productName: $productName, price: $price, picturePath: $picturePath, offerInPercent: $offerInPercent, productCount: $productCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.picturePath, picturePath) ||
                other.picturePath == picturePath) &&
            (identical(other.offerInPercent, offerInPercent) ||
                other.offerInPercent == offerInPercent) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productName, price, picturePath,
      offerInPercent, productCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {required final String productName,
      required final double price,
      required final String picturePath,
      final int? offerInPercent,
      final int? productCount}) = _$ProductImpl;
  const _Product._() : super._();

  @override
  String get productName;
  @override
  double get price;
  @override
  String get picturePath;
  @override
  int? get offerInPercent;
  @override
  int? get productCount;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
