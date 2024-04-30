// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_buerodrehstuehle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EntityBuerodrehstuehle {
  String get categoryName => throw _privateConstructorUsedError;
  List<CategoryProductEntity> get listProduct =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityBuerodrehstuehleCopyWith<EntityBuerodrehstuehle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityBuerodrehstuehleCopyWith<$Res> {
  factory $EntityBuerodrehstuehleCopyWith(EntityBuerodrehstuehle value,
          $Res Function(EntityBuerodrehstuehle) then) =
      _$EntityBuerodrehstuehleCopyWithImpl<$Res, EntityBuerodrehstuehle>;
  @useResult
  $Res call({String categoryName, List<CategoryProductEntity> listProduct});
}

/// @nodoc
class _$EntityBuerodrehstuehleCopyWithImpl<$Res,
        $Val extends EntityBuerodrehstuehle>
    implements $EntityBuerodrehstuehleCopyWith<$Res> {
  _$EntityBuerodrehstuehleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
  }) {
    return _then(_value.copyWith(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _value.listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<CategoryProductEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityBuerodrehstuehleImplCopyWith<$Res>
    implements $EntityBuerodrehstuehleCopyWith<$Res> {
  factory _$$EntityBuerodrehstuehleImplCopyWith(
          _$EntityBuerodrehstuehleImpl value,
          $Res Function(_$EntityBuerodrehstuehleImpl) then) =
      __$$EntityBuerodrehstuehleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryName, List<CategoryProductEntity> listProduct});
}

/// @nodoc
class __$$EntityBuerodrehstuehleImplCopyWithImpl<$Res>
    extends _$EntityBuerodrehstuehleCopyWithImpl<$Res,
        _$EntityBuerodrehstuehleImpl>
    implements _$$EntityBuerodrehstuehleImplCopyWith<$Res> {
  __$$EntityBuerodrehstuehleImplCopyWithImpl(
      _$EntityBuerodrehstuehleImpl _value,
      $Res Function(_$EntityBuerodrehstuehleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
  }) {
    return _then(_$EntityBuerodrehstuehleImpl(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<CategoryProductEntity>,
    ));
  }
}

/// @nodoc

class _$EntityBuerodrehstuehleImpl extends _EntityBuerodrehstuehle {
  const _$EntityBuerodrehstuehleImpl(
      {required this.categoryName,
      required final List<CategoryProductEntity> listProduct})
      : _listProduct = listProduct,
        super._();

  @override
  final String categoryName;
  final List<CategoryProductEntity> _listProduct;
  @override
  List<CategoryProductEntity> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'EntityBuerodrehstuehle(categoryName: $categoryName, listProduct: $listProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityBuerodrehstuehleImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryName,
      const DeepCollectionEquality().hash(_listProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityBuerodrehstuehleImplCopyWith<_$EntityBuerodrehstuehleImpl>
      get copyWith => __$$EntityBuerodrehstuehleImplCopyWithImpl<
          _$EntityBuerodrehstuehleImpl>(this, _$identity);
}

abstract class _EntityBuerodrehstuehle extends EntityBuerodrehstuehle {
  const factory _EntityBuerodrehstuehle(
          {required final String categoryName,
          required final List<CategoryProductEntity> listProduct}) =
      _$EntityBuerodrehstuehleImpl;
  const _EntityBuerodrehstuehle._() : super._();

  @override
  String get categoryName;
  @override
  List<CategoryProductEntity> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$EntityBuerodrehstuehleImplCopyWith<_$EntityBuerodrehstuehleImpl>
      get copyWith => throw _privateConstructorUsedError;
}
