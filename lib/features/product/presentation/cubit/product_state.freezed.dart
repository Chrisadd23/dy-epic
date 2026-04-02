// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductState {
  String get hashKey;
  String get category;
  int get productOrderCount;
  CategoryEntity? get productEntity;
  EntityCorePictures? get entityCorePicture;
  int? get position;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductStateCopyWith<ProductState> get copyWith =>
      _$ProductStateCopyWithImpl<ProductState>(
          this as ProductState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductState &&
            (identical(other.hashKey, hashKey) || other.hashKey == hashKey) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.productOrderCount, productOrderCount) ||
                other.productOrderCount == productOrderCount) &&
            (identical(other.productEntity, productEntity) ||
                other.productEntity == productEntity) &&
            (identical(other.entityCorePicture, entityCorePicture) ||
                other.entityCorePicture == entityCorePicture) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hashKey, category,
      productOrderCount, productEntity, entityCorePicture, position);

  @override
  String toString() {
    return 'ProductState(hashKey: $hashKey, category: $category, productOrderCount: $productOrderCount, productEntity: $productEntity, entityCorePicture: $entityCorePicture, position: $position)';
  }
}

/// @nodoc
abstract mixin class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) _then) =
      _$ProductStateCopyWithImpl;
  @useResult
  $Res call(
      {String hashKey,
      String category,
      int productOrderCount,
      CategoryEntity? productEntity,
      EntityCorePictures? entityCorePicture,
      int? position});

  $CategoryEntityCopyWith<$Res>? get productEntity;
  $EntityCorePicturesCopyWith<$Res>? get entityCorePicture;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._self, this._then);

  final ProductState _self;
  final $Res Function(ProductState) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashKey = null,
    Object? category = null,
    Object? productOrderCount = null,
    Object? productEntity = freezed,
    Object? entityCorePicture = freezed,
    Object? position = freezed,
  }) {
    return _then(_self.copyWith(
      hashKey: null == hashKey
          ? _self.hashKey
          : hashKey // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      productOrderCount: null == productOrderCount
          ? _self.productOrderCount
          : productOrderCount // ignore: cast_nullable_to_non_nullable
              as int,
      productEntity: freezed == productEntity
          ? _self.productEntity
          : productEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      entityCorePicture: freezed == entityCorePicture
          ? _self.entityCorePicture
          : entityCorePicture // ignore: cast_nullable_to_non_nullable
              as EntityCorePictures?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res>? get productEntity {
    if (_self.productEntity == null) {
      return null;
    }

    return $CategoryEntityCopyWith<$Res>(_self.productEntity!, (value) {
      return _then(_self.copyWith(productEntity: value));
    });
  }

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityCorePicturesCopyWith<$Res>? get entityCorePicture {
    if (_self.entityCorePicture == null) {
      return null;
    }

    return $EntityCorePicturesCopyWith<$Res>(_self.entityCorePicture!, (value) {
      return _then(_self.copyWith(entityCorePicture: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
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
    TResult Function(_ProductState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductState() when $default != null:
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
    TResult Function(_ProductState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductState():
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
    TResult? Function(_ProductState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductState() when $default != null:
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
            String hashKey,
            String category,
            int productOrderCount,
            CategoryEntity? productEntity,
            EntityCorePictures? entityCorePicture,
            int? position)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductState() when $default != null:
        return $default(_that.hashKey, _that.category, _that.productOrderCount,
            _that.productEntity, _that.entityCorePicture, _that.position);
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
            String hashKey,
            String category,
            int productOrderCount,
            CategoryEntity? productEntity,
            EntityCorePictures? entityCorePicture,
            int? position)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductState():
        return $default(_that.hashKey, _that.category, _that.productOrderCount,
            _that.productEntity, _that.entityCorePicture, _that.position);
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
            String hashKey,
            String category,
            int productOrderCount,
            CategoryEntity? productEntity,
            EntityCorePictures? entityCorePicture,
            int? position)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductState() when $default != null:
        return $default(_that.hashKey, _that.category, _that.productOrderCount,
            _that.productEntity, _that.entityCorePicture, _that.position);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProductState implements ProductState {
  const _ProductState(
      {this.hashKey = '',
      this.category = '',
      this.productOrderCount = 0,
      this.productEntity,
      this.entityCorePicture,
      this.position});

  @override
  @JsonKey()
  final String hashKey;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final int productOrderCount;
  @override
  final CategoryEntity? productEntity;
  @override
  final EntityCorePictures? entityCorePicture;
  @override
  final int? position;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductState &&
            (identical(other.hashKey, hashKey) || other.hashKey == hashKey) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.productOrderCount, productOrderCount) ||
                other.productOrderCount == productOrderCount) &&
            (identical(other.productEntity, productEntity) ||
                other.productEntity == productEntity) &&
            (identical(other.entityCorePicture, entityCorePicture) ||
                other.entityCorePicture == entityCorePicture) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hashKey, category,
      productOrderCount, productEntity, entityCorePicture, position);

  @override
  String toString() {
    return 'ProductState(hashKey: $hashKey, category: $category, productOrderCount: $productOrderCount, productEntity: $productEntity, entityCorePicture: $entityCorePicture, position: $position)';
  }
}

/// @nodoc
abstract mixin class _$ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(
          _ProductState value, $Res Function(_ProductState) _then) =
      __$ProductStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String hashKey,
      String category,
      int productOrderCount,
      CategoryEntity? productEntity,
      EntityCorePictures? entityCorePicture,
      int? position});

  @override
  $CategoryEntityCopyWith<$Res>? get productEntity;
  @override
  $EntityCorePicturesCopyWith<$Res>? get entityCorePicture;
}

/// @nodoc
class __$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(this._self, this._then);

  final _ProductState _self;
  final $Res Function(_ProductState) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hashKey = null,
    Object? category = null,
    Object? productOrderCount = null,
    Object? productEntity = freezed,
    Object? entityCorePicture = freezed,
    Object? position = freezed,
  }) {
    return _then(_ProductState(
      hashKey: null == hashKey
          ? _self.hashKey
          : hashKey // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      productOrderCount: null == productOrderCount
          ? _self.productOrderCount
          : productOrderCount // ignore: cast_nullable_to_non_nullable
              as int,
      productEntity: freezed == productEntity
          ? _self.productEntity
          : productEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      entityCorePicture: freezed == entityCorePicture
          ? _self.entityCorePicture
          : entityCorePicture // ignore: cast_nullable_to_non_nullable
              as EntityCorePictures?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res>? get productEntity {
    if (_self.productEntity == null) {
      return null;
    }

    return $CategoryEntityCopyWith<$Res>(_self.productEntity!, (value) {
      return _then(_self.copyWith(productEntity: value));
    });
  }

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityCorePicturesCopyWith<$Res>? get entityCorePicture {
    if (_self.entityCorePicture == null) {
      return null;
    }

    return $EntityCorePicturesCopyWith<$Res>(_self.entityCorePicture!, (value) {
      return _then(_self.copyWith(entityCorePicture: value));
    });
  }
}

// dart format on
