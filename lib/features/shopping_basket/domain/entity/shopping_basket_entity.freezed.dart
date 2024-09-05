// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_basket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShoppingBasketEntity _$ShoppingBasketEntityFromJson(Map<String, dynamic> json) {
  return _ShoppingBasketEntity.fromJson(json);
}

/// @nodoc
mixin _$ShoppingBasketEntity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  List<ShoppingBasketProduct> get products =>
      throw _privateConstructorUsedError;
  int get sendDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingBasketEntityCopyWith<ShoppingBasketEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingBasketEntityCopyWith<$Res> {
  factory $ShoppingBasketEntityCopyWith(ShoppingBasketEntity value,
          $Res Function(ShoppingBasketEntity) then) =
      _$ShoppingBasketEntityCopyWithImpl<$Res, ShoppingBasketEntity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      int status,
      List<ShoppingBasketProduct> products,
      int sendDate});
}

/// @nodoc
class _$ShoppingBasketEntityCopyWithImpl<$Res,
        $Val extends ShoppingBasketEntity>
    implements $ShoppingBasketEntityCopyWith<$Res> {
  _$ShoppingBasketEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? status = null,
    Object? products = null,
    Object? sendDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingBasketProduct>,
      sendDate: null == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShoppingBasketEntityImplCopyWith<$Res>
    implements $ShoppingBasketEntityCopyWith<$Res> {
  factory _$$ShoppingBasketEntityImplCopyWith(_$ShoppingBasketEntityImpl value,
          $Res Function(_$ShoppingBasketEntityImpl) then) =
      __$$ShoppingBasketEntityImplCopyWithImpl<$Res>;
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
class __$$ShoppingBasketEntityImplCopyWithImpl<$Res>
    extends _$ShoppingBasketEntityCopyWithImpl<$Res, _$ShoppingBasketEntityImpl>
    implements _$$ShoppingBasketEntityImplCopyWith<$Res> {
  __$$ShoppingBasketEntityImplCopyWithImpl(_$ShoppingBasketEntityImpl _value,
      $Res Function(_$ShoppingBasketEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? status = null,
    Object? products = null,
    Object? sendDate = null,
  }) {
    return _then(_$ShoppingBasketEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingBasketProduct>,
      sendDate: null == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ShoppingBasketEntityImpl implements _ShoppingBasketEntity {
  const _$ShoppingBasketEntityImpl(
      {required this.id,
      required this.userId,
      required this.status,
      required final List<ShoppingBasketProduct> products,
      required this.sendDate})
      : _products = products;

  factory _$ShoppingBasketEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoppingBasketEntityImplFromJson(json);

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

  @override
  String toString() {
    return 'ShoppingBasketEntity(id: $id, userId: $userId, status: $status, products: $products, sendDate: $sendDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingBasketEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.sendDate, sendDate) ||
                other.sendDate == sendDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, status,
      const DeepCollectionEquality().hash(_products), sendDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingBasketEntityImplCopyWith<_$ShoppingBasketEntityImpl>
      get copyWith =>
          __$$ShoppingBasketEntityImplCopyWithImpl<_$ShoppingBasketEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoppingBasketEntityImplToJson(
      this,
    );
  }
}

abstract class _ShoppingBasketEntity implements ShoppingBasketEntity {
  const factory _ShoppingBasketEntity(
      {required final String id,
      required final String userId,
      required final int status,
      required final List<ShoppingBasketProduct> products,
      required final int sendDate}) = _$ShoppingBasketEntityImpl;

  factory _ShoppingBasketEntity.fromJson(Map<String, dynamic> json) =
      _$ShoppingBasketEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  int get status;
  @override
  List<ShoppingBasketProduct> get products;
  @override
  int get sendDate;
  @override
  @JsonKey(ignore: true)
  _$$ShoppingBasketEntityImplCopyWith<_$ShoppingBasketEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ShoppingBasketProduct _$ShoppingBasketProductFromJson(
    Map<String, dynamic> json) {
  return _ShoppingBasketProduct.fromJson(json);
}

/// @nodoc
mixin _$ShoppingBasketProduct {
  CategoryEntity get categoryEntity => throw _privateConstructorUsedError;
  int get addedTime => throw _privateConstructorUsedError;
  int get productCount => throw _privateConstructorUsedError;
  String get completeAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingBasketProductCopyWith<ShoppingBasketProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingBasketProductCopyWith<$Res> {
  factory $ShoppingBasketProductCopyWith(ShoppingBasketProduct value,
          $Res Function(ShoppingBasketProduct) then) =
      _$ShoppingBasketProductCopyWithImpl<$Res, ShoppingBasketProduct>;
  @useResult
  $Res call(
      {CategoryEntity categoryEntity,
      int addedTime,
      int productCount,
      String completeAmount});

  $CategoryEntityCopyWith<$Res> get categoryEntity;
}

/// @nodoc
class _$ShoppingBasketProductCopyWithImpl<$Res,
        $Val extends ShoppingBasketProduct>
    implements $ShoppingBasketProductCopyWith<$Res> {
  _$ShoppingBasketProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryEntity = null,
    Object? addedTime = null,
    Object? productCount = null,
    Object? completeAmount = null,
  }) {
    return _then(_value.copyWith(
      categoryEntity: null == categoryEntity
          ? _value.categoryEntity
          : categoryEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as int,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      completeAmount: null == completeAmount
          ? _value.completeAmount
          : completeAmount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res> get categoryEntity {
    return $CategoryEntityCopyWith<$Res>(_value.categoryEntity, (value) {
      return _then(_value.copyWith(categoryEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShoppingBasketProductImplCopyWith<$Res>
    implements $ShoppingBasketProductCopyWith<$Res> {
  factory _$$ShoppingBasketProductImplCopyWith(
          _$ShoppingBasketProductImpl value,
          $Res Function(_$ShoppingBasketProductImpl) then) =
      __$$ShoppingBasketProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CategoryEntity categoryEntity,
      int addedTime,
      int productCount,
      String completeAmount});

  @override
  $CategoryEntityCopyWith<$Res> get categoryEntity;
}

/// @nodoc
class __$$ShoppingBasketProductImplCopyWithImpl<$Res>
    extends _$ShoppingBasketProductCopyWithImpl<$Res,
        _$ShoppingBasketProductImpl>
    implements _$$ShoppingBasketProductImplCopyWith<$Res> {
  __$$ShoppingBasketProductImplCopyWithImpl(_$ShoppingBasketProductImpl _value,
      $Res Function(_$ShoppingBasketProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryEntity = null,
    Object? addedTime = null,
    Object? productCount = null,
    Object? completeAmount = null,
  }) {
    return _then(_$ShoppingBasketProductImpl(
      categoryEntity: null == categoryEntity
          ? _value.categoryEntity
          : categoryEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as int,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      completeAmount: null == completeAmount
          ? _value.completeAmount
          : completeAmount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ShoppingBasketProductImpl implements _ShoppingBasketProduct {
  const _$ShoppingBasketProductImpl(
      {required this.categoryEntity,
      required this.addedTime,
      required this.productCount,
      required this.completeAmount});

  factory _$ShoppingBasketProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoppingBasketProductImplFromJson(json);

  @override
  final CategoryEntity categoryEntity;
  @override
  final int addedTime;
  @override
  final int productCount;
  @override
  final String completeAmount;

  @override
  String toString() {
    return 'ShoppingBasketProduct(categoryEntity: $categoryEntity, addedTime: $addedTime, productCount: $productCount, completeAmount: $completeAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingBasketProductImpl &&
            (identical(other.categoryEntity, categoryEntity) ||
                other.categoryEntity == categoryEntity) &&
            (identical(other.addedTime, addedTime) ||
                other.addedTime == addedTime) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.completeAmount, completeAmount) ||
                other.completeAmount == completeAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, categoryEntity, addedTime, productCount, completeAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingBasketProductImplCopyWith<_$ShoppingBasketProductImpl>
      get copyWith => __$$ShoppingBasketProductImplCopyWithImpl<
          _$ShoppingBasketProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoppingBasketProductImplToJson(
      this,
    );
  }
}

abstract class _ShoppingBasketProduct implements ShoppingBasketProduct {
  const factory _ShoppingBasketProduct(
      {required final CategoryEntity categoryEntity,
      required final int addedTime,
      required final int productCount,
      required final String completeAmount}) = _$ShoppingBasketProductImpl;

  factory _ShoppingBasketProduct.fromJson(Map<String, dynamic> json) =
      _$ShoppingBasketProductImpl.fromJson;

  @override
  CategoryEntity get categoryEntity;
  @override
  int get addedTime;
  @override
  int get productCount;
  @override
  String get completeAmount;
  @override
  @JsonKey(ignore: true)
  _$$ShoppingBasketProductImplCopyWith<_$ShoppingBasketProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Size _$SizeFromJson(Map<String, dynamic> json) {
  return _Size.fromJson(json);
}

/// @nodoc
mixin _$Size {
  String get width =>
      throw _privateConstructorUsedError; // Typ zu double geändert für Maße
  String get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeCopyWith<Size> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeCopyWith<$Res> {
  factory $SizeCopyWith(Size value, $Res Function(Size) then) =
      _$SizeCopyWithImpl<$Res, Size>;
  @useResult
  $Res call({String width, String height});
}

/// @nodoc
class _$SizeCopyWithImpl<$Res, $Val extends Size>
    implements $SizeCopyWith<$Res> {
  _$SizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizeImplCopyWith<$Res> implements $SizeCopyWith<$Res> {
  factory _$$SizeImplCopyWith(
          _$SizeImpl value, $Res Function(_$SizeImpl) then) =
      __$$SizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String width, String height});
}

/// @nodoc
class __$$SizeImplCopyWithImpl<$Res>
    extends _$SizeCopyWithImpl<$Res, _$SizeImpl>
    implements _$$SizeImplCopyWith<$Res> {
  __$$SizeImplCopyWithImpl(_$SizeImpl _value, $Res Function(_$SizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$SizeImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$SizeImpl implements _Size {
  const _$SizeImpl({required this.width, required this.height});

  factory _$SizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeImplFromJson(json);

  @override
  final String width;
// Typ zu double geändert für Maße
  @override
  final String height;

  @override
  String toString() {
    return 'Size(width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeImplCopyWith<_$SizeImpl> get copyWith =>
      __$$SizeImplCopyWithImpl<_$SizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeImplToJson(
      this,
    );
  }
}

abstract class _Size implements Size {
  const factory _Size(
      {required final String width, required final String height}) = _$SizeImpl;

  factory _Size.fromJson(Map<String, dynamic> json) = _$SizeImpl.fromJson;

  @override
  String get width;
  @override // Typ zu double geändert für Maße
  String get height;
  @override
  @JsonKey(ignore: true)
  _$$SizeImplCopyWith<_$SizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
