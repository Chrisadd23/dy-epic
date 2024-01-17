// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_office_chair_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntityOfficeChairProduct {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  List<String> get attributes => throw _privateConstructorUsedError;
  String get picturePath => throw _privateConstructorUsedError;
  String get productNumber => throw _privateConstructorUsedError;
  Uint8List? get pictureBytes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityOfficeChairProductCopyWith<EntityOfficeChairProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityOfficeChairProductCopyWith<$Res> {
  factory $EntityOfficeChairProductCopyWith(EntityOfficeChairProduct value,
          $Res Function(EntityOfficeChairProduct) then) =
      _$EntityOfficeChairProductCopyWithImpl<$Res, EntityOfficeChairProduct>;
  @useResult
  $Res call(
      {String name,
      double price,
      List<String> attributes,
      String picturePath,
      String productNumber,
      Uint8List? pictureBytes});
}

/// @nodoc
class _$EntityOfficeChairProductCopyWithImpl<$Res,
        $Val extends EntityOfficeChairProduct>
    implements $EntityOfficeChairProductCopyWith<$Res> {
  _$EntityOfficeChairProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? attributes = null,
    Object? picturePath = null,
    Object? productNumber = null,
    Object? pictureBytes = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      picturePath: null == picturePath
          ? _value.picturePath
          : picturePath // ignore: cast_nullable_to_non_nullable
              as String,
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pictureBytes: freezed == pictureBytes
          ? _value.pictureBytes
          : pictureBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityOfficeChairProductImplCopyWith<$Res>
    implements $EntityOfficeChairProductCopyWith<$Res> {
  factory _$$EntityOfficeChairProductImplCopyWith(
          _$EntityOfficeChairProductImpl value,
          $Res Function(_$EntityOfficeChairProductImpl) then) =
      __$$EntityOfficeChairProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      double price,
      List<String> attributes,
      String picturePath,
      String productNumber,
      Uint8List? pictureBytes});
}

/// @nodoc
class __$$EntityOfficeChairProductImplCopyWithImpl<$Res>
    extends _$EntityOfficeChairProductCopyWithImpl<$Res,
        _$EntityOfficeChairProductImpl>
    implements _$$EntityOfficeChairProductImplCopyWith<$Res> {
  __$$EntityOfficeChairProductImplCopyWithImpl(
      _$EntityOfficeChairProductImpl _value,
      $Res Function(_$EntityOfficeChairProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? attributes = null,
    Object? picturePath = null,
    Object? productNumber = null,
    Object? pictureBytes = freezed,
  }) {
    return _then(_$EntityOfficeChairProductImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      picturePath: null == picturePath
          ? _value.picturePath
          : picturePath // ignore: cast_nullable_to_non_nullable
              as String,
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pictureBytes: freezed == pictureBytes
          ? _value.pictureBytes
          : pictureBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$EntityOfficeChairProductImpl implements _EntityOfficeChairProduct {
  const _$EntityOfficeChairProductImpl(
      {required this.name,
      required this.price,
      required final List<String> attributes,
      required this.picturePath,
      required this.productNumber,
      this.pictureBytes})
      : _attributes = attributes;

  @override
  final String name;
  @override
  final double price;
  final List<String> _attributes;
  @override
  List<String> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  final String picturePath;
  @override
  final String productNumber;
  @override
  final Uint8List? pictureBytes;

  @override
  String toString() {
    return 'EntityOfficeChairProduct(name: $name, price: $price, attributes: $attributes, picturePath: $picturePath, productNumber: $productNumber, pictureBytes: $pictureBytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityOfficeChairProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.picturePath, picturePath) ||
                other.picturePath == picturePath) &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            const DeepCollectionEquality()
                .equals(other.pictureBytes, pictureBytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      price,
      const DeepCollectionEquality().hash(_attributes),
      picturePath,
      productNumber,
      const DeepCollectionEquality().hash(pictureBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityOfficeChairProductImplCopyWith<_$EntityOfficeChairProductImpl>
      get copyWith => __$$EntityOfficeChairProductImplCopyWithImpl<
          _$EntityOfficeChairProductImpl>(this, _$identity);
}

abstract class _EntityOfficeChairProduct implements EntityOfficeChairProduct {
  const factory _EntityOfficeChairProduct(
      {required final String name,
      required final double price,
      required final List<String> attributes,
      required final String picturePath,
      required final String productNumber,
      final Uint8List? pictureBytes}) = _$EntityOfficeChairProductImpl;

  @override
  String get name;
  @override
  double get price;
  @override
  List<String> get attributes;
  @override
  String get picturePath;
  @override
  String get productNumber;
  @override
  Uint8List? get pictureBytes;
  @override
  @JsonKey(ignore: true)
  _$$EntityOfficeChairProductImplCopyWith<_$EntityOfficeChairProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}
