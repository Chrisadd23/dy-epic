// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_basket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShoppingBasketEntity {
  String get id;
  String get userId;
  int get status;
  List<ShoppingBasketProduct> get products;
  int get sendDate;

  /// Create a copy of ShoppingBasketEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShoppingBasketEntityCopyWith<ShoppingBasketEntity> get copyWith =>
      _$ShoppingBasketEntityCopyWithImpl<ShoppingBasketEntity>(
          this as ShoppingBasketEntity, _$identity);

  /// Serializes this ShoppingBasketEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShoppingBasketEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.products, products) &&
            (identical(other.sendDate, sendDate) ||
                other.sendDate == sendDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, status,
      const DeepCollectionEquality().hash(products), sendDate);

  @override
  String toString() {
    return 'ShoppingBasketEntity(id: $id, userId: $userId, status: $status, products: $products, sendDate: $sendDate)';
  }
}

/// @nodoc
abstract mixin class $ShoppingBasketEntityCopyWith<$Res> {
  factory $ShoppingBasketEntityCopyWith(ShoppingBasketEntity value,
          $Res Function(ShoppingBasketEntity) _then) =
      _$ShoppingBasketEntityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      int status,
      List<ShoppingBasketProduct> products,
      int sendDate});
}

/// @nodoc
class _$ShoppingBasketEntityCopyWithImpl<$Res>
    implements $ShoppingBasketEntityCopyWith<$Res> {
  _$ShoppingBasketEntityCopyWithImpl(this._self, this._then);

  final ShoppingBasketEntity _self;
  final $Res Function(ShoppingBasketEntity) _then;

  /// Create a copy of ShoppingBasketEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? status = null,
    Object? products = null,
    Object? sendDate = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _self.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingBasketProduct>,
      sendDate: null == sendDate
          ? _self.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ShoppingBasketEntity].
