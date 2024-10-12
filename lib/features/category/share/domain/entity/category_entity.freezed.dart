// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryEntity _$CategoryEntityFromJson(Map<String, dynamic> json) {
  return _CategoryEntity.fromJson(json);
}

/// @nodoc
mixin _$CategoryEntity {
  String get productNumber => throw _privateConstructorUsedError;
  String get productTitle => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;
  double? get normalPrice => throw _privateConstructorUsedError;
  List<String>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryEntityCopyWith<CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEntityCopyWith<$Res> {
  factory $CategoryEntityCopyWith(
          CategoryEntity value, $Res Function(CategoryEntity) then) =
      _$CategoryEntityCopyWithImpl<$Res, CategoryEntity>;
  @useResult
  $Res call(
      {String productNumber,
      String productTitle,
      String type,
      bool isVisible,
      double? normalPrice,
      List<String>? attributes});
}

/// @nodoc
class _$CategoryEntityCopyWithImpl<$Res, $Val extends CategoryEntity>
    implements $CategoryEntityCopyWith<$Res> {
  _$CategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productNumber = null,
    Object? productTitle = null,
    Object? type = null,
    Object? isVisible = null,
    Object? normalPrice = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      productTitle: null == productTitle
          ? _value.productTitle
          : productTitle // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      normalPrice: freezed == normalPrice
          ? _value.normalPrice
          : normalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryEntityImplCopyWith<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  factory _$$CategoryEntityImplCopyWith(_$CategoryEntityImpl value,
          $Res Function(_$CategoryEntityImpl) then) =
      __$$CategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productNumber,
      String productTitle,
      String type,
      bool isVisible,
      double? normalPrice,
      List<String>? attributes});
}

/// @nodoc
class __$$CategoryEntityImplCopyWithImpl<$Res>
    extends _$CategoryEntityCopyWithImpl<$Res, _$CategoryEntityImpl>
    implements _$$CategoryEntityImplCopyWith<$Res> {
  __$$CategoryEntityImplCopyWithImpl(
      _$CategoryEntityImpl _value, $Res Function(_$CategoryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productNumber = null,
    Object? productTitle = null,
    Object? type = null,
    Object? isVisible = null,
    Object? normalPrice = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$CategoryEntityImpl(
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      productTitle: null == productTitle
          ? _value.productTitle
          : productTitle // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      normalPrice: freezed == normalPrice
          ? _value.normalPrice
          : normalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CategoryEntityImpl implements _CategoryEntity {
  const _$CategoryEntityImpl(
      {required this.productNumber,
      required this.productTitle,
      required this.type,
      required this.isVisible,
      this.normalPrice,
      final List<String>? attributes})
      : _attributes = attributes;

  factory _$CategoryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryEntityImplFromJson(json);

  @override
  final String productNumber;
  @override
  final String productTitle;
  @override
  final String type;
  @override
  final bool isVisible;
  @override
  final double? normalPrice;
  final List<String>? _attributes;
  @override
  List<String>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryEntity(productNumber: $productNumber, productTitle: $productTitle, type: $type, isVisible: $isVisible, normalPrice: $normalPrice, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryEntityImpl &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            (identical(other.productTitle, productTitle) ||
                other.productTitle == productTitle) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.normalPrice, normalPrice) ||
                other.normalPrice == normalPrice) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productNumber,
      productTitle,
      type,
      isVisible,
      normalPrice,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryEntityImplCopyWith<_$CategoryEntityImpl> get copyWith =>
      __$$CategoryEntityImplCopyWithImpl<_$CategoryEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryEntityImplToJson(
      this,
    );
  }
}

abstract class _CategoryEntity implements CategoryEntity {
  const factory _CategoryEntity(
      {required final String productNumber,
      required final String productTitle,
      required final String type,
      required final bool isVisible,
      final double? normalPrice,
      final List<String>? attributes}) = _$CategoryEntityImpl;

  factory _CategoryEntity.fromJson(Map<String, dynamic> json) =
      _$CategoryEntityImpl.fromJson;

  @override
  String get productNumber;
  @override
  String get productTitle;
  @override
  String get type;
  @override
  bool get isVisible;
  @override
  double? get normalPrice;
  @override
  List<String>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CategoryEntityImplCopyWith<_$CategoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
