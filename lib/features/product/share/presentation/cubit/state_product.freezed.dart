// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StateProduct {
  String get hashKey => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get productOrderCount => throw _privateConstructorUsedError;
  EntityProduct? get productEntity => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateProductCopyWith<StateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateProductCopyWith<$Res> {
  factory $StateProductCopyWith(
          StateProduct value, $Res Function(StateProduct) then) =
      _$StateProductCopyWithImpl<$Res, StateProduct>;
  @useResult
  $Res call(
      {String hashKey,
      String category,
      int productOrderCount,
      EntityProduct? productEntity,
      int? position});

  $EntityProductCopyWith<$Res>? get productEntity;
}

/// @nodoc
class _$StateProductCopyWithImpl<$Res, $Val extends StateProduct>
    implements $StateProductCopyWith<$Res> {
  _$StateProductCopyWithImpl(this._value, this._then);

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
              as EntityProduct?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EntityProductCopyWith<$Res>? get productEntity {
    if (_value.productEntity == null) {
      return null;
    }

    return $EntityProductCopyWith<$Res>(_value.productEntity!, (value) {
      return _then(_value.copyWith(productEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateProductImplCopyWith<$Res>
    implements $StateProductCopyWith<$Res> {
  factory _$$StateProductImplCopyWith(
          _$StateProductImpl value, $Res Function(_$StateProductImpl) then) =
      __$$StateProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hashKey,
      String category,
      int productOrderCount,
      EntityProduct? productEntity,
      int? position});

  @override
  $EntityProductCopyWith<$Res>? get productEntity;
}

/// @nodoc
class __$$StateProductImplCopyWithImpl<$Res>
    extends _$StateProductCopyWithImpl<$Res, _$StateProductImpl>
    implements _$$StateProductImplCopyWith<$Res> {
  __$$StateProductImplCopyWithImpl(
      _$StateProductImpl _value, $Res Function(_$StateProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashKey = null,
    Object? category = null,
    Object? productOrderCount = null,
    Object? productEntity = freezed,
    Object? position = freezed,
  }) {
    return _then(_$StateProductImpl(
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
              as EntityProduct?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$StateProductImpl implements _StateProduct {
  const _$StateProductImpl(
      {this.hashKey = '',
      this.category = '',
      this.productOrderCount = 0,
      this.productEntity,
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
  final EntityProduct? productEntity;
  @override
  final int? position;

  @override
  String toString() {
    return 'StateProduct(hashKey: $hashKey, category: $category, productOrderCount: $productOrderCount, productEntity: $productEntity, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateProductImpl &&
            (identical(other.hashKey, hashKey) || other.hashKey == hashKey) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.productOrderCount, productOrderCount) ||
                other.productOrderCount == productOrderCount) &&
            (identical(other.productEntity, productEntity) ||
                other.productEntity == productEntity) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hashKey, category,
      productOrderCount, productEntity, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateProductImplCopyWith<_$StateProductImpl> get copyWith =>
      __$$StateProductImplCopyWithImpl<_$StateProductImpl>(this, _$identity);
}

abstract class _StateProduct implements StateProduct {
  const factory _StateProduct(
      {final String hashKey,
      final String category,
      final int productOrderCount,
      final EntityProduct? productEntity,
      final int? position}) = _$StateProductImpl;

  @override
  String get hashKey;
  @override
  String get category;
  @override
  int get productOrderCount;
  @override
  EntityProduct? get productEntity;
  @override
  int? get position;
  @override
  @JsonKey(ignore: true)
  _$$StateProductImplCopyWith<_$StateProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
