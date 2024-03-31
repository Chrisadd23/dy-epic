// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_product_workingtable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntityWorkingTableProduct {
  String get name => throw _privateConstructorUsedError;
  String get productNumber => throw _privateConstructorUsedError;
  List<String> get attributes => throw _privateConstructorUsedError;
  List<EntityBreiteUndTiefe>? get breiteXTiefe =>
      throw _privateConstructorUsedError;
  List<EntityGestell>? get frameColors => throw _privateConstructorUsedError;
  Uint8List? get pictureBytes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityWorkingTableProductCopyWith<EntityWorkingTableProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityWorkingTableProductCopyWith<$Res> {
  factory $EntityWorkingTableProductCopyWith(EntityWorkingTableProduct value,
          $Res Function(EntityWorkingTableProduct) then) =
      _$EntityWorkingTableProductCopyWithImpl<$Res, EntityWorkingTableProduct>;
  @useResult
  $Res call(
      {String name,
      String productNumber,
      List<String> attributes,
      List<EntityBreiteUndTiefe>? breiteXTiefe,
      List<EntityGestell>? frameColors,
      Uint8List? pictureBytes});
}

/// @nodoc
class _$EntityWorkingTableProductCopyWithImpl<$Res,
        $Val extends EntityWorkingTableProduct>
    implements $EntityWorkingTableProductCopyWith<$Res> {
  _$EntityWorkingTableProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? productNumber = null,
    Object? attributes = null,
    Object? breiteXTiefe = freezed,
    Object? frameColors = freezed,
    Object? pictureBytes = freezed,
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
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      breiteXTiefe: freezed == breiteXTiefe
          ? _value.breiteXTiefe
          : breiteXTiefe // ignore: cast_nullable_to_non_nullable
              as List<EntityBreiteUndTiefe>?,
      frameColors: freezed == frameColors
          ? _value.frameColors
          : frameColors // ignore: cast_nullable_to_non_nullable
              as List<EntityGestell>?,
      pictureBytes: freezed == pictureBytes
          ? _value.pictureBytes
          : pictureBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityWorkingTableProductImplCopyWith<$Res>
    implements $EntityWorkingTableProductCopyWith<$Res> {
  factory _$$EntityWorkingTableProductImplCopyWith(
          _$EntityWorkingTableProductImpl value,
          $Res Function(_$EntityWorkingTableProductImpl) then) =
      __$$EntityWorkingTableProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String productNumber,
      List<String> attributes,
      List<EntityBreiteUndTiefe>? breiteXTiefe,
      List<EntityGestell>? frameColors,
      Uint8List? pictureBytes});
}

