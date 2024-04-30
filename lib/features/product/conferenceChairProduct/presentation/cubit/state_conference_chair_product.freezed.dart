// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_conference_chair_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StateConferenceChairProduct {
  String get name => throw _privateConstructorUsedError;
  String get productNumber => throw _privateConstructorUsedError;
  Uint8List? get pictureBytes => throw _privateConstructorUsedError;
  List<String> get attributes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateConferenceChairProductCopyWith<StateConferenceChairProduct>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateConferenceChairProductCopyWith<$Res> {
  factory $StateConferenceChairProductCopyWith(
          StateConferenceChairProduct value,
          $Res Function(StateConferenceChairProduct) then) =
      _$StateConferenceChairProductCopyWithImpl<$Res,
          StateConferenceChairProduct>;
  @useResult
  $Res call(
      {String name,
      String productNumber,
      Uint8List? pictureBytes,
      List<String> attributes});
}

/// @nodoc
class _$StateConferenceChairProductCopyWithImpl<$Res,
        $Val extends StateConferenceChairProduct>
    implements $StateConferenceChairProductCopyWith<$Res> {
  _$StateConferenceChairProductCopyWithImpl(this._value, this._then);

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
abstract class _$$StateConferenceChairProductImplCopyWith<$Res>
    implements $StateConferenceChairProductCopyWith<$Res> {
  factory _$$StateConferenceChairProductImplCopyWith(
          _$StateConferenceChairProductImpl value,
          $Res Function(_$StateConferenceChairProductImpl) then) =
      __$$StateConferenceChairProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String productNumber,
      Uint8List? pictureBytes,
      List<String> attributes});
}

/// @nodoc
class __$$StateConferenceChairProductImplCopyWithImpl<$Res>
    extends _$StateConferenceChairProductCopyWithImpl<$Res,
        _$StateConferenceChairProductImpl>
    implements _$$StateConferenceChairProductImplCopyWith<$Res> {
  __$$StateConferenceChairProductImplCopyWithImpl(
      _$StateConferenceChairProductImpl _value,
      $Res Function(_$StateConferenceChairProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? productNumber = null,
    Object? pictureBytes = freezed,
    Object? attributes = null,
  }) {
    return _then(_$StateConferenceChairProductImpl(
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

class _$StateConferenceChairProductImpl
    implements _StateConferenceChairProduct {
  const _$StateConferenceChairProductImpl(
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
    return 'StateConferenceChairProduct(name: $name, productNumber: $productNumber, pictureBytes: $pictureBytes, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateConferenceChairProductImpl &&
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
  _$$StateConferenceChairProductImplCopyWith<_$StateConferenceChairProductImpl>
      get copyWith => __$$StateConferenceChairProductImplCopyWithImpl<
          _$StateConferenceChairProductImpl>(this, _$identity);
}

abstract class _StateConferenceChairProduct
    implements StateConferenceChairProduct {
  const factory _StateConferenceChairProduct(
          {required final String name,
          required final String productNumber,
          final Uint8List? pictureBytes,
          required final List<String> attributes}) =
      _$StateConferenceChairProductImpl;

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
  _$$StateConferenceChairProductImplCopyWith<_$StateConferenceChairProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}
