// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_integration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductIntegrationState {
  EnumCategoryProduct get categoryProduct;
  bool get imageUploadInProcess;
  bool get infoUploadInProcess;
  bool get isProductVisible;
  bool get changeProduct;
  Uint8List? get imageUint8List;
  List<String> get attributes;
  Failure? get failure;

  /// Create a copy of ProductIntegrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductIntegrationStateCopyWith<ProductIntegrationState> get copyWith =>
      _$ProductIntegrationStateCopyWithImpl<ProductIntegrationState>(
          this as ProductIntegrationState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductIntegrationState &&
            (identical(other.categoryProduct, categoryProduct) ||
                other.categoryProduct == categoryProduct) &&
            (identical(other.imageUploadInProcess, imageUploadInProcess) ||
                other.imageUploadInProcess == imageUploadInProcess) &&
            (identical(other.infoUploadInProcess, infoUploadInProcess) ||
                other.infoUploadInProcess == infoUploadInProcess) &&
            (identical(other.isProductVisible, isProductVisible) ||
                other.isProductVisible == isProductVisible) &&
            (identical(other.changeProduct, changeProduct) ||
                other.changeProduct == changeProduct) &&
            const DeepCollectionEquality()
                .equals(other.imageUint8List, imageUint8List) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryProduct,
      imageUploadInProcess,
      infoUploadInProcess,
      isProductVisible,
      changeProduct,
      const DeepCollectionEquality().hash(imageUint8List),
      const DeepCollectionEquality().hash(attributes),
      failure);

  @override
  String toString() {
    return 'ProductIntegrationState(categoryProduct: $categoryProduct, imageUploadInProcess: $imageUploadInProcess, infoUploadInProcess: $infoUploadInProcess, isProductVisible: $isProductVisible, changeProduct: $changeProduct, imageUint8List: $imageUint8List, attributes: $attributes, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $ProductIntegrationStateCopyWith<$Res> {
  factory $ProductIntegrationStateCopyWith(ProductIntegrationState value,
          $Res Function(ProductIntegrationState) _then) =
      _$ProductIntegrationStateCopyWithImpl;
  @useResult
  $Res call(
      {EnumCategoryProduct categoryProduct,
      bool imageUploadInProcess,
      bool infoUploadInProcess,
      bool isProductVisible,
      bool changeProduct,
      Uint8List? imageUint8List,
      List<String> attributes,
      Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$ProductIntegrationStateCopyWithImpl<$Res>
    implements $ProductIntegrationStateCopyWith<$Res> {
  _$ProductIntegrationStateCopyWithImpl(this._self, this._then);

  final ProductIntegrationState _self;
  final $Res Function(ProductIntegrationState) _then;

  /// Create a copy of ProductIntegrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryProduct = null,
    Object? imageUploadInProcess = null,
    Object? infoUploadInProcess = null,
    Object? isProductVisible = null,
    Object? changeProduct = null,
    Object? imageUint8List = freezed,
    Object? attributes = null,
    Object? failure = freezed,
  }) {
    return _then(_self.copyWith(
      categoryProduct: null == categoryProduct
          ? _self.categoryProduct
          : categoryProduct // ignore: cast_nullable_to_non_nullable
              as EnumCategoryProduct,
      imageUploadInProcess: null == imageUploadInProcess
          ? _self.imageUploadInProcess
          : imageUploadInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      infoUploadInProcess: null == infoUploadInProcess
          ? _self.infoUploadInProcess
          : infoUploadInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductVisible: null == isProductVisible
          ? _self.isProductVisible
          : isProductVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      changeProduct: null == changeProduct
          ? _self.changeProduct
          : changeProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUint8List: freezed == imageUint8List
          ? _self.imageUint8List
          : imageUint8List // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      attributes: null == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  /// Create a copy of ProductIntegrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_self.failure!, (value) {
      return _then(_self.copyWith(failure: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProductIntegrationState].
extension ProductIntegrationStatePatterns on ProductIntegrationState {
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
    TResult Function(_ProductIntegrationState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductIntegrationState() when $default != null:
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
    TResult Function(_ProductIntegrationState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductIntegrationState():
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
    TResult? Function(_ProductIntegrationState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductIntegrationState() when $default != null:
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
            EnumCategoryProduct categoryProduct,
            bool imageUploadInProcess,
            bool infoUploadInProcess,
            bool isProductVisible,
            bool changeProduct,
            Uint8List? imageUint8List,
            List<String> attributes,
            Failure? failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductIntegrationState() when $default != null:
        return $default(
            _that.categoryProduct,
            _that.imageUploadInProcess,
            _that.infoUploadInProcess,
            _that.isProductVisible,
            _that.changeProduct,
            _that.imageUint8List,
            _that.attributes,
            _that.failure);
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
            EnumCategoryProduct categoryProduct,
            bool imageUploadInProcess,
            bool infoUploadInProcess,
            bool isProductVisible,
            bool changeProduct,
            Uint8List? imageUint8List,
            List<String> attributes,
            Failure? failure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductIntegrationState():
        return $default(
            _that.categoryProduct,
            _that.imageUploadInProcess,
            _that.infoUploadInProcess,
            _that.isProductVisible,
            _that.changeProduct,
            _that.imageUint8List,
            _that.attributes,
            _that.failure);
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
            EnumCategoryProduct categoryProduct,
            bool imageUploadInProcess,
            bool infoUploadInProcess,
            bool isProductVisible,
            bool changeProduct,
            Uint8List? imageUint8List,
            List<String> attributes,
            Failure? failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductIntegrationState() when $default != null:
        return $default(
            _that.categoryProduct,
            _that.imageUploadInProcess,
            _that.infoUploadInProcess,
            _that.isProductVisible,
            _that.changeProduct,
            _that.imageUint8List,
            _that.attributes,
            _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProductIntegrationState implements ProductIntegrationState {
  const _ProductIntegrationState(
      {required this.categoryProduct,
      required this.imageUploadInProcess,
      required this.infoUploadInProcess,
      required this.isProductVisible,
      required this.changeProduct,
      this.imageUint8List,
      final List<String> attributes = const [],
      this.failure})
      : _attributes = attributes;

  @override
  final EnumCategoryProduct categoryProduct;
  @override
  final bool imageUploadInProcess;
  @override
  final bool infoUploadInProcess;
  @override
  final bool isProductVisible;
  @override
  final bool changeProduct;
  @override
  final Uint8List? imageUint8List;
  final List<String> _attributes;
  @override
  @JsonKey()
  List<String> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  final Failure? failure;

  /// Create a copy of ProductIntegrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductIntegrationStateCopyWith<_ProductIntegrationState> get copyWith =>
      __$ProductIntegrationStateCopyWithImpl<_ProductIntegrationState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductIntegrationState &&
            (identical(other.categoryProduct, categoryProduct) ||
                other.categoryProduct == categoryProduct) &&
            (identical(other.imageUploadInProcess, imageUploadInProcess) ||
                other.imageUploadInProcess == imageUploadInProcess) &&
            (identical(other.infoUploadInProcess, infoUploadInProcess) ||
                other.infoUploadInProcess == infoUploadInProcess) &&
            (identical(other.isProductVisible, isProductVisible) ||
                other.isProductVisible == isProductVisible) &&
            (identical(other.changeProduct, changeProduct) ||
                other.changeProduct == changeProduct) &&
            const DeepCollectionEquality()
                .equals(other.imageUint8List, imageUint8List) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryProduct,
      imageUploadInProcess,
      infoUploadInProcess,
      isProductVisible,
      changeProduct,
      const DeepCollectionEquality().hash(imageUint8List),
      const DeepCollectionEquality().hash(_attributes),
      failure);

  @override
  String toString() {
    return 'ProductIntegrationState(categoryProduct: $categoryProduct, imageUploadInProcess: $imageUploadInProcess, infoUploadInProcess: $infoUploadInProcess, isProductVisible: $isProductVisible, changeProduct: $changeProduct, imageUint8List: $imageUint8List, attributes: $attributes, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$ProductIntegrationStateCopyWith<$Res>
    implements $ProductIntegrationStateCopyWith<$Res> {
  factory _$ProductIntegrationStateCopyWith(_ProductIntegrationState value,
          $Res Function(_ProductIntegrationState) _then) =
      __$ProductIntegrationStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {EnumCategoryProduct categoryProduct,
      bool imageUploadInProcess,
      bool infoUploadInProcess,
      bool isProductVisible,
      bool changeProduct,
      Uint8List? imageUint8List,
      List<String> attributes,
      Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$ProductIntegrationStateCopyWithImpl<$Res>
    implements _$ProductIntegrationStateCopyWith<$Res> {
  __$ProductIntegrationStateCopyWithImpl(this._self, this._then);

  final _ProductIntegrationState _self;
  final $Res Function(_ProductIntegrationState) _then;

  /// Create a copy of ProductIntegrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categoryProduct = null,
    Object? imageUploadInProcess = null,
    Object? infoUploadInProcess = null,
    Object? isProductVisible = null,
    Object? changeProduct = null,
    Object? imageUint8List = freezed,
    Object? attributes = null,
    Object? failure = freezed,
  }) {
    return _then(_ProductIntegrationState(
      categoryProduct: null == categoryProduct
          ? _self.categoryProduct
          : categoryProduct // ignore: cast_nullable_to_non_nullable
              as EnumCategoryProduct,
      imageUploadInProcess: null == imageUploadInProcess
          ? _self.imageUploadInProcess
          : imageUploadInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      infoUploadInProcess: null == infoUploadInProcess
          ? _self.infoUploadInProcess
          : infoUploadInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductVisible: null == isProductVisible
          ? _self.isProductVisible
          : isProductVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      changeProduct: null == changeProduct
          ? _self.changeProduct
          : changeProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUint8List: freezed == imageUint8List
          ? _self.imageUint8List
          : imageUint8List // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      attributes: null == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  /// Create a copy of ProductIntegrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_self.failure!, (value) {
      return _then(_self.copyWith(failure: value));
    });
  }
}

// dart format on
