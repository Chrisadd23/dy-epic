// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_workingtable_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryWorkingTableEntity {
  String get categoryName => throw _privateConstructorUsedError;
  List<CategoryWorkingTableProductEntity> get listProduct =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryWorkingTableEntityCopyWith<CategoryWorkingTableEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWorkingTableEntityCopyWith<$Res> {
  factory $CategoryWorkingTableEntityCopyWith(CategoryWorkingTableEntity value,
          $Res Function(CategoryWorkingTableEntity) then) =
      _$CategoryWorkingTableEntityCopyWithImpl<$Res,
          CategoryWorkingTableEntity>;
  @useResult
  $Res call(
      {String categoryName,
      List<CategoryWorkingTableProductEntity> listProduct});
}

/// @nodoc
class _$CategoryWorkingTableEntityCopyWithImpl<$Res,
        $Val extends CategoryWorkingTableEntity>
    implements $CategoryWorkingTableEntityCopyWith<$Res> {
  _$CategoryWorkingTableEntityCopyWithImpl(this._value, this._then);

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
              as List<CategoryWorkingTableProductEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryWorkingTableEntityImplCopyWith<$Res>
    implements $CategoryWorkingTableEntityCopyWith<$Res> {
  factory _$$CategoryWorkingTableEntityImplCopyWith(
          _$CategoryWorkingTableEntityImpl value,
          $Res Function(_$CategoryWorkingTableEntityImpl) then) =
      __$$CategoryWorkingTableEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String categoryName,
      List<CategoryWorkingTableProductEntity> listProduct});
}

/// @nodoc
class __$$CategoryWorkingTableEntityImplCopyWithImpl<$Res>
    extends _$CategoryWorkingTableEntityCopyWithImpl<$Res,
        _$CategoryWorkingTableEntityImpl>
    implements _$$CategoryWorkingTableEntityImplCopyWith<$Res> {
  __$$CategoryWorkingTableEntityImplCopyWithImpl(
      _$CategoryWorkingTableEntityImpl _value,
      $Res Function(_$CategoryWorkingTableEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
  }) {
    return _then(_$CategoryWorkingTableEntityImpl(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<CategoryWorkingTableProductEntity>,
    ));
  }
}

/// @nodoc

class _$CategoryWorkingTableEntityImpl implements _CategoryWorkingTableEntity {
  const _$CategoryWorkingTableEntityImpl(
      {required this.categoryName,
      required final List<CategoryWorkingTableProductEntity> listProduct})
      : _listProduct = listProduct;

  @override
  final String categoryName;
  final List<CategoryWorkingTableProductEntity> _listProduct;
  @override
  List<CategoryWorkingTableProductEntity> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'CategoryWorkingTableEntity(categoryName: $categoryName, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWorkingTableEntityImpl &&
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
  _$$CategoryWorkingTableEntityImplCopyWith<_$CategoryWorkingTableEntityImpl>
      get copyWith => __$$CategoryWorkingTableEntityImplCopyWithImpl<
          _$CategoryWorkingTableEntityImpl>(this, _$identity);
}

