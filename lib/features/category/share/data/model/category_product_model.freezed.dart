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
  String? get productNumber => throw _privateConstructorUsedError;

  String? get productTitle => throw _privateConstructorUsedError;

  String? get type => throw _privateConstructorUsedError;

  @JsonKey(name: 'price')
  double? get normalPrice => throw _privateConstructorUsedError;

  List<String>? get attributes => throw _privateConstructorUsedError;

  List<PricePerSize>? get pricePerSize => throw _privateConstructorUsedError;

  List<FrameColor>? get frameColors => throw _privateConstructorUsedError;

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
      {String? productNumber,
      String? productTitle,
      String? type,
      @JsonKey(name: 'price') double? normalPrice,
      List<String>? attributes,
      List<PricePerSize>? pricePerSize,
      List<FrameColor>? frameColors});
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
    Object? productNumber = freezed,
    Object? productTitle = freezed,
    Object? type = freezed,
    Object? normalPrice = freezed,
    Object? attributes = freezed,
    Object? pricePerSize = freezed,
    Object? frameColors = freezed,
  }) {
    return _then(_value.copyWith(
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
      normalPrice: freezed == normalPrice
          ? _value.normalPrice
          : normalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pricePerSize: freezed == pricePerSize
          ? _value.pricePerSize
          : pricePerSize // ignore: cast_nullable_to_non_nullable
              as List<PricePerSize>?,
      frameColors: freezed == frameColors
          ? _value.frameColors
          : frameColors // ignore: cast_nullable_to_non_nullable
              as List<FrameColor>?,
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
      {String? productNumber,
      String? productTitle,
      String? type,
      @JsonKey(name: 'price') double? normalPrice,
      List<String>? attributes,
      List<PricePerSize>? pricePerSize,
      List<FrameColor>? frameColors});
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
    Object? productNumber = freezed,
    Object? productTitle = freezed,
    Object? type = freezed,
    Object? normalPrice = freezed,
    Object? attributes = freezed,
    Object? pricePerSize = freezed,
    Object? frameColors = freezed,
  }) {
    return _then(_$CategoryProductModelImpl(
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
      normalPrice: freezed == normalPrice
          ? _value.normalPrice
          : normalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pricePerSize: freezed == pricePerSize
          ? _value._pricePerSize
          : pricePerSize // ignore: cast_nullable_to_non_nullable
              as List<PricePerSize>?,
      frameColors: freezed == frameColors
          ? _value._frameColors
          : frameColors // ignore: cast_nullable_to_non_nullable
              as List<FrameColor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryProductModelImpl extends _CategoryProductModel {
  const _$CategoryProductModelImpl(
      {this.productNumber,
      this.productTitle,
      this.type,
      @JsonKey(name: 'price') this.normalPrice,
      final List<String>? attributes,
      final List<PricePerSize>? pricePerSize,
      final List<FrameColor>? frameColors})
      : _attributes = attributes,
        _pricePerSize = pricePerSize,
        _frameColors = frameColors,
        super._();

  factory _$CategoryProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryProductModelImplFromJson(json);

  @override
  final String? productNumber;
  @override
  final String? productTitle;
  @override
  final String? type;
  @override
  @JsonKey(name: 'price')
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

  final List<PricePerSize>? _pricePerSize;

  @override
  List<PricePerSize>? get pricePerSize {
    final value = _pricePerSize;
    if (value == null) return null;
    if (_pricePerSize is EqualUnmodifiableListView) return _pricePerSize;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FrameColor>? _frameColors;

  @override
  List<FrameColor>? get frameColors {
    final value = _frameColors;
    if (value == null) return null;
    if (_frameColors is EqualUnmodifiableListView) return _frameColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryProductModel(productNumber: $productNumber, productTitle: $productTitle, type: $type, normalPrice: $normalPrice, attributes: $attributes, pricePerSize: $pricePerSize, frameColors: $frameColors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductModelImpl &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            (identical(other.productTitle, productTitle) ||
                other.productTitle == productTitle) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.normalPrice, normalPrice) ||
                other.normalPrice == normalPrice) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality()
                .equals(other._pricePerSize, _pricePerSize) &&
            const DeepCollectionEquality()
                .equals(other._frameColors, _frameColors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productNumber,
      productTitle,
      type,
      normalPrice,
      const DeepCollectionEquality().hash(_attributes),
      const DeepCollectionEquality().hash(_pricePerSize),
      const DeepCollectionEquality().hash(_frameColors));

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
      {final String? productNumber,
      final String? productTitle,
      final String? type,
      @JsonKey(name: 'price') final double? normalPrice,
      final List<String>? attributes,
      final List<PricePerSize>? pricePerSize,
      final List<FrameColor>? frameColors}) = _$CategoryProductModelImpl;

  const _CategoryProductModel._() : super._();

  factory _CategoryProductModel.fromJson(Map<String, dynamic> json) =
      _$CategoryProductModelImpl.fromJson;

  @override
  String? get productNumber;

  @override
  String? get productTitle;

  @override
  String? get type;

  @JsonKey(name: 'price')
  double? get normalPrice;

  @override
  List<String>? get attributes;

  @override
  List<PricePerSize>? get pricePerSize;

  @override
  List<FrameColor>? get frameColors;

  @override
  @JsonKey(ignore: true)
  _$$CategoryProductModelImplCopyWith<_$CategoryProductModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PricePerSize _$PricePerSizeFromJson(Map<String, dynamic> json) {
  return _PricePerSize.fromJson(json);
}

/// @nodoc
mixin _$PricePerSize {
  String get height => throw _privateConstructorUsedError;

  String get width => throw _privateConstructorUsedError;

  String get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PricePerSizeCopyWith<PricePerSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricePerSizeCopyWith<$Res> {
  factory $PricePerSizeCopyWith(
          PricePerSize value, $Res Function(PricePerSize) then) =
      _$PricePerSizeCopyWithImpl<$Res, PricePerSize>;

  @useResult
  $Res call({String height, String width, String price});
}

/// @nodoc
class _$PricePerSizeCopyWithImpl<$Res, $Val extends PricePerSize>
    implements $PricePerSizeCopyWith<$Res> {
  _$PricePerSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PricePerSizeImplCopyWith<$Res>
    implements $PricePerSizeCopyWith<$Res> {
  factory _$$PricePerSizeImplCopyWith(
          _$PricePerSizeImpl value, $Res Function(_$PricePerSizeImpl) then) =
      __$$PricePerSizeImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String height, String width, String price});
}

/// @nodoc
class __$$PricePerSizeImplCopyWithImpl<$Res>
    extends _$PricePerSizeCopyWithImpl<$Res, _$PricePerSizeImpl>
    implements _$$PricePerSizeImplCopyWith<$Res> {
  __$$PricePerSizeImplCopyWithImpl(
      _$PricePerSizeImpl _value, $Res Function(_$PricePerSizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? price = null,
  }) {
    return _then(_$PricePerSizeImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PricePerSizeImpl implements _PricePerSize {
  const _$PricePerSizeImpl(
      {required this.height, required this.width, required this.price});

  factory _$PricePerSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricePerSizeImplFromJson(json);

  @override
  final String height;
  @override
  final String width;
  @override
  final String price;

  @override
  String toString() {
    return 'PricePerSize(height: $height, width: $width, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricePerSizeImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, width, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PricePerSizeImplCopyWith<_$PricePerSizeImpl> get copyWith =>
      __$$PricePerSizeImplCopyWithImpl<_$PricePerSizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricePerSizeImplToJson(
      this,
    );
  }
}

abstract class _PricePerSize implements PricePerSize {
  const factory _PricePerSize(
      {required final String height,
      required final String width,
      required final String price}) = _$PricePerSizeImpl;

  factory _PricePerSize.fromJson(Map<String, dynamic> json) =
      _$PricePerSizeImpl.fromJson;

  @override
  String get height;

  @override
  String get width;

  @override
  String get price;

  @override
  @JsonKey(ignore: true)
  _$$PricePerSizeImplCopyWith<_$PricePerSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FrameColor _$FrameColorFromJson(Map<String, dynamic> json) {
  return _FrameColor.fromJson(json);
}

/// @nodoc
mixin _$FrameColor {
  String get color => throw _privateConstructorUsedError;

  String get hexValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FrameColorCopyWith<FrameColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrameColorCopyWith<$Res> {
  factory $FrameColorCopyWith(
          FrameColor value, $Res Function(FrameColor) then) =
      _$FrameColorCopyWithImpl<$Res, FrameColor>;

  @useResult
  $Res call({String color, String hexValue});
}

/// @nodoc
class _$FrameColorCopyWithImpl<$Res, $Val extends FrameColor>
    implements $FrameColorCopyWith<$Res> {
  _$FrameColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? hexValue = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      hexValue: null == hexValue
          ? _value.hexValue
          : hexValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FrameColorImplCopyWith<$Res>
    implements $FrameColorCopyWith<$Res> {
  factory _$$FrameColorImplCopyWith(
          _$FrameColorImpl value, $Res Function(_$FrameColorImpl) then) =
      __$$FrameColorImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String color, String hexValue});
}

/// @nodoc
class __$$FrameColorImplCopyWithImpl<$Res>
    extends _$FrameColorCopyWithImpl<$Res, _$FrameColorImpl>
    implements _$$FrameColorImplCopyWith<$Res> {
  __$$FrameColorImplCopyWithImpl(
      _$FrameColorImpl _value, $Res Function(_$FrameColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? hexValue = null,
  }) {
    return _then(_$FrameColorImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      hexValue: null == hexValue
          ? _value.hexValue
          : hexValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FrameColorImpl implements _FrameColor {
  const _$FrameColorImpl({required this.color, required this.hexValue});

  factory _$FrameColorImpl.fromJson(Map<String, dynamic> json) =>
      _$$FrameColorImplFromJson(json);

  @override
  final String color;
  @override
  final String hexValue;

  @override
  String toString() {
    return 'FrameColor(color: $color, hexValue: $hexValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FrameColorImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.hexValue, hexValue) ||
                other.hexValue == hexValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, hexValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FrameColorImplCopyWith<_$FrameColorImpl> get copyWith =>
      __$$FrameColorImplCopyWithImpl<_$FrameColorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FrameColorImplToJson(
      this,
    );
  }
}

abstract class _FrameColor implements FrameColor {
  const factory _FrameColor(
      {required final String color,
      required final String hexValue}) = _$FrameColorImpl;

  factory _FrameColor.fromJson(Map<String, dynamic> json) =
      _$FrameColorImpl.fromJson;

  @override
  String get color;

  @override
  String get hexValue;

  @override
  @JsonKey(ignore: true)
  _$$FrameColorImplCopyWith<_$FrameColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
