// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryProductModel _$CategoryProductModelFromJson(Map<String, dynamic> json) {
  return _CategoryProductModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryProductModel {
  String? get id => throw _privateConstructorUsedError;
  bool? get isVisible => throw _privateConstructorUsedError;
  String? get productNumber => throw _privateConstructorUsedError;
  String? get productTitle => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  List<String> get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryProductModelCopyWith<CategoryProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductModelCopyWith<$Res> {
  factory $CategoryProductModelCopyWith(CategoryProductModel value,
          $Res Function(CategoryProductModel) then) =
      _$CategoryProductModelCopyWithImpl<$Res, CategoryProductModel>;
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
class _$CategoryProductModelCopyWithImpl<$Res,
        $Val extends CategoryProductModel>
    implements $CategoryProductModelCopyWith<$Res> {
  _$CategoryProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      productNumber: freezed == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      productTitle: freezed == productTitle
          ? _value.productTitle
          : productTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryProductModelImplCopyWith<$Res>
    implements $CategoryProductModelCopyWith<$Res> {
  factory _$$CategoryProductModelImplCopyWith(_$CategoryProductModelImpl value,
          $Res Function(_$CategoryProductModelImpl) then) =
      __$$CategoryProductModelImplCopyWithImpl<$Res>;
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
class __$$CategoryProductModelImplCopyWithImpl<$Res>
    extends _$CategoryProductModelCopyWithImpl<$Res, _$CategoryProductModelImpl>
    implements _$$CategoryProductModelImplCopyWith<$Res> {
  __$$CategoryProductModelImplCopyWithImpl(_$CategoryProductModelImpl _value,
      $Res Function(_$CategoryProductModelImpl) _then)
      : super(_value, _then);

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
    return _then(_$CategoryProductModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      productNumber: freezed == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      productTitle: freezed == productTitle
          ? _value.productTitle
          : productTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CategoryProductModelImpl extends _CategoryProductModel {
  const _$CategoryProductModelImpl(
      {this.id,
      this.isVisible,
      this.productNumber,
      this.productTitle,
      this.type,
      this.price,
      final List<String> attributes = const []})
      : _attributes = attributes,
        super._();

  factory _$CategoryProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryProductModelImplFromJson(json);

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

  @override
  String toString() {
    return 'CategoryProductModel(id: $id, isVisible: $isVisible, productNumber: $productNumber, productTitle: $productTitle, type: $type, price: $price, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductModelImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductModelImplCopyWith<_$CategoryProductModelImpl>
      get copyWith =>
          __$$CategoryProductModelImplCopyWithImpl<_$CategoryProductModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryProductModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryProductModel extends CategoryProductModel {
  const factory _CategoryProductModel(
      {final String? id,
      final bool? isVisible,
      final String? productNumber,
      final String? productTitle,
      final String? type,
      final double? price,
      final List<String> attributes}) = _$CategoryProductModelImpl;
  const _CategoryProductModel._() : super._();

  factory _CategoryProductModel.fromJson(Map<String, dynamic> json) =
      _$CategoryProductModelImpl.fromJson;

  @override
  String? get id;
  @override
  bool? get isVisible;
  @override
  String? get productNumber;
  @override
  String? get productTitle;
  @override
  String? get type;
  @override
  double? get price;
  @override
  List<String> get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CategoryProductModelImplCopyWith<_$CategoryProductModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