/// @nodoc
class __$$EntityWorkingTableProductImplCopyWithImpl<$Res>
    extends _$EntityWorkingTableProductCopyWithImpl<$Res,
        _$EntityWorkingTableProductImpl>
    implements _$$EntityWorkingTableProductImplCopyWith<$Res> {
  __$$EntityWorkingTableProductImplCopyWithImpl(
      _$EntityWorkingTableProductImpl _value,
      $Res Function(_$EntityWorkingTableProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? productNumber = null,
    Object? attributes = null,
    Object? breiteXTiefe = freezed,
    Object? frameColors = freezed,
    Object? pictureBytes = freezed,
  }) {
    return _then(_$EntityWorkingTableProductImpl(
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
      breiteXTiefe: freezed == breiteXTiefe
          ? _value._breiteXTiefe
          : breiteXTiefe // ignore: cast_nullable_to_non_nullable
              as List<EntityBreiteUndTiefe>?,
      frameColors: freezed == frameColors
          ? _value._frameColors
          : frameColors // ignore: cast_nullable_to_non_nullable
              as List<EntityGestell>?,
      pictureBytes: freezed == pictureBytes
          ? _value.pictureBytes
          : pictureBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$EntityWorkingTableProductImpl implements _EntityWorkingTableProduct {
  const _$EntityWorkingTableProductImpl(
      {required this.name,
      required this.productNumber,
      required final List<String> attributes,
      final List<EntityBreiteUndTiefe>? breiteXTiefe,
      final List<EntityGestell>? frameColors,
      this.pictureBytes})
      : _attributes = attributes,
        _breiteXTiefe = breiteXTiefe,
        _frameColors = frameColors;

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

  final List<EntityBreiteUndTiefe>? _breiteXTiefe;
  @override
  List<EntityBreiteUndTiefe>? get breiteXTiefe {
    final value = _breiteXTiefe;
    if (value == null) return null;
    if (_breiteXTiefe is EqualUnmodifiableListView) return _breiteXTiefe;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EntityGestell>? _frameColors;
  @override
  List<EntityGestell>? get frameColors {
    final value = _frameColors;
    if (value == null) return null;
    if (_frameColors is EqualUnmodifiableListView) return _frameColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Uint8List? pictureBytes;

  @override
  String toString() {
    return 'EntityWorkingTableProduct(name: $name, productNumber: $productNumber, attributes: $attributes, breiteXTiefe: $breiteXTiefe, frameColors: $frameColors, pictureBytes: $pictureBytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityWorkingTableProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality()
                .equals(other._breiteXTiefe, _breiteXTiefe) &&
            const DeepCollectionEquality()
                .equals(other._frameColors, _frameColors) &&
            const DeepCollectionEquality()
                .equals(other.pictureBytes, pictureBytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      productNumber,
      const DeepCollectionEquality().hash(_attributes),
      const DeepCollectionEquality().hash(_breiteXTiefe),
      const DeepCollectionEquality().hash(_frameColors),
      const DeepCollectionEquality().hash(pictureBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityWorkingTableProductImplCopyWith<_$EntityWorkingTableProductImpl>
      get copyWith => __$$EntityWorkingTableProductImplCopyWithImpl<
          _$EntityWorkingTableProductImpl>(this, _$identity);
}

abstract class _EntityWorkingTableProduct implements EntityWorkingTableProduct {
  const factory _EntityWorkingTableProduct(
      {required final String name,
      required final String productNumber,
      required final List<String> attributes,
      final List<EntityBreiteUndTiefe>? breiteXTiefe,
      final List<EntityGestell>? frameColors,
      final Uint8List? pictureBytes}) = _$EntityWorkingTableProductImpl;

  @override
  String get name;
  @override
  String get productNumber;
  @override
  List<String> get attributes;
  @override
  List<EntityBreiteUndTiefe>? get breiteXTiefe;
  @override
  List<EntityGestell>? get frameColors;
  @override
  Uint8List? get pictureBytes;
  @override
  @JsonKey(ignore: true)
  _$$EntityWorkingTableProductImplCopyWith<_$EntityWorkingTableProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntityBreiteUndTiefe {
  String get breite => throw _privateConstructorUsedError;
  String get tiefe => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityBreiteUndTiefeCopyWith<EntityBreiteUndTiefe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityBreiteUndTiefeCopyWith<$Res> {
  factory $EntityBreiteUndTiefeCopyWith(EntityBreiteUndTiefe value,
          $Res Function(EntityBreiteUndTiefe) then) =
      _$EntityBreiteUndTiefeCopyWithImpl<$Res, EntityBreiteUndTiefe>;
  @useResult
  $Res call({String breite, String tiefe, String price});
}

/// @nodoc
class _$EntityBreiteUndTiefeCopyWithImpl<$Res,
        $Val extends EntityBreiteUndTiefe>
    implements $EntityBreiteUndTiefeCopyWith<$Res> {
  _$EntityBreiteUndTiefeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breite = null,
    Object? tiefe = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      breite: null == breite
          ? _value.breite
          : breite // ignore: cast_nullable_to_non_nullable
              as String,
      tiefe: null == tiefe
          ? _value.tiefe
          : tiefe // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityBreiteUndTiefeImplCopyWith<$Res>
    implements $EntityBreiteUndTiefeCopyWith<$Res> {
  factory _$$EntityBreiteUndTiefeImplCopyWith(_$EntityBreiteUndTiefeImpl value,
          $Res Function(_$EntityBreiteUndTiefeImpl) then) =
      __$$EntityBreiteUndTiefeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String breite, String tiefe, String price});
}

/// @nodoc
class __$$EntityBreiteUndTiefeImplCopyWithImpl<$Res>
    extends _$EntityBreiteUndTiefeCopyWithImpl<$Res, _$EntityBreiteUndTiefeImpl>
    implements _$$EntityBreiteUndTiefeImplCopyWith<$Res> {
  __$$EntityBreiteUndTiefeImplCopyWithImpl(_$EntityBreiteUndTiefeImpl _value,
      $Res Function(_$EntityBreiteUndTiefeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breite = null,
    Object? tiefe = null,
    Object? price = null,
  }) {
    return _then(_$EntityBreiteUndTiefeImpl(
      breite: null == breite
          ? _value.breite
          : breite // ignore: cast_nullable_to_non_nullable
              as String,
      tiefe: null == tiefe
          ? _value.tiefe
          : tiefe // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EntityBreiteUndTiefeImpl implements _EntityBreiteUndTiefe {
  const _$EntityBreiteUndTiefeImpl(
      {required this.breite, required this.tiefe, required this.price});

  @override
  final String breite;
  @override
  final String tiefe;
  @override
  final String price;

  @override
  String toString() {
    return 'EntityBreiteUndTiefe(breite: $breite, tiefe: $tiefe, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityBreiteUndTiefeImpl &&
            (identical(other.breite, breite) || other.breite == breite) &&
            (identical(other.tiefe, tiefe) || other.tiefe == tiefe) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, breite, tiefe, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityBreiteUndTiefeImplCopyWith<_$EntityBreiteUndTiefeImpl>
      get copyWith =>
          __$$EntityBreiteUndTiefeImplCopyWithImpl<_$EntityBreiteUndTiefeImpl>(
              this, _$identity);
}

abstract class _EntityBreiteUndTiefe implements EntityBreiteUndTiefe {
  const factory _EntityBreiteUndTiefe(
      {required final String breite,
      required final String tiefe,
      required final String price}) = _$EntityBreiteUndTiefeImpl;

  @override
  String get breite;
  @override
  String get tiefe;
  @override
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$EntityBreiteUndTiefeImplCopyWith<_$EntityBreiteUndTiefeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntityGestell {
  Color get color => throw _privateConstructorUsedError;
  String get material => throw _privateConstructorUsedError;
  Uint8List get picture => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityGestellCopyWith<EntityGestell> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityGestellCopyWith<$Res> {
  factory $EntityGestellCopyWith(
          EntityGestell value, $Res Function(EntityGestell) then) =
      _$EntityGestellCopyWithImpl<$Res, EntityGestell>;
  @useResult
  $Res call({Color color, String material, Uint8List picture, String? name});
}

/// @nodoc
class _$EntityGestellCopyWithImpl<$Res, $Val extends EntityGestell>
    implements $EntityGestellCopyWith<$Res> {
  _$EntityGestellCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? material = null,
    Object? picture = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      material: null == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityGestellImplCopyWith<$Res>
    implements $EntityGestellCopyWith<$Res> {
  factory _$$EntityGestellImplCopyWith(
          _$EntityGestellImpl value, $Res Function(_$EntityGestellImpl) then) =
      __$$EntityGestellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color color, String material, Uint8List picture, String? name});
}

/// @nodoc
class __$$EntityGestellImplCopyWithImpl<$Res>
    extends _$EntityGestellCopyWithImpl<$Res, _$EntityGestellImpl>
    implements _$$EntityGestellImplCopyWith<$Res> {
  __$$EntityGestellImplCopyWithImpl(
      _$EntityGestellImpl _value, $Res Function(_$EntityGestellImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? material = null,
    Object? picture = null,
    Object? name = freezed,
  }) {
    return _then(_$EntityGestellImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      material: null == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EntityGestellImpl implements _EntityGestell {
  const _$EntityGestellImpl(
      {required this.color,
      required this.material,
      required this.picture,
      this.name});

  @override
  final Color color;
  @override
  final String material;
  @override
  final Uint8List picture;
  @override
  final String? name;

  @override
  String toString() {
    return 'EntityGestell(color: $color, material: $material, picture: $picture, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityGestellImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.material, material) ||
                other.material == material) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color, material,
      const DeepCollectionEquality().hash(picture), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityGestellImplCopyWith<_$EntityGestellImpl> get copyWith =>
      __$$EntityGestellImplCopyWithImpl<_$EntityGestellImpl>(this, _$identity);
}

abstract class _EntityGestell implements EntityGestell {
  const factory _EntityGestell(
      {required final Color color,
      required final String material,
      required final Uint8List picture,
      final String? name}) = _$EntityGestellImpl;

  @override
  Color get color;
  @override
  String get material;
  @override
  Uint8List get picture;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$EntityGestellImplCopyWith<_$EntityGestellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
