// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_office_chair_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateOfficeChairProduct {
  String get name => throw _privateConstructorUsedError;
  String get productNumber => throw _privateConstructorUsedError;
  Uint8List? get pictureBytes => throw _privateConstructorUsedError;
  List<String> get attributes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateOfficeChairProductCopyWith<StateOfficeChairProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateOfficeChairProductCopyWith<$Res> {
  factory $StateOfficeChairProductCopyWith(StateOfficeChairProduct value,
          $Res Function(StateOfficeChairProduct) then) =
      _$StateOfficeChairProductCopyWithImpl<$Res, StateOfficeChairProduct>;
  @useResult
  $Res call(
      {String name,
      String productNumber,
      Uint8List? pictureBytes,
      List<String> attributes});
}

/// @nodoc
class _$StateOfficeChairProductCopyWithImpl<$Res,
        $Val extends StateOfficeChairProduct>
    implements $StateOfficeChairProductCopyWith<$Res> {
  _$StateOfficeChairProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? productNumber = null,
    Object? pictureBytes = freezed,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pictureBytes: freezed == pictureBytes
          ? _value.pictureBytes
          : pictureBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateOfficeChairProductImplCopyWith<$Res>
    implements $StateOfficeChairProductCopyWith<$Res> {
  factory _$$StateOfficeChairProductImplCopyWith(
          _$StateOfficeChairProductImpl value,
          $Res Function(_$StateOfficeChairProductImpl) then) =
      __$$StateOfficeChairProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String productNumber,
      Uint8List? pictureBytes,
      List<String> attributes});
}

/// @nodoc
class __$$StateOfficeChairProductImplCopyWithImpl<$Res>
    extends _$StateOfficeChairProductCopyWithImpl<$Res,
        _$StateOfficeChairProductImpl>
    implements _$$StateOfficeChairProductImplCopyWith<$Res> {
  __$$StateOfficeChairProductImplCopyWithImpl(
      _$StateOfficeChairProductImpl _value,
      $Res Function(_$StateOfficeChairProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? productNumber = null,
    Object? pictureBytes = freezed,
    Object? attributes = null,
  }) {
    return _then(_$StateOfficeChairProductImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pictureBytes: freezed == pictureBytes
          ? _value.pictureBytes
          : pictureBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$StateOfficeChairProductImpl implements _StateOfficeChairProduct {
  const _$StateOfficeChairProductImpl(
      {required this.name,
      required this.productNumber,
      this.pictureBytes,
      required final List<String> attributes})
      : _attributes = attributes;

  @override
  final String name;
  @override
  final String productNumber;
  @override
  final Uint8List? pictureBytes;
  final List<String> _attributes;
  @override
  List<String> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  String toString() {
    return 'StateOfficeChairProduct(name: $name, productNumber: $productNumber, pictureBytes: $pictureBytes, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateOfficeChairProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            const DeepCollectionEquality()
                .equals(other.pictureBytes, pictureBytes) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      productNumber,
      const DeepCollectionEquality().hash(pictureBytes),
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateOfficeChairProductImplCopyWith<_$StateOfficeChairProductImpl>
      get copyWith => __$$StateOfficeChairProductImplCopyWithImpl<
          _$StateOfficeChairProductImpl>(this, _$identity);
}

abstract class _StateOfficeChairProduct implements StateOfficeChairProduct {
  const factory _StateOfficeChairProduct(
      {required final String name,
      required final String productNumber,
      final Uint8List? pictureBytes,
      required final List<String> attributes}) = _$StateOfficeChairProductImpl;

  @override
  String get name;
  @override
  String get productNumber;
  @override
  Uint8List? get pictureBytes;
  @override
  List<String> get attributes;
  @override
  @JsonKey(ignore: true)
  _$$StateOfficeChairProductImplCopyWith<_$StateOfficeChairProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}
