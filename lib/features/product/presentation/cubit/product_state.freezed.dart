// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductState {
  String get hashKey => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get productOrderCount => throw _privateConstructorUsedError;
  CategoryEntity? get productEntity => throw _privateConstructorUsedError;
  EntityCorePictures? get entityCorePicture =>
      throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
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
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      hashKey: null == hashKey
          ? _value.hashKey
          : hashKey // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      productOrderCount: null == productOrderCount
          ? _value.productOrderCount
          : productOrderCount // ignore: cast_nullable_to_non_nullable
              as int,
      productEntity: freezed == productEntity
          ? _value.productEntity
          : productEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      entityCorePicture: freezed == entityCorePicture
          ? _value.entityCorePicture
          : entityCorePicture // ignore: cast_nullable_to_non_nullable
              as EntityCorePictures?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res>? get productEntity {
    if (_value.productEntity == null) {
      return null;
    }

    return $CategoryEntityCopyWith<$Res>(_value.productEntity!, (value) {
      return _then(_value.copyWith(productEntity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EntityCorePicturesCopyWith<$Res>? get entityCorePicture {
    if (_value.entityCorePicture == null) {
      return null;
    }

    return $EntityCorePicturesCopyWith<$Res>(_value.entityCorePicture!,
        (value) {
      return _then(_value.copyWith(entityCorePicture: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
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
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$ProductStateImpl(
      hashKey: null == hashKey
          ? _value.hashKey
          : hashKey // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      productOrderCount: null == productOrderCount
          ? _value.productOrderCount
          : productOrderCount // ignore: cast_nullable_to_non_nullable
              as int,
      productEntity: freezed == productEntity
          ? _value.productEntity
          : productEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      entityCorePicture: freezed == entityCorePicture
          ? _value.entityCorePicture
          : entityCorePicture // ignore: cast_nullable_to_non_nullable
              as EntityCorePictures?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ProductStateImpl implements _ProductState {
  const _$ProductStateImpl(
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

  @override
  String toString() {
    return 'ProductState(hashKey: $hashKey, category: $category, productOrderCount: $productOrderCount, productEntity: $productEntity, entityCorePicture: $entityCorePicture, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {final String hashKey,
      final String category,
      final int productOrderCount,
      final CategoryEntity? productEntity,
      final EntityCorePictures? entityCorePicture,
      final int? position}) = _$ProductStateImpl;

  @override
  String get hashKey;
  @override
  String get category;
  @override
  int get productOrderCount;
  @override
  CategoryEntity? get productEntity;
  @override
  EntityCorePictures? get entityCorePicture;
  @override
  int? get position;
  @override
  @JsonKey(ignore: true)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
