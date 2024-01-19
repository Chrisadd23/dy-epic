// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntityProduct {
  EnumCategoryProduct get productCategory => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get productNumber => throw _privateConstructorUsedError;
  List<String> get attributes => throw _privateConstructorUsedError;
  Uint8List? get pictureBytes => throw _privateConstructorUsedError;
  int? get offerInPercent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityProductCopyWith<EntityProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityProductCopyWith<$Res> {
  factory $EntityProductCopyWith(
          EntityProduct value, $Res Function(EntityProduct) then) =
      _$EntityProductCopyWithImpl<$Res, EntityProduct>;
  @useResult
  $Res call(
      {EnumCategoryProduct productCategory,
      double price,
      String name,
      String productNumber,
      List<String> attributes,
      Uint8List? pictureBytes,
      int? offerInPercent});
}

/// @nodoc
class _$EntityProductCopyWithImpl<$Res, $Val extends EntityProduct>
    implements $EntityProductCopyWith<$Res> {
  _$EntityProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCategory = null,
    Object? price = null,
    Object? name = null,
    Object? productNumber = null,
    Object? attributes = null,
    Object? pictureBytes = freezed,
    Object? offerInPercent = freezed,
  }) {
    return _then(_value.copyWith(
      productCategory: null == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as EnumCategoryProduct,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pictureBytes: freezed == pictureBytes
          ? _value.pictureBytes
          : pictureBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      offerInPercent: freezed == offerInPercent
          ? _value.offerInPercent
          : offerInPercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityProductImplCopyWith<$Res>
    implements $EntityProductCopyWith<$Res> {
  factory _$$EntityProductImplCopyWith(
          _$EntityProductImpl value, $Res Function(_$EntityProductImpl) then) =
      __$$EntityProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EnumCategoryProduct productCategory,
      double price,
      String name,
      String productNumber,
      List<String> attributes,
      Uint8List? pictureBytes,
      int? offerInPercent});
}

/// @nodoc
class __$$EntityProductImplCopyWithImpl<$Res>
    extends _$EntityProductCopyWithImpl<$Res, _$EntityProductImpl>
    implements _$$EntityProductImplCopyWith<$Res> {
  __$$EntityProductImplCopyWithImpl(
      _$EntityProductImpl _value, $Res Function(_$EntityProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCategory = null,
    Object? price = null,
    Object? name = null,
    Object? productNumber = null,
    Object? attributes = null,
    Object? pictureBytes = freezed,
    Object? offerInPercent = freezed,
  }) {
    return _then(_$EntityProductImpl(
      productCategory: null == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as EnumCategoryProduct,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pictureBytes: freezed == pictureBytes
          ? _value.pictureBytes
          : pictureBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      offerInPercent: freezed == offerInPercent
          ? _value.offerInPercent
          : offerInPercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$EntityProductImpl implements _EntityProduct {
  const _$EntityProductImpl(
      {required this.productCategory,
      required this.price,
      required this.name,
      required this.productNumber,
      required final List<String> attributes,
      this.pictureBytes,
      this.offerInPercent})
      : _attributes = attributes;

  @override
  final EnumCategoryProduct productCategory;
  @override
  final double price;
  @override
  final String name;
  @override
  final String productNumber;
  final List<String> _attributes;
  @override
  List<String> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  final Uint8List? pictureBytes;
  @override
  final int? offerInPercent;

  @override
  String toString() {
    return 'EntityProduct(productCategory: $productCategory, price: $price, name: $name, productNumber: $productNumber, attributes: $attributes, pictureBytes: $pictureBytes, offerInPercent: $offerInPercent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityProductImpl &&
            (identical(other.productCategory, productCategory) ||
                other.productCategory == productCategory) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality()
                .equals(other.pictureBytes, pictureBytes) &&
            (identical(other.offerInPercent, offerInPercent) ||
                other.offerInPercent == offerInPercent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      productCategory,
      price,
      name,
      productNumber,
      const DeepCollectionEquality().hash(_attributes),
      const DeepCollectionEquality().hash(pictureBytes),
      offerInPercent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityProductImplCopyWith<_$EntityProductImpl> get copyWith =>
      __$$EntityProductImplCopyWithImpl<_$EntityProductImpl>(this, _$identity);
}

abstract class _EntityProduct implements EntityProduct {
  const factory _EntityProduct(
      {required final EnumCategoryProduct productCategory,
      required final double price,
      required final String name,
      required final String productNumber,
      required final List<String> attributes,
      final Uint8List? pictureBytes,
      final int? offerInPercent}) = _$EntityProductImpl;

  @override
  EnumCategoryProduct get productCategory;
  @override
  double get price;
  @override
  String get name;
  @override
  String get productNumber;
  @override
  List<String> get attributes;
  @override
  Uint8List? get pictureBytes;
  @override
  int? get offerInPercent;
  @override
  @JsonKey(ignore: true)
  _$$EntityProductImplCopyWith<_$EntityProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
