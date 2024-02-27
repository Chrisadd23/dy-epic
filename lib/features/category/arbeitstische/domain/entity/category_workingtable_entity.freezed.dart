// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_workingtable_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryWorkingtableEntity {
  String get categoryName => throw _privateConstructorUsedError;
  List<CategoryProductEntity> get listProduct =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryWorkingtableEntityCopyWith<CategoryWorkingtableEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWorkingtableEntityCopyWith<$Res> {
  factory $CategoryWorkingtableEntityCopyWith(CategoryWorkingtableEntity value,
          $Res Function(CategoryWorkingtableEntity) then) =
      _$CategoryWorkingtableEntityCopyWithImpl<$Res,
          CategoryWorkingtableEntity>;
  @useResult
  $Res call({String categoryName, List<CategoryProductEntity> listProduct});
}

/// @nodoc
class _$CategoryWorkingtableEntityCopyWithImpl<$Res,
        $Val extends CategoryWorkingtableEntity>
    implements $CategoryWorkingtableEntityCopyWith<$Res> {
  _$CategoryWorkingtableEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$CategoryWorkingtableEntityImplCopyWith<$Res>
    implements $CategoryWorkingtableEntityCopyWith<$Res> {
  factory _$$CategoryWorkingtableEntityImplCopyWith(
          _$CategoryWorkingtableEntityImpl value,
          $Res Function(_$CategoryWorkingtableEntityImpl) then) =
      __$$CategoryWorkingtableEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryName, List<CategoryProductEntity> listProduct});
}

/// @nodoc
class __$$CategoryWorkingtableEntityImplCopyWithImpl<$Res>
    extends _$CategoryWorkingtableEntityCopyWithImpl<$Res,
        _$CategoryWorkingtableEntityImpl>
    implements _$$CategoryWorkingtableEntityImplCopyWith<$Res> {
  __$$CategoryWorkingtableEntityImplCopyWithImpl(
      _$CategoryWorkingtableEntityImpl _value,
      $Res Function(_$CategoryWorkingtableEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
  }) {
    return _then(_$CategoryWorkingtableEntityImpl(
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

class _$CategoryWorkingtableEntityImpl extends _CategoryWorkingtableEntity {
  const _$CategoryWorkingtableEntityImpl(
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
    return 'CategoryWorkingtableEntity(categoryName: $categoryName, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWorkingtableEntityImpl &&
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
  _$$CategoryWorkingtableEntityImplCopyWith<_$CategoryWorkingtableEntityImpl>
      get copyWith => __$$CategoryWorkingtableEntityImplCopyWithImpl<
          _$CategoryWorkingtableEntityImpl>(this, _$identity);
}

abstract class _CategoryWorkingtableEntity extends CategoryWorkingtableEntity {
  const factory _CategoryWorkingtableEntity(
          {required final String categoryName,
          required final List<CategoryProductEntity> listProduct}) =
      _$CategoryWorkingtableEntityImpl;
  const _CategoryWorkingtableEntity._() : super._();

  @override
  String get categoryName;
  @override
  List<CategoryProductEntity> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$CategoryWorkingtableEntityImplCopyWith<_$CategoryWorkingtableEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
