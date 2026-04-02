// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StateCategory {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StateCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StateCategory()';
  }
}

/// @nodoc
class $StateCategoryCopyWith<$Res> {
  $StateCategoryCopyWith(StateCategory _, $Res Function(StateCategory) __);
}

/// Adds pattern-matching-related methods to [StateCategory].
extension StateCategoryPatterns on StateCategory {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Loading() when loading != null:
        return loading(_that);
      case _Success() when success != null:
        return success(_that);
      case _Failure() when failure != null:
        return failure(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Loading():
        return loading(_that);
      case _Success():
        return success(_that);
      case _Failure():
        return failure(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Loading() when loading != null:
        return loading(_that);
      case _Success() when success != null:
        return success(_that);
      case _Failure() when failure != null:
        return failure(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CategoryEntity>? categoryEntityList)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Loading() when loading != null:
        return loading();
      case _Success() when success != null:
        return success(_that.categoryEntityList);
      case _Failure() when failure != null:
        return failure(_that.failure);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CategoryEntity>? categoryEntityList) success,
    required TResult Function(Failure failure) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Loading():
        return loading();
      case _Success():
        return success(_that.categoryEntityList);
      case _Failure():
        return failure(_that.failure);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CategoryEntity>? categoryEntityList)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Loading() when loading != null:
        return loading();
      case _Success() when success != null:
        return success(_that.categoryEntityList);
      case _Failure() when failure != null:
        return failure(_that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Loading extends StateCategory {
  const _Loading() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StateCategory.loading()';
  }
}

/// @nodoc

class _Success extends StateCategory {
  const _Success({final List<CategoryEntity>? categoryEntityList})
      : _categoryEntityList = categoryEntityList,
        super._();

  final List<CategoryEntity>? _categoryEntityList;
  List<CategoryEntity>? get categoryEntityList {
    final value = _categoryEntityList;
    if (value == null) return null;
    if (_categoryEntityList is EqualUnmodifiableListView)
      return _categoryEntityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of StateCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success &&
            const DeepCollectionEquality()
                .equals(other._categoryEntityList, _categoryEntityList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoryEntityList));

  @override
  String toString() {
    return 'StateCategory.success(categoryEntityList: $categoryEntityList)';
  }
}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res>
    implements $StateCategoryCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) =
      __$SuccessCopyWithImpl;
  @useResult
  $Res call({List<CategoryEntity>? categoryEntityList});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

  /// Create a copy of StateCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categoryEntityList = freezed,
  }) {
    return _then(_Success(
      categoryEntityList: freezed == categoryEntityList
          ? _self._categoryEntityList
          : categoryEntityList // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>?,
    ));
  }
}

/// @nodoc

class _Failure extends StateCategory {
  const _Failure({required this.failure}) : super._();

  final Failure failure;

  /// Create a copy of StateCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @override
  String toString() {
    return 'StateCategory.failure(failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res>
    implements $StateCategoryCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) =
      __$FailureCopyWithImpl;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

  /// Create a copy of StateCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
  }) {
    return _then(_Failure(
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of StateCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_self.failure, (value) {
      return _then(_self.copyWith(failure: value));
    });
  }
}

/// @nodoc
mixin _$ChosenDateTime {
  DateTime? get selectedDateTime;

  /// Create a copy of ChosenDateTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChosenDateTimeCopyWith<ChosenDateTime> get copyWith =>
      _$ChosenDateTimeCopyWithImpl<ChosenDateTime>(
          this as ChosenDateTime, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChosenDateTime &&
            (identical(other.selectedDateTime, selectedDateTime) ||
                other.selectedDateTime == selectedDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDateTime);

  @override
  String toString() {
    return 'ChosenDateTime(selectedDateTime: $selectedDateTime)';
  }
}

/// @nodoc
abstract mixin class $ChosenDateTimeCopyWith<$Res> {
  factory $ChosenDateTimeCopyWith(
          ChosenDateTime value, $Res Function(ChosenDateTime) _then) =
      _$ChosenDateTimeCopyWithImpl;
  @useResult
  $Res call({DateTime? selectedDateTime});
}

/// @nodoc
class _$ChosenDateTimeCopyWithImpl<$Res>
    implements $ChosenDateTimeCopyWith<$Res> {
  _$ChosenDateTimeCopyWithImpl(this._self, this._then);

  final ChosenDateTime _self;
  final $Res Function(ChosenDateTime) _then;

  /// Create a copy of ChosenDateTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDateTime = freezed,
  }) {
    return _then(_self.copyWith(
      selectedDateTime: freezed == selectedDateTime
          ? _self.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChosenDateTime].
extension ChosenDateTimePatterns on ChosenDateTime {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChosenDateTime value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChosenDateTime() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChosenDateTime value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChosenDateTime():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChosenDateTime value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChosenDateTime() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? selectedDateTime)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChosenDateTime() when $default != null:
        return $default(_that.selectedDateTime);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? selectedDateTime) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChosenDateTime():
        return $default(_that.selectedDateTime);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DateTime? selectedDateTime)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChosenDateTime() when $default != null:
        return $default(_that.selectedDateTime);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ChosenDateTime extends ChosenDateTime {
  const _ChosenDateTime({this.selectedDateTime}) : super._();

  @override
  final DateTime? selectedDateTime;

  /// Create a copy of ChosenDateTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChosenDateTimeCopyWith<_ChosenDateTime> get copyWith =>
      __$ChosenDateTimeCopyWithImpl<_ChosenDateTime>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChosenDateTime &&
            (identical(other.selectedDateTime, selectedDateTime) ||
                other.selectedDateTime == selectedDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDateTime);

  @override
  String toString() {
    return 'ChosenDateTime(selectedDateTime: $selectedDateTime)';
  }
}