abstract class _CategoryWorkingTableEntity
    implements CategoryWorkingTableEntity {
  const factory _CategoryWorkingTableEntity(
          {required final String categoryName,
          required final List<CategoryWorkingTableProductEntity> listProduct}) =
      _$CategoryWorkingTableEntityImpl;

  @override
  String get categoryName;
  @override
  List<CategoryWorkingTableProductEntity> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$CategoryWorkingTableEntityImplCopyWith<_$CategoryWorkingTableEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryWorkingTableProductEntity {
  CategoryProductEntity get categoryProductEntity =>
      throw _privateConstructorUsedError;
  List<CategoryWorkingTableFrameColor> get workingTableFrameColors =>
      throw _privateConstructorUsedError;
  List<CategoryWorkingTableProductPricePerSize> get pricePerSize =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryWorkingTableProductEntityCopyWith<CategoryWorkingTableProductEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWorkingTableProductEntityCopyWith<$Res> {
  factory $CategoryWorkingTableProductEntityCopyWith(
          CategoryWorkingTableProductEntity value,
          $Res Function(CategoryWorkingTableProductEntity) then) =
      _$CategoryWorkingTableProductEntityCopyWithImpl<$Res,
          CategoryWorkingTableProductEntity>;
  @useResult
  $Res call(
      {CategoryProductEntity categoryProductEntity,
      List<CategoryWorkingTableFrameColor> workingTableFrameColors,
      List<CategoryWorkingTableProductPricePerSize> pricePerSize});

  $CategoryProductEntityCopyWith<$Res> get categoryProductEntity;
}

/// @nodoc
class _$CategoryWorkingTableProductEntityCopyWithImpl<$Res,
        $Val extends CategoryWorkingTableProductEntity>
    implements $CategoryWorkingTableProductEntityCopyWith<$Res> {
  _$CategoryWorkingTableProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryProductEntity = null,
    Object? workingTableFrameColors = null,
    Object? pricePerSize = null,
  }) {
    return _then(_value.copyWith(
      categoryProductEntity: null == categoryProductEntity
          ? _value.categoryProductEntity
          : categoryProductEntity // ignore: cast_nullable_to_non_nullable
              as CategoryProductEntity,
      workingTableFrameColors: null == workingTableFrameColors
          ? _value.workingTableFrameColors
          : workingTableFrameColors // ignore: cast_nullable_to_non_nullable
              as List<CategoryWorkingTableFrameColor>,
      pricePerSize: null == pricePerSize
          ? _value.pricePerSize
          : pricePerSize // ignore: cast_nullable_to_non_nullable
              as List<CategoryWorkingTableProductPricePerSize>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryProductEntityCopyWith<$Res> get categoryProductEntity {
    return $CategoryProductEntityCopyWith<$Res>(_value.categoryProductEntity,
        (value) {
      return _then(_value.copyWith(categoryProductEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryWorkingtableProductEntityImplCopyWith<$Res>
    implements $CategoryWorkingTableProductEntityCopyWith<$Res> {
  factory _$$CategoryWorkingtableProductEntityImplCopyWith(
          _$CategoryWorkingtableProductEntityImpl value,
          $Res Function(_$CategoryWorkingtableProductEntityImpl) then) =
      __$$CategoryWorkingtableProductEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CategoryProductEntity categoryProductEntity,
      List<CategoryWorkingTableFrameColor> workingTableFrameColors,
      List<CategoryWorkingTableProductPricePerSize> pricePerSize});

  @override
  $CategoryProductEntityCopyWith<$Res> get categoryProductEntity;
}

/// @nodoc
class __$$CategoryWorkingtableProductEntityImplCopyWithImpl<$Res>
    extends _$CategoryWorkingTableProductEntityCopyWithImpl<$Res,
        _$CategoryWorkingtableProductEntityImpl>
    implements _$$CategoryWorkingtableProductEntityImplCopyWith<$Res> {
  __$$CategoryWorkingtableProductEntityImplCopyWithImpl(
      _$CategoryWorkingtableProductEntityImpl _value,
      $Res Function(_$CategoryWorkingtableProductEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryProductEntity = null,
    Object? workingTableFrameColors = null,
    Object? pricePerSize = null,
  }) {
    return _then(_$CategoryWorkingtableProductEntityImpl(
      categoryProductEntity: null == categoryProductEntity
          ? _value.categoryProductEntity
          : categoryProductEntity // ignore: cast_nullable_to_non_nullable
              as CategoryProductEntity,
      workingTableFrameColors: null == workingTableFrameColors
          ? _value._workingTableFrameColors
          : workingTableFrameColors // ignore: cast_nullable_to_non_nullable
              as List<CategoryWorkingTableFrameColor>,
      pricePerSize: null == pricePerSize
          ? _value._pricePerSize
          : pricePerSize // ignore: cast_nullable_to_non_nullable
              as List<CategoryWorkingTableProductPricePerSize>,
    ));
  }
}

/// @nodoc

class _$CategoryWorkingtableProductEntityImpl
    implements _CategoryWorkingtableProductEntity {
  const _$CategoryWorkingtableProductEntityImpl(
      {required this.categoryProductEntity,
      required final List<CategoryWorkingTableFrameColor>
          workingTableFrameColors,
      required final List<CategoryWorkingTableProductPricePerSize>
          pricePerSize})
      : _workingTableFrameColors = workingTableFrameColors,
        _pricePerSize = pricePerSize;

  @override
  final CategoryProductEntity categoryProductEntity;
  final List<CategoryWorkingTableFrameColor> _workingTableFrameColors;
  @override
  List<CategoryWorkingTableFrameColor> get workingTableFrameColors {
    if (_workingTableFrameColors is EqualUnmodifiableListView)
      return _workingTableFrameColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workingTableFrameColors);
  }

  final List<CategoryWorkingTableProductPricePerSize> _pricePerSize;
  @override
  List<CategoryWorkingTableProductPricePerSize> get pricePerSize {
    if (_pricePerSize is EqualUnmodifiableListView) return _pricePerSize;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pricePerSize);
  }

  @override
  String toString() {
    return 'CategoryWorkingTableProductEntity(categoryProductEntity: $categoryProductEntity, workingTableFrameColors: $workingTableFrameColors, pricePerSize: $pricePerSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWorkingtableProductEntityImpl &&
            (identical(other.categoryProductEntity, categoryProductEntity) ||
                other.categoryProductEntity == categoryProductEntity) &&
            const DeepCollectionEquality().equals(
                other._workingTableFrameColors, _workingTableFrameColors) &&
            const DeepCollectionEquality()
                .equals(other._pricePerSize, _pricePerSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryProductEntity,
      const DeepCollectionEquality().hash(_workingTableFrameColors),
      const DeepCollectionEquality().hash(_pricePerSize));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryWorkingtableProductEntityImplCopyWith<
          _$CategoryWorkingtableProductEntityImpl>
      get copyWith => __$$CategoryWorkingtableProductEntityImplCopyWithImpl<
          _$CategoryWorkingtableProductEntityImpl>(this, _$identity);
}

abstract class _CategoryWorkingtableProductEntity
    implements CategoryWorkingTableProductEntity {
  const factory _CategoryWorkingtableProductEntity(
      {required final CategoryProductEntity categoryProductEntity,
      required final List<CategoryWorkingTableFrameColor>
          workingTableFrameColors,
      required final List<CategoryWorkingTableProductPricePerSize>
          pricePerSize}) = _$CategoryWorkingtableProductEntityImpl;

  @override
  CategoryProductEntity get categoryProductEntity;
  @override
  List<CategoryWorkingTableFrameColor> get workingTableFrameColors;
  @override
  List<CategoryWorkingTableProductPricePerSize> get pricePerSize;
  @override
  @JsonKey(ignore: true)
  _$$CategoryWorkingtableProductEntityImplCopyWith<
          _$CategoryWorkingtableProductEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryWorkingTableFrameColor {
  String get colorName => throw _privateConstructorUsedError;
  String get hexValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryWorkingTableFrameColorCopyWith<CategoryWorkingTableFrameColor>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWorkingTableFrameColorCopyWith<$Res> {
  factory $CategoryWorkingTableFrameColorCopyWith(
          CategoryWorkingTableFrameColor value,
          $Res Function(CategoryWorkingTableFrameColor) then) =
      _$CategoryWorkingTableFrameColorCopyWithImpl<$Res,
          CategoryWorkingTableFrameColor>;
  @useResult
  $Res call({String colorName, String hexValue});
}

/// @nodoc
class _$CategoryWorkingTableFrameColorCopyWithImpl<$Res,
        $Val extends CategoryWorkingTableFrameColor>
    implements $CategoryWorkingTableFrameColorCopyWith<$Res> {
  _$CategoryWorkingTableFrameColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorName = null,
    Object? hexValue = null,
  }) {
    return _then(_value.copyWith(
      colorName: null == colorName
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String,
      hexValue: null == hexValue
          ? _value.hexValue
          : hexValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryWorkingTableFrameColorImplCopyWith<$Res>
    implements $CategoryWorkingTableFrameColorCopyWith<$Res> {
  factory _$$CategoryWorkingTableFrameColorImplCopyWith(
          _$CategoryWorkingTableFrameColorImpl value,
          $Res Function(_$CategoryWorkingTableFrameColorImpl) then) =
      __$$CategoryWorkingTableFrameColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String colorName, String hexValue});
}

/// @nodoc
class __$$CategoryWorkingTableFrameColorImplCopyWithImpl<$Res>
    extends _$CategoryWorkingTableFrameColorCopyWithImpl<$Res,
        _$CategoryWorkingTableFrameColorImpl>
    implements _$$CategoryWorkingTableFrameColorImplCopyWith<$Res> {
  __$$CategoryWorkingTableFrameColorImplCopyWithImpl(
      _$CategoryWorkingTableFrameColorImpl _value,
      $Res Function(_$CategoryWorkingTableFrameColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorName = null,
    Object? hexValue = null,
  }) {
    return _then(_$CategoryWorkingTableFrameColorImpl(
      colorName: null == colorName
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String,
      hexValue: null == hexValue
          ? _value.hexValue
          : hexValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryWorkingTableFrameColorImpl
    implements _CategoryWorkingTableFrameColor {
  const _$CategoryWorkingTableFrameColorImpl(
      {required this.colorName, required this.hexValue});

  @override
  final String colorName;
  @override
  final String hexValue;

  @override
  String toString() {
    return 'CategoryWorkingTableFrameColor(colorName: $colorName, hexValue: $hexValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWorkingTableFrameColorImpl &&
            (identical(other.colorName, colorName) ||
                other.colorName == colorName) &&
            (identical(other.hexValue, hexValue) ||
                other.hexValue == hexValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colorName, hexValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryWorkingTableFrameColorImplCopyWith<
          _$CategoryWorkingTableFrameColorImpl>
      get copyWith => __$$CategoryWorkingTableFrameColorImplCopyWithImpl<
          _$CategoryWorkingTableFrameColorImpl>(this, _$identity);
}

abstract class _CategoryWorkingTableFrameColor
    implements CategoryWorkingTableFrameColor {
  const factory _CategoryWorkingTableFrameColor(
      {required final String colorName,
      required final String hexValue}) = _$CategoryWorkingTableFrameColorImpl;

  @override
  String get colorName;
  @override
  String get hexValue;
  @override
  @JsonKey(ignore: true)
  _$$CategoryWorkingTableFrameColorImplCopyWith<
          _$CategoryWorkingTableFrameColorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryWorkingTableProductPricePerSize {
  CategoryWorkingTablePricePerSizeEnum get pricePerSizeEnum =>
      throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryWorkingTableProductPricePerSizeCopyWith<
          CategoryWorkingTableProductPricePerSize>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWorkingTableProductPricePerSizeCopyWith<$Res> {
  factory $CategoryWorkingTableProductPricePerSizeCopyWith(
          CategoryWorkingTableProductPricePerSize value,
          $Res Function(CategoryWorkingTableProductPricePerSize) then) =
      _$CategoryWorkingTableProductPricePerSizeCopyWithImpl<$Res,
          CategoryWorkingTableProductPricePerSize>;
  @useResult
  $Res call(
      {CategoryWorkingTablePricePerSizeEnum pricePerSizeEnum,
      int width,
      int height,
      double price});
}

/// @nodoc
class _$CategoryWorkingTableProductPricePerSizeCopyWithImpl<$Res,
        $Val extends CategoryWorkingTableProductPricePerSize>
    implements $CategoryWorkingTableProductPricePerSizeCopyWith<$Res> {
  _$CategoryWorkingTableProductPricePerSizeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pricePerSizeEnum = null,
    Object? width = null,
    Object? height = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      pricePerSizeEnum: null == pricePerSizeEnum
          ? _value.pricePerSizeEnum
          : pricePerSizeEnum // ignore: cast_nullable_to_non_nullable
              as CategoryWorkingTablePricePerSizeEnum,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryWorkingTableProductPricePerSizeImplCopyWith<$Res>
    implements $CategoryWorkingTableProductPricePerSizeCopyWith<$Res> {
  factory _$$CategoryWorkingTableProductPricePerSizeImplCopyWith(
          _$CategoryWorkingTableProductPricePerSizeImpl value,
          $Res Function(_$CategoryWorkingTableProductPricePerSizeImpl) then) =
      __$$CategoryWorkingTableProductPricePerSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CategoryWorkingTablePricePerSizeEnum pricePerSizeEnum,
      int width,
      int height,
      double price});
}

/// @nodoc
class __$$CategoryWorkingTableProductPricePerSizeImplCopyWithImpl<$Res>
    extends _$CategoryWorkingTableProductPricePerSizeCopyWithImpl<$Res,
        _$CategoryWorkingTableProductPricePerSizeImpl>
    implements _$$CategoryWorkingTableProductPricePerSizeImplCopyWith<$Res> {
  __$$CategoryWorkingTableProductPricePerSizeImplCopyWithImpl(
      _$CategoryWorkingTableProductPricePerSizeImpl _value,
      $Res Function(_$CategoryWorkingTableProductPricePerSizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pricePerSizeEnum = null,
    Object? width = null,
    Object? height = null,
    Object? price = null,
  }) {
    return _then(_$CategoryWorkingTableProductPricePerSizeImpl(
      pricePerSizeEnum: null == pricePerSizeEnum
          ? _value.pricePerSizeEnum
          : pricePerSizeEnum // ignore: cast_nullable_to_non_nullable
              as CategoryWorkingTablePricePerSizeEnum,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CategoryWorkingTableProductPricePerSizeImpl
    implements _CategoryWorkingTableProductPricePerSize {
  const _$CategoryWorkingTableProductPricePerSizeImpl(
      {required this.pricePerSizeEnum,
      required this.width,
      required this.height,
      required this.price});

  @override
  final CategoryWorkingTablePricePerSizeEnum pricePerSizeEnum;
  @override
  final int width;
  @override
  final int height;
  @override
  final double price;

  @override
  String toString() {
    return 'CategoryWorkingTableProductPricePerSize(pricePerSizeEnum: $pricePerSizeEnum, width: $width, height: $height, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWorkingTableProductPricePerSizeImpl &&
            (identical(other.pricePerSizeEnum, pricePerSizeEnum) ||
                other.pricePerSizeEnum == pricePerSizeEnum) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pricePerSizeEnum, width, height, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryWorkingTableProductPricePerSizeImplCopyWith<
          _$CategoryWorkingTableProductPricePerSizeImpl>
      get copyWith =>
          __$$CategoryWorkingTableProductPricePerSizeImplCopyWithImpl<
              _$CategoryWorkingTableProductPricePerSizeImpl>(this, _$identity);
}

abstract class _CategoryWorkingTableProductPricePerSize
    implements CategoryWorkingTableProductPricePerSize {
  const factory _CategoryWorkingTableProductPricePerSize(
          {required final CategoryWorkingTablePricePerSizeEnum pricePerSizeEnum,
          required final int width,
          required final int height,
          required final double price}) =
      _$CategoryWorkingTableProductPricePerSizeImpl;

  @override
  CategoryWorkingTablePricePerSizeEnum get pricePerSizeEnum;
  @override
  int get width;
  @override
  int get height;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$CategoryWorkingTableProductPricePerSizeImplCopyWith<
          _$CategoryWorkingTableProductPricePerSizeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
