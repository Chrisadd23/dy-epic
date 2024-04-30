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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EntityProduct {
  EnumCategoryProduct get productCategory => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get productNumber => throw _privateConstructorUsedError;
  List<String> get attributes => throw _privateConstructorUsedError;
  Uint8List? get pictureBytes => throw _privateConstructorUsedError;
  WorkingTableAdditionalAttributes? get workingTableAdditionalAttributes =>
      throw _privateConstructorUsedError;
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
      WorkingTableAdditionalAttributes? workingTableAdditionalAttributes,
      int? offerInPercent});

  $WorkingTableAdditionalAttributesCopyWith<$Res>?
      get workingTableAdditionalAttributes;
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
    Object? workingTableAdditionalAttributes = freezed,
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
      workingTableAdditionalAttributes: freezed ==
              workingTableAdditionalAttributes
          ? _value.workingTableAdditionalAttributes
          : workingTableAdditionalAttributes // ignore: cast_nullable_to_non_nullable
              as WorkingTableAdditionalAttributes?,
      offerInPercent: freezed == offerInPercent
          ? _value.offerInPercent
          : offerInPercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkingTableAdditionalAttributesCopyWith<$Res>?
      get workingTableAdditionalAttributes {
    if (_value.workingTableAdditionalAttributes == null) {
      return null;
    }

    return $WorkingTableAdditionalAttributesCopyWith<$Res>(
        _value.workingTableAdditionalAttributes!, (value) {
      return _then(
          _value.copyWith(workingTableAdditionalAttributes: value) as $Val);
    });
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
      WorkingTableAdditionalAttributes? workingTableAdditionalAttributes,
      int? offerInPercent});

  @override
  $WorkingTableAdditionalAttributesCopyWith<$Res>?
      get workingTableAdditionalAttributes;
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
    Object? workingTableAdditionalAttributes = freezed,
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
      workingTableAdditionalAttributes: freezed ==
              workingTableAdditionalAttributes
          ? _value.workingTableAdditionalAttributes
          : workingTableAdditionalAttributes // ignore: cast_nullable_to_non_nullable
              as WorkingTableAdditionalAttributes?,
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
      this.workingTableAdditionalAttributes,
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
  final WorkingTableAdditionalAttributes? workingTableAdditionalAttributes;
  @override
  final int? offerInPercent;

  @override
  String toString() {
    return 'EntityProduct(productCategory: $productCategory, price: $price, name: $name, productNumber: $productNumber, attributes: $attributes, pictureBytes: $pictureBytes, workingTableAdditionalAttributes: $workingTableAdditionalAttributes, offerInPercent: $offerInPercent)';
  }

  @override
  bool operator ==(Object other) {
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
            (identical(other.workingTableAdditionalAttributes,
                    workingTableAdditionalAttributes) ||
                other.workingTableAdditionalAttributes ==
                    workingTableAdditionalAttributes) &&
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
      workingTableAdditionalAttributes,
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
      final WorkingTableAdditionalAttributes? workingTableAdditionalAttributes,
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
  WorkingTableAdditionalAttributes? get workingTableAdditionalAttributes;
  @override
  int? get offerInPercent;
  @override
  @JsonKey(ignore: true)
  _$$EntityProductImplCopyWith<_$EntityProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkingTableAdditionalAttributes {
  List<EntityGestell> get listEntityGestell =>
      throw _privateConstructorUsedError;
  EntityGestell? get selectedEntityGestell =>
      throw _privateConstructorUsedError;
  List<EntityBreiteUndTiefe> get listBreisteUndTiefe =>
      throw _privateConstructorUsedError;
  EntityBreiteUndTiefe? get selectedBreiteUndTiefe =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkingTableAdditionalAttributesCopyWith<WorkingTableAdditionalAttributes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingTableAdditionalAttributesCopyWith<$Res> {
  factory $WorkingTableAdditionalAttributesCopyWith(
          WorkingTableAdditionalAttributes value,
          $Res Function(WorkingTableAdditionalAttributes) then) =
      _$WorkingTableAdditionalAttributesCopyWithImpl<$Res,
          WorkingTableAdditionalAttributes>;
  @useResult
  $Res call(
      {List<EntityGestell> listEntityGestell,
      EntityGestell? selectedEntityGestell,
      List<EntityBreiteUndTiefe> listBreisteUndTiefe,
      EntityBreiteUndTiefe? selectedBreiteUndTiefe});

  $EntityGestellCopyWith<$Res>? get selectedEntityGestell;
  $EntityBreiteUndTiefeCopyWith<$Res>? get selectedBreiteUndTiefe;
}

/// @nodoc
class _$WorkingTableAdditionalAttributesCopyWithImpl<$Res,
        $Val extends WorkingTableAdditionalAttributes>
    implements $WorkingTableAdditionalAttributesCopyWith<$Res> {
  _$WorkingTableAdditionalAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listEntityGestell = null,
    Object? selectedEntityGestell = freezed,
    Object? listBreisteUndTiefe = null,
    Object? selectedBreiteUndTiefe = freezed,
  }) {
    return _then(_value.copyWith(
      listEntityGestell: null == listEntityGestell
          ? _value.listEntityGestell
          : listEntityGestell // ignore: cast_nullable_to_non_nullable
              as List<EntityGestell>,
      selectedEntityGestell: freezed == selectedEntityGestell
          ? _value.selectedEntityGestell
          : selectedEntityGestell // ignore: cast_nullable_to_non_nullable
              as EntityGestell?,
      listBreisteUndTiefe: null == listBreisteUndTiefe
          ? _value.listBreisteUndTiefe
          : listBreisteUndTiefe // ignore: cast_nullable_to_non_nullable
              as List<EntityBreiteUndTiefe>,
      selectedBreiteUndTiefe: freezed == selectedBreiteUndTiefe
          ? _value.selectedBreiteUndTiefe
          : selectedBreiteUndTiefe // ignore: cast_nullable_to_non_nullable
              as EntityBreiteUndTiefe?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EntityGestellCopyWith<$Res>? get selectedEntityGestell {
    if (_value.selectedEntityGestell == null) {
      return null;
    }

    return $EntityGestellCopyWith<$Res>(_value.selectedEntityGestell!, (value) {
      return _then(_value.copyWith(selectedEntityGestell: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EntityBreiteUndTiefeCopyWith<$Res>? get selectedBreiteUndTiefe {
    if (_value.selectedBreiteUndTiefe == null) {
      return null;
    }

    return $EntityBreiteUndTiefeCopyWith<$Res>(_value.selectedBreiteUndTiefe!,
        (value) {
      return _then(_value.copyWith(selectedBreiteUndTiefe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkingTableAdditionalAttributesImplCopyWith<$Res>
    implements $WorkingTableAdditionalAttributesCopyWith<$Res> {
  factory _$$WorkingTableAdditionalAttributesImplCopyWith(
          _$WorkingTableAdditionalAttributesImpl value,
          $Res Function(_$WorkingTableAdditionalAttributesImpl) then) =
      __$$WorkingTableAdditionalAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EntityGestell> listEntityGestell,
      EntityGestell? selectedEntityGestell,
      List<EntityBreiteUndTiefe> listBreisteUndTiefe,
      EntityBreiteUndTiefe? selectedBreiteUndTiefe});

  @override
  $EntityGestellCopyWith<$Res>? get selectedEntityGestell;
  @override
  $EntityBreiteUndTiefeCopyWith<$Res>? get selectedBreiteUndTiefe;
}

/// @nodoc
class __$$WorkingTableAdditionalAttributesImplCopyWithImpl<$Res>
    extends _$WorkingTableAdditionalAttributesCopyWithImpl<$Res,
        _$WorkingTableAdditionalAttributesImpl>
    implements _$$WorkingTableAdditionalAttributesImplCopyWith<$Res> {
  __$$WorkingTableAdditionalAttributesImplCopyWithImpl(
      _$WorkingTableAdditionalAttributesImpl _value,
      $Res Function(_$WorkingTableAdditionalAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listEntityGestell = null,
    Object? selectedEntityGestell = freezed,
    Object? listBreisteUndTiefe = null,
    Object? selectedBreiteUndTiefe = freezed,
  }) {
    return _then(_$WorkingTableAdditionalAttributesImpl(
      listEntityGestell: null == listEntityGestell
          ? _value._listEntityGestell
          : listEntityGestell // ignore: cast_nullable_to_non_nullable
              as List<EntityGestell>,
      selectedEntityGestell: freezed == selectedEntityGestell
          ? _value.selectedEntityGestell
          : selectedEntityGestell // ignore: cast_nullable_to_non_nullable
              as EntityGestell?,
      listBreisteUndTiefe: null == listBreisteUndTiefe
          ? _value._listBreisteUndTiefe
          : listBreisteUndTiefe // ignore: cast_nullable_to_non_nullable
              as List<EntityBreiteUndTiefe>,
      selectedBreiteUndTiefe: freezed == selectedBreiteUndTiefe
          ? _value.selectedBreiteUndTiefe
          : selectedBreiteUndTiefe // ignore: cast_nullable_to_non_nullable
              as EntityBreiteUndTiefe?,
    ));
  }
}

/// @nodoc

class _$WorkingTableAdditionalAttributesImpl
    implements _WorkingTableAdditionalAttributes {
  const _$WorkingTableAdditionalAttributesImpl(
      {required final List<EntityGestell> listEntityGestell,
      this.selectedEntityGestell,
      required final List<EntityBreiteUndTiefe> listBreisteUndTiefe,
      this.selectedBreiteUndTiefe})
      : _listEntityGestell = listEntityGestell,
        _listBreisteUndTiefe = listBreisteUndTiefe;

  final List<EntityGestell> _listEntityGestell;
  @override
  List<EntityGestell> get listEntityGestell {
    if (_listEntityGestell is EqualUnmodifiableListView)
      return _listEntityGestell;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listEntityGestell);
  }

  @override
  final EntityGestell? selectedEntityGestell;
  final List<EntityBreiteUndTiefe> _listBreisteUndTiefe;
  @override
  List<EntityBreiteUndTiefe> get listBreisteUndTiefe {
    if (_listBreisteUndTiefe is EqualUnmodifiableListView)
      return _listBreisteUndTiefe;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listBreisteUndTiefe);
  }

  @override
  final EntityBreiteUndTiefe? selectedBreiteUndTiefe;

  @override
  String toString() {
    return 'WorkingTableAdditionalAttributes(listEntityGestell: $listEntityGestell, selectedEntityGestell: $selectedEntityGestell, listBreisteUndTiefe: $listBreisteUndTiefe, selectedBreiteUndTiefe: $selectedBreiteUndTiefe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingTableAdditionalAttributesImpl &&
            const DeepCollectionEquality()
                .equals(other._listEntityGestell, _listEntityGestell) &&
            (identical(other.selectedEntityGestell, selectedEntityGestell) ||
                other.selectedEntityGestell == selectedEntityGestell) &&
            const DeepCollectionEquality()
                .equals(other._listBreisteUndTiefe, _listBreisteUndTiefe) &&
            (identical(other.selectedBreiteUndTiefe, selectedBreiteUndTiefe) ||
                other.selectedBreiteUndTiefe == selectedBreiteUndTiefe));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listEntityGestell),
      selectedEntityGestell,
      const DeepCollectionEquality().hash(_listBreisteUndTiefe),
      selectedBreiteUndTiefe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingTableAdditionalAttributesImplCopyWith<
          _$WorkingTableAdditionalAttributesImpl>
      get copyWith => __$$WorkingTableAdditionalAttributesImplCopyWithImpl<
          _$WorkingTableAdditionalAttributesImpl>(this, _$identity);
}

abstract class _WorkingTableAdditionalAttributes
    implements WorkingTableAdditionalAttributes {
  const factory _WorkingTableAdditionalAttributes(
          {required final List<EntityGestell> listEntityGestell,
          final EntityGestell? selectedEntityGestell,
          required final List<EntityBreiteUndTiefe> listBreisteUndTiefe,
          final EntityBreiteUndTiefe? selectedBreiteUndTiefe}) =
      _$WorkingTableAdditionalAttributesImpl;

  @override
  List<EntityGestell> get listEntityGestell;
  @override
  EntityGestell? get selectedEntityGestell;
  @override
  List<EntityBreiteUndTiefe> get listBreisteUndTiefe;
  @override
  EntityBreiteUndTiefe? get selectedBreiteUndTiefe;
  @override
  @JsonKey(ignore: true)
  _$$WorkingTableAdditionalAttributesImplCopyWith<
          _$WorkingTableAdditionalAttributesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