/// @nodoc
abstract mixin class _$ChosenDateTimeCopyWith<$Res>
    implements $ChosenDateTimeCopyWith<$Res> {
  factory _$ChosenDateTimeCopyWith(
          _ChosenDateTime value, $Res Function(_ChosenDateTime) _then) =
      __$ChosenDateTimeCopyWithImpl;
  @override
  @useResult
  $Res call({DateTime? selectedDateTime});
}

/// @nodoc
class __$ChosenDateTimeCopyWithImpl<$Res>
    implements _$ChosenDateTimeCopyWith<$Res> {
  __$ChosenDateTimeCopyWithImpl(this._self, this._then);

  final _ChosenDateTime _self;
  final $Res Function(_ChosenDateTime) _then;

  /// Create a copy of ChosenDateTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedDateTime = freezed,
  }) {
    return _then(_ChosenDateTime(
      selectedDateTime: freezed == selectedDateTime
          ? _self.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$ProductCategory {
  String get categoryName;
  List<Product> get listProduct;
  Product? get chosenProduct;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductCategoryCopyWith<ProductCategory> get copyWith =>
      _$ProductCategoryCopyWithImpl<ProductCategory>(
          this as ProductCategory, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductCategory &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality()
                .equals(other.listProduct, listProduct) &&
            (identical(other.chosenProduct, chosenProduct) ||
                other.chosenProduct == chosenProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryName,
      const DeepCollectionEquality().hash(listProduct), chosenProduct);

  @override
  String toString() {
    return 'ProductCategory(categoryName: $categoryName, listProduct: $listProduct, chosenProduct: $chosenProduct)';
  }
}

/// @nodoc
abstract mixin class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
          ProductCategory value, $Res Function(ProductCategory) _then) =
      _$ProductCategoryCopyWithImpl;
  @useResult
  $Res call(
      {String categoryName, List<Product> listProduct, Product? chosenProduct});

  $ProductCopyWith<$Res>? get chosenProduct;
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._self, this._then);

  final ProductCategory _self;
  final $Res Function(ProductCategory) _then;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
    Object? chosenProduct = freezed,
  }) {
    return _then(_self.copyWith(
      categoryName: null == categoryName
          ? _self.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _self.listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      chosenProduct: freezed == chosenProduct
          ? _self.chosenProduct
          : chosenProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get chosenProduct {
    if (_self.chosenProduct == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_self.chosenProduct!, (value) {
      return _then(_self.copyWith(chosenProduct: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProductCategory].
extension ProductCategoryPatterns on ProductCategory {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProductCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductCategory() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProductCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductCategory():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProductCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductCategory() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String categoryName, List<Product> listProduct,
            Product? chosenProduct)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductCategory() when $default != null:
        return $default(
            _that.categoryName, _that.listProduct, _that.chosenProduct);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String categoryName, List<Product> listProduct,
            Product? chosenProduct)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductCategory():
        return $default(
            _that.categoryName, _that.listProduct, _that.chosenProduct);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String categoryName, List<Product> listProduct,
            Product? chosenProduct)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductCategory() when $default != null:
        return $default(
            _that.categoryName, _that.listProduct, _that.chosenProduct);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProductCategory extends ProductCategory {
  const _ProductCategory(
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

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductCategoryCopyWith<_ProductCategory> get copyWith =>
      __$ProductCategoryCopyWithImpl<_ProductCategory>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCategory &&
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

  @override
  String toString() {
    return 'ProductCategory(categoryName: $categoryName, listProduct: $listProduct, chosenProduct: $chosenProduct)';
  }
}

/// @nodoc
abstract mixin class _$ProductCategoryCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$ProductCategoryCopyWith(
          _ProductCategory value, $Res Function(_ProductCategory) _then) =
      __$ProductCategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String categoryName, List<Product> listProduct, Product? chosenProduct});

  @override
  $ProductCopyWith<$Res>? get chosenProduct;
}

/// @nodoc
class __$ProductCategoryCopyWithImpl<$Res>
    implements _$ProductCategoryCopyWith<$Res> {
  __$ProductCategoryCopyWithImpl(this._self, this._then);

  final _ProductCategory _self;
  final $Res Function(_ProductCategory) _then;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
    Object? chosenProduct = freezed,
  }) {
    return _then(_ProductCategory(
      categoryName: null == categoryName
          ? _self.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _self._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      chosenProduct: freezed == chosenProduct
          ? _self.chosenProduct
          : chosenProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get chosenProduct {
    if (_self.chosenProduct == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_self.chosenProduct!, (value) {
      return _then(_self.copyWith(chosenProduct: value));
    });
  }
}

/// @nodoc
mixin _$Product {
  String get productNumber;
  String get name;
  Enum get productType;
  double get price;
  String get picturePath;
  Uint8List? get pictureByte;
  int? get offerInPercent;
  int? get productCount;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductCopyWith<Product> get copyWith =>
      _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Product &&
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

  @override
  String toString() {
    return 'Product(productNumber: $productNumber, name: $name, productType: $productType, price: $price, picturePath: $picturePath, pictureByte: $pictureByte, offerInPercent: $offerInPercent, productCount: $productCount)';
  }
}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) =
      _$ProductCopyWithImpl;
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
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      productNumber: null == productNumber
          ? _self.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _self.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as Enum,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      picturePath: null == picturePath
          ? _self.picturePath
          : picturePath // ignore: cast_nullable_to_non_nullable
              as String,
      pictureByte: freezed == pictureByte
          ? _self.pictureByte
          : pictureByte // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      offerInPercent: freezed == offerInPercent
          ? _self.offerInPercent
          : offerInPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      productCount: freezed == productCount
          ? _self.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Product value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Product() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Product value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Product():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Product value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Product() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String productNumber,
            String name,
            Enum productType,
            double price,
            String picturePath,
            Uint8List? pictureByte,
            int? offerInPercent,
            int? productCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Product() when $default != null:
        return $default(
            _that.productNumber,
            _that.name,
            _that.productType,
            _that.price,
            _that.picturePath,
            _that.pictureByte,
            _that.offerInPercent,
            _that.productCount);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String productNumber,
            String name,
            Enum productType,
            double price,
            String picturePath,
            Uint8List? pictureByte,
            int? offerInPercent,
            int? productCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Product():
        return $default(
            _that.productNumber,
            _that.name,
            _that.productType,
            _that.price,
            _that.picturePath,
            _that.pictureByte,
            _that.offerInPercent,
            _that.productCount);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String productNumber,
            String name,
            Enum productType,
            double price,
            String picturePath,
            Uint8List? pictureByte,
            int? offerInPercent,
            int? productCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Product() when $default != null:
        return $default(
            _that.productNumber,
            _that.name,
            _that.productType,
            _that.price,
            _that.picturePath,
            _that.pictureByte,
            _that.offerInPercent,
            _that.productCount);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Product extends Product {
  const _Product(
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

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
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

  @override
  String toString() {
    return 'Product(productNumber: $productNumber, name: $name, productType: $productType, price: $price, picturePath: $picturePath, pictureByte: $pictureByte, offerInPercent: $offerInPercent, productCount: $productCount)';
  }
}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) =
      __$ProductCopyWithImpl;
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
class __$ProductCopyWithImpl<$Res> implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Product(
      productNumber: null == productNumber
          ? _self.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _self.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as Enum,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      picturePath: null == picturePath
          ? _self.picturePath
          : picturePath // ignore: cast_nullable_to_non_nullable
              as String,
      pictureByte: freezed == pictureByte
          ? _self.pictureByte
          : pictureByte // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      offerInPercent: freezed == offerInPercent
          ? _self.offerInPercent
          : offerInPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      productCount: freezed == productCount
          ? _self.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
