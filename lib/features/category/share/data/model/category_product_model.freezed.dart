// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryProductModel {
  String? get id;
  bool? get isVisible;
  String? get productNumber;
  String? get productTitle;
  String? get type;
  double? get price;
  List<String> get attributes;

  /// Create a copy of CategoryProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryProductModelCopyWith<CategoryProductModel> get copyWith =>
      _$CategoryProductModelCopyWithImpl<CategoryProductModel>(
          this as CategoryProductModel, _$identity);

  /// Serializes this CategoryProductModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            (identical(other.productTitle, productTitle) ||
                other.productTitle == productTitle) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isVisible,
      productNumber,
      productTitle,
      type,
      price,
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CategoryProductModel(id: $id, isVisible: $isVisible, productNumber: $productNumber, productTitle: $productTitle, type: $type, price: $price, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CategoryProductModelCopyWith<$Res> {
  factory $CategoryProductModelCopyWith(CategoryProductModel value,
          $Res Function(CategoryProductModel) _then) =
      _$CategoryProductModelCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      bool? isVisible,
      String? productNumber,
      String? productTitle,
      String? type,
      double? price,
      List<String> attributes});
}

/// @nodoc
class _$CategoryProductModelCopyWithImpl<$Res>
    implements $CategoryProductModelCopyWith<$Res> {
  _$CategoryProductModelCopyWithImpl(this._self, this._then);

  final CategoryProductModel _self;
  final $Res Function(CategoryProductModel) _then;

  /// Create a copy of CategoryProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isVisible = freezed,
    Object? productNumber = freezed,
    Object? productTitle = freezed,
    Object? type = freezed,
    Object? price = freezed,
    Object? attributes = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isVisible: freezed == isVisible
          ? _self.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      productNumber: freezed == productNumber
          ? _self.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      productTitle: freezed == productTitle
          ? _self.productTitle
          : productTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: null == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CategoryProductModel].
extension CategoryProductModelPatterns on CategoryProductModel {
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
    TResult Function(_CategoryProductModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryProductModel() when $default != null:
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
    TResult Function(_CategoryProductModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryProductModel():
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
    TResult? Function(_CategoryProductModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryProductModel() when $default != null:
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
            String? id,
            bool? isVisible,
            String? productNumber,
            String? productTitle,
            String? type,
            double? price,
            List<String> attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryProductModel() when $default != null:
        return $default(_that.id, _that.isVisible, _that.productNumber,
            _that.productTitle, _that.type, _that.price, _that.attributes);
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
            String? id,
            bool? isVisible,
            String? productNumber,
            String? productTitle,
            String? type,
            double? price,
            List<String> attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryProductModel():
        return $default(_that.id, _that.isVisible, _that.productNumber,
            _that.productTitle, _that.type, _that.price, _that.attributes);
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
            String? id,
            bool? isVisible,
            String? productNumber,
            String? productTitle,
            String? type,
            double? price,
            List<String> attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryProductModel() when $default != null:
        return $default(_that.id, _that.isVisible, _that.productNumber,
            _that.productTitle, _that.type, _that.price, _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _CategoryProductModel extends CategoryProductModel {
  const _CategoryProductModel(
      {this.id,
      this.isVisible,
      this.productNumber,
      this.productTitle,
      this.type,
      this.price,
      final List<String> attributes = const []})
      : _attributes = attributes,
        super._();
  factory _CategoryProductModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryProductModelFromJson(json);

  @override
  final String? id;
  @override
  final bool? isVisible;
  @override
  final String? productNumber;
  @override
  final String? productTitle;
  @override
  final String? type;
  @override
  final double? price;
  final List<String> _attributes;
  @override
  @JsonKey()
  List<String> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  /// Create a copy of CategoryProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryProductModelCopyWith<_CategoryProductModel> get copyWith =>
      __$CategoryProductModelCopyWithImpl<_CategoryProductModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryProductModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            (identical(other.productTitle, productTitle) ||
                other.productTitle == productTitle) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isVisible,
      productNumber,
      productTitle,
      type,
      price,
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'CategoryProductModel(id: $id, isVisible: $isVisible, productNumber: $productNumber, productTitle: $productTitle, type: $type, price: $price, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CategoryProductModelCopyWith<$Res>
    implements $CategoryProductModelCopyWith<$Res> {
  factory _$CategoryProductModelCopyWith(_CategoryProductModel value,
          $Res Function(_CategoryProductModel) _then) =
      __$CategoryProductModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      bool? isVisible,
      String? productNumber,
      String? productTitle,
      String? type,
      double? price,
      List<String> attributes});
}

/// @nodoc
class __$CategoryProductModelCopyWithImpl<$Res>
    implements _$CategoryProductModelCopyWith<$Res> {
  __$CategoryProductModelCopyWithImpl(this._self, this._then);

  final _CategoryProductModel _self;
  final $Res Function(_CategoryProductModel) _then;

  /// Create a copy of CategoryProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? isVisible = freezed,
    Object? productNumber = freezed,
    Object? productTitle = freezed,
    Object? type = freezed,
    Object? price = freezed,
    Object? attributes = null,
  }) {
    return _then(_CategoryProductModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isVisible: freezed == isVisible
          ? _self.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      productNumber: freezed == productNumber
          ? _self.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      productTitle: freezed == productTitle
          ? _self.productTitle
          : productTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: null == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