extension ShoppingBasketEntityPatterns on ShoppingBasketEntity {
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
    TResult Function(_ShoppingBasketEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShoppingBasketEntity() when $default != null:
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
    TResult Function(_ShoppingBasketEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShoppingBasketEntity():
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
    TResult? Function(_ShoppingBasketEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShoppingBasketEntity() when $default != null:
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
    TResult Function(String id, String userId, int status,
            List<ShoppingBasketProduct> products, int sendDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShoppingBasketEntity() when $default != null:
        return $default(_that.id, _that.userId, _that.status, _that.products,
            _that.sendDate);
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
    TResult Function(String id, String userId, int status,
            List<ShoppingBasketProduct> products, int sendDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShoppingBasketEntity():
        return $default(_that.id, _that.userId, _that.status, _that.products,
            _that.sendDate);
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
    TResult? Function(String id, String userId, int status,
            List<ShoppingBasketProduct> products, int sendDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShoppingBasketEntity() when $default != null:
        return $default(_that.id, _that.userId, _that.status, _that.products,
            _that.sendDate);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ShoppingBasketEntity implements ShoppingBasketEntity {
  const _ShoppingBasketEntity(
      {required this.id,
      required this.userId,
      required this.status,
      required final List<ShoppingBasketProduct> products,
      required this.sendDate})
      : _products = products;
  factory _ShoppingBasketEntity.fromJson(Map<String, dynamic> json) =>
      _$ShoppingBasketEntityFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final int status;
  final List<ShoppingBasketProduct> _products;
  @override
  List<ShoppingBasketProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int sendDate;

  /// Create a copy of ShoppingBasketEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShoppingBasketEntityCopyWith<_ShoppingBasketEntity> get copyWith =>
      __$ShoppingBasketEntityCopyWithImpl<_ShoppingBasketEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ShoppingBasketEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShoppingBasketEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.sendDate, sendDate) ||
                other.sendDate == sendDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, status,
      const DeepCollectionEquality().hash(_products), sendDate);

  @override
  String toString() {
    return 'ShoppingBasketEntity(id: $id, userId: $userId, status: $status, products: $products, sendDate: $sendDate)';
  }
}

/// @nodoc
abstract mixin class _$ShoppingBasketEntityCopyWith<$Res>
    implements $ShoppingBasketEntityCopyWith<$Res> {
  factory _$ShoppingBasketEntityCopyWith(_ShoppingBasketEntity value,
          $Res Function(_ShoppingBasketEntity) _then) =
      __$ShoppingBasketEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      int status,
      List<ShoppingBasketProduct> products,
      int sendDate});
}

/// @nodoc
class __$ShoppingBasketEntityCopyWithImpl<$Res>
    implements _$ShoppingBasketEntityCopyWith<$Res> {
  __$ShoppingBasketEntityCopyWithImpl(this._self, this._then);

  final _ShoppingBasketEntity _self;
  final $Res Function(_ShoppingBasketEntity) _then;

  /// Create a copy of ShoppingBasketEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? status = null,
    Object? products = null,
    Object? sendDate = null,
  }) {
    return _then(_ShoppingBasketEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _self._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingBasketProduct>,
      sendDate: null == sendDate
          ? _self.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$ShoppingBasketProduct {
  CategoryEntity get categoryEntity;
  int get addedTime;
  int get productCount;
  double get completeAmount;

  /// Create a copy of ShoppingBasketProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShoppingBasketProductCopyWith<ShoppingBasketProduct> get copyWith =>
      _$ShoppingBasketProductCopyWithImpl<ShoppingBasketProduct>(
          this as ShoppingBasketProduct, _$identity);

  /// Serializes this ShoppingBasketProduct to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShoppingBasketProduct &&
            (identical(other.categoryEntity, categoryEntity) ||
                other.categoryEntity == categoryEntity) &&
            (identical(other.addedTime, addedTime) ||
                other.addedTime == addedTime) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.completeAmount, completeAmount) ||
                other.completeAmount == completeAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, categoryEntity, addedTime, productCount, completeAmount);

  @override
  String toString() {
    return 'ShoppingBasketProduct(categoryEntity: $categoryEntity, addedTime: $addedTime, productCount: $productCount, completeAmount: $completeAmount)';
  }
}

/// @nodoc
abstract mixin class $ShoppingBasketProductCopyWith<$Res> {
  factory $ShoppingBasketProductCopyWith(ShoppingBasketProduct value,
          $Res Function(ShoppingBasketProduct) _then) =
      _$ShoppingBasketProductCopyWithImpl;
  @useResult
  $Res call(
      {CategoryEntity categoryEntity,
      int addedTime,
      int productCount,
      double completeAmount});

  $CategoryEntityCopyWith<$Res> get categoryEntity;
}

/// @nodoc
class _$ShoppingBasketProductCopyWithImpl<$Res>
    implements $ShoppingBasketProductCopyWith<$Res> {
  _$ShoppingBasketProductCopyWithImpl(this._self, this._then);

  final ShoppingBasketProduct _self;
  final $Res Function(ShoppingBasketProduct) _then;

  /// Create a copy of ShoppingBasketProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryEntity = null,
    Object? addedTime = null,
    Object? productCount = null,
    Object? completeAmount = null,
  }) {
    return _then(_self.copyWith(
      categoryEntity: null == categoryEntity
          ? _self.categoryEntity
          : categoryEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
      addedTime: null == addedTime
          ? _self.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as int,
      productCount: null == productCount
          ? _self.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      completeAmount: null == completeAmount
          ? _self.completeAmount
          : completeAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of ShoppingBasketProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res> get categoryEntity {
    return $CategoryEntityCopyWith<$Res>(_self.categoryEntity, (value) {
      return _then(_self.copyWith(categoryEntity: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ShoppingBasketProduct].
extension ShoppingBasketProductPatterns on ShoppingBasketProduct {
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
    TResult Function(_ShoppingBasketProduct value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShoppingBasketProduct() when $default != null:
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
    TResult Function(_ShoppingBasketProduct value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShoppingBasketProduct():
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
    TResult? Function(_ShoppingBasketProduct value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShoppingBasketProduct() when $default != null:
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
    TResult Function(CategoryEntity categoryEntity, int addedTime,
            int productCount, double completeAmount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShoppingBasketProduct() when $default != null:
        return $default(_that.categoryEntity, _that.addedTime,
            _that.productCount, _that.completeAmount);
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
    TResult Function(CategoryEntity categoryEntity, int addedTime,
            int productCount, double completeAmount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShoppingBasketProduct():
        return $default(_that.categoryEntity, _that.addedTime,
            _that.productCount, _that.completeAmount);
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
    TResult? Function(CategoryEntity categoryEntity, int addedTime,
            int productCount, double completeAmount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShoppingBasketProduct() when $default != null:
        return $default(_that.categoryEntity, _that.addedTime,
            _that.productCount, _that.completeAmount);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ShoppingBasketProduct implements ShoppingBasketProduct {
  const _ShoppingBasketProduct(
      {required this.categoryEntity,
      required this.addedTime,
      required this.productCount,
      required this.completeAmount});
  factory _ShoppingBasketProduct.fromJson(Map<String, dynamic> json) =>
      _$ShoppingBasketProductFromJson(json);

  @override
  final CategoryEntity categoryEntity;
  @override
  final int addedTime;
  @override
  final int productCount;
  @override
  final double completeAmount;

  /// Create a copy of ShoppingBasketProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShoppingBasketProductCopyWith<_ShoppingBasketProduct> get copyWith =>
      __$ShoppingBasketProductCopyWithImpl<_ShoppingBasketProduct>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ShoppingBasketProductToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShoppingBasketProduct &&
            (identical(other.categoryEntity, categoryEntity) ||
                other.categoryEntity == categoryEntity) &&
            (identical(other.addedTime, addedTime) ||
                other.addedTime == addedTime) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.completeAmount, completeAmount) ||
                other.completeAmount == completeAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, categoryEntity, addedTime, productCount, completeAmount);

  @override
  String toString() {
    return 'ShoppingBasketProduct(categoryEntity: $categoryEntity, addedTime: $addedTime, productCount: $productCount, completeAmount: $completeAmount)';
  }
}

/// @nodoc
abstract mixin class _$ShoppingBasketProductCopyWith<$Res>
    implements $ShoppingBasketProductCopyWith<$Res> {
  factory _$ShoppingBasketProductCopyWith(_ShoppingBasketProduct value,
          $Res Function(_ShoppingBasketProduct) _then) =
      __$ShoppingBasketProductCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CategoryEntity categoryEntity,
      int addedTime,
      int productCount,
      double completeAmount});

  @override
  $CategoryEntityCopyWith<$Res> get categoryEntity;
}

/// @nodoc
class __$ShoppingBasketProductCopyWithImpl<$Res>
    implements _$ShoppingBasketProductCopyWith<$Res> {
  __$ShoppingBasketProductCopyWithImpl(this._self, this._then);

  final _ShoppingBasketProduct _self;
  final $Res Function(_ShoppingBasketProduct) _then;

  /// Create a copy of ShoppingBasketProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categoryEntity = null,
    Object? addedTime = null,
    Object? productCount = null,
    Object? completeAmount = null,
  }) {
    return _then(_ShoppingBasketProduct(
      categoryEntity: null == categoryEntity
          ? _self.categoryEntity
          : categoryEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
      addedTime: null == addedTime
          ? _self.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as int,
      productCount: null == productCount
          ? _self.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      completeAmount: null == completeAmount
          ? _self.completeAmount
          : completeAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of ShoppingBasketProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res> get categoryEntity {
    return $CategoryEntityCopyWith<$Res>(_self.categoryEntity, (value) {
      return _then(_self.copyWith(categoryEntity: value));
    });
  }
}

// dart format on
