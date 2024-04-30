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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StateCategory {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            ChosenDateTime? dateTime, ProductCategory? productCategory)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            ChosenDateTime? dateTime, ProductCategory? productCategory)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            ChosenDateTime? dateTime, ProductCategory? productCategory)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCategoryCopyWith<$Res> {
  factory $StateCategoryCopyWith(
          StateCategory value, $Res Function(StateCategory) then) =
      _$StateCategoryCopyWithImpl<$Res, StateCategory>;
}

/// @nodoc
class _$StateCategoryCopyWithImpl<$Res, $Val extends StateCategory>
    implements $StateCategoryCopyWith<$Res> {
  _$StateCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$StateCategoryCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'StateCategory.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            ChosenDateTime? dateTime, ProductCategory? productCategory)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            ChosenDateTime? dateTime, ProductCategory? productCategory)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            ChosenDateTime? dateTime, ProductCategory? productCategory)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends StateCategory {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChosenDateTime? dateTime, ProductCategory? productCategory});

  $ChosenDateTimeCopyWith<$Res>? get dateTime;
  $ProductCategoryCopyWith<$Res>? get productCategory;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$StateCategoryCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
    Object? productCategory = freezed,
  }) {
    return _then(_$SuccessImpl(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as ChosenDateTime?,
      productCategory: freezed == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChosenDateTimeCopyWith<$Res>? get dateTime {
    if (_value.dateTime == null) {
      return null;
    }

    return $ChosenDateTimeCopyWith<$Res>(_value.dateTime!, (value) {
      return _then(_value.copyWith(dateTime: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryCopyWith<$Res>? get productCategory {
    if (_value.productCategory == null) {
      return null;
    }

    return $ProductCategoryCopyWith<$Res>(_value.productCategory!, (value) {
      return _then(_value.copyWith(productCategory: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl extends _Success {
  const _$SuccessImpl({this.dateTime, this.productCategory}) : super._();

  @override
  final ChosenDateTime? dateTime;
  @override
  final ProductCategory? productCategory;

  @override
  String toString() {
    return 'StateCategory.success(dateTime: $dateTime, productCategory: $productCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
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
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            ChosenDateTime? dateTime, ProductCategory? productCategory)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(dateTime, productCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            ChosenDateTime? dateTime, ProductCategory? productCategory)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(dateTime, productCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            ChosenDateTime? dateTime, ProductCategory? productCategory)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(dateTime, productCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends StateCategory {
  const factory _Success(
      {final ChosenDateTime? dateTime,
      final ProductCategory? productCategory}) = _$SuccessImpl;
  const _Success._() : super._();

  ChosenDateTime? get dateTime;
  ProductCategory? get productCategory;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$StateCategoryCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureImpl extends _Failure {
  const _$FailureImpl({required this.failure}) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'StateCategory.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            ChosenDateTime? dateTime, ProductCategory? productCategory)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            ChosenDateTime? dateTime, ProductCategory? productCategory)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            ChosenDateTime? dateTime, ProductCategory? productCategory)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends StateCategory {
  const factory _Failure({required final Failure failure}) = _$FailureImpl;
  const _Failure._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChosenDateTime {
  DateTime? get selectedDateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChosenDateTimeCopyWith<ChosenDateTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChosenDateTimeCopyWith<$Res> {
  factory $ChosenDateTimeCopyWith(
          ChosenDateTime value, $Res Function(ChosenDateTime) then) =
      _$ChosenDateTimeCopyWithImpl<$Res, ChosenDateTime>;
  @useResult
  $Res call({DateTime? selectedDateTime});
}

/// @nodoc
class _$ChosenDateTimeCopyWithImpl<$Res, $Val extends ChosenDateTime>
    implements $ChosenDateTimeCopyWith<$Res> {
  _$ChosenDateTimeCopyWithImpl(this._value, this._then);

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
abstract class _$$ChosenDateTimeImplCopyWith<$Res>
    implements $ChosenDateTimeCopyWith<$Res> {
  factory _$$ChosenDateTimeImplCopyWith(_$ChosenDateTimeImpl value,
          $Res Function(_$ChosenDateTimeImpl) then) =
      __$$ChosenDateTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? selectedDateTime});
}

/// @nodoc
class __$$ChosenDateTimeImplCopyWithImpl<$Res>
    extends _$ChosenDateTimeCopyWithImpl<$Res, _$ChosenDateTimeImpl>
    implements _$$ChosenDateTimeImplCopyWith<$Res> {
  __$$ChosenDateTimeImplCopyWithImpl(
      _$ChosenDateTimeImpl _value, $Res Function(_$ChosenDateTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDateTime = freezed,
  }) {
    return _then(_$ChosenDateTimeImpl(
      selectedDateTime: freezed == selectedDateTime
          ? _value.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ChosenDateTimeImpl extends _ChosenDateTime {
  const _$ChosenDateTimeImpl({this.selectedDateTime}) : super._();

  @override
  final DateTime? selectedDateTime;

  @override
  String toString() {
    return 'ChosenDateTime(selectedDateTime: $selectedDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChosenDateTimeImpl &&
            (identical(other.selectedDateTime, selectedDateTime) ||
                other.selectedDateTime == selectedDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChosenDateTimeImplCopyWith<_$ChosenDateTimeImpl> get copyWith =>
      __$$ChosenDateTimeImplCopyWithImpl<_$ChosenDateTimeImpl>(
          this, _$identity);
}

abstract class _ChosenDateTime extends ChosenDateTime {
  const factory _ChosenDateTime({final DateTime? selectedDateTime}) =
      _$ChosenDateTimeImpl;
  const _ChosenDateTime._() : super._();

  @override
  DateTime? get selectedDateTime;
  @override
  @JsonKey(ignore: true)
  _$$ChosenDateTimeImplCopyWith<_$ChosenDateTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductCategory {
  String get categoryName => throw _privateConstructorUsedError;
  List<Product> get listProduct => throw _privateConstructorUsedError;
  Product? get chosenProduct => throw _privateConstructorUsedError;

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
      {String categoryName, List<Product> listProduct, Product? chosenProduct});

  $ProductCopyWith<$Res>? get chosenProduct;
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
    Object? chosenProduct = freezed,
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
      chosenProduct: freezed == chosenProduct
          ? _value.chosenProduct
          : chosenProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get chosenProduct {
    if (_value.chosenProduct == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.chosenProduct!, (value) {
      return _then(_value.copyWith(chosenProduct: value) as $Val);
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
      {String categoryName, List<Product> listProduct, Product? chosenProduct});

  @override
  $ProductCopyWith<$Res>? get chosenProduct;
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
    Object? chosenProduct = freezed,
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
      chosenProduct: freezed == chosenProduct
          ? _value.chosenProduct
          : chosenProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc

class _$ProductCategoryImpl extends _ProductCategory {
  const _$ProductCategoryImpl(
      {required this.categoryName,
      required final List<Product> listProduct,
      this.chosenProduct})
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
  final Product? chosenProduct;

  @override
  String toString() {
    return 'ProductCategory(categoryName: $categoryName, listProduct: $listProduct, chosenProduct: $chosenProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct) &&
            (identical(other.chosenProduct, chosenProduct) ||
                other.chosenProduct == chosenProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryName,
      const DeepCollectionEquality().hash(_listProduct), chosenProduct);

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
      final Product? chosenProduct}) = _$ProductCategoryImpl;
  const _ProductCategory._() : super._();

  @override
  String get categoryName;
  @override
  List<Product> get listProduct;
  @override
  Product? get chosenProduct;
  @override
  @JsonKey(ignore: true)
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Product {
  String get productNumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Enum get productType => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get picturePath => throw _privateConstructorUsedError;
  Uint8List? get pictureByte => throw _privateConstructorUsedError;
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
      {String productNumber,
      String name,
      Enum productType,
      double price,
      String picturePath,
      Uint8List? pictureByte,
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
    Object? productNumber = null,
    Object? name = null,
    Object? productType = null,
    Object? price = null,
    Object? picturePath = null,
    Object? pictureByte = freezed,
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
      picturePath: null == picturePath
          ? _value.picturePath
          : picturePath // ignore: cast_nullable_to_non_nullable
              as String,
      pictureByte: freezed == pictureByte
          ? _value.pictureByte
          : pictureByte // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
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
      {String productNumber,
      String name,
      Enum productType,
      double price,
      String picturePath,
      Uint8List? pictureByte,
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
    Object? productNumber = null,
    Object? name = null,
    Object? productType = null,
    Object? price = null,
    Object? picturePath = null,
    Object? pictureByte = freezed,
    Object? offerInPercent = freezed,
    Object? productCount = freezed,
  }) {
    return _then(_$ProductImpl(
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
      picturePath: null == picturePath
          ? _value.picturePath
          : picturePath // ignore: cast_nullable_to_non_nullable
              as String,
      pictureByte: freezed == pictureByte
          ? _value.pictureByte
          : pictureByte // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
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
      {required this.productNumber,
      required this.name,
      required this.productType,
      required this.price,
      required this.picturePath,
      this.pictureByte,
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
  final String picturePath;
  @override
  final Uint8List? pictureByte;
  @override
  final int? offerInPercent;
  @override
  final int? productCount;

  @override
  String toString() {
    return 'Product(productNumber: $productNumber, name: $name, productType: $productType, price: $price, picturePath: $picturePath, pictureByte: $pictureByte, offerInPercent: $offerInPercent, productCount: $productCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.picturePath, picturePath) ||
                other.picturePath == picturePath) &&
            const DeepCollectionEquality()
                .equals(other.pictureByte, pictureByte) &&
            (identical(other.offerInPercent, offerInPercent) ||
                other.offerInPercent == offerInPercent) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      productNumber,
      name,
      productType,
      price,
      picturePath,
      const DeepCollectionEquality().hash(pictureByte),
      offerInPercent,
      productCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {required final String productNumber,
      required final String name,
      required final Enum productType,
      required final double price,
      required final String picturePath,
      final Uint8List? pictureByte,
      final int? offerInPercent,
      final int? productCount}) = _$ProductImpl;
  const _Product._() : super._();

  @override
  String get productNumber;
  @override
  String get name;
  @override
  Enum get productType;
  @override
  double get price;
  @override
  String get picturePath;
  @override
  Uint8List? get pictureByte;
  @override
  int? get offerInPercent;
  @override
  int? get productCount;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
