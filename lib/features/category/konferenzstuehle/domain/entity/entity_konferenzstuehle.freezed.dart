// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_konferenzstuehle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntityConferenceChair {
  String get categoryName => throw _privateConstructorUsedError;
  List<EntityProduct> get listProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityConferenceChairCopyWith<EntityConferenceChair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityConferenceChairCopyWith<$Res> {
  factory $EntityConferenceChairCopyWith(EntityConferenceChair value,
          $Res Function(EntityConferenceChair) then) =
      _$EntityConferenceChairCopyWithImpl<$Res, EntityConferenceChair>;
  @useResult
  $Res call({String categoryName, List<EntityProduct> listProduct});
}

/// @nodoc
class _$EntityConferenceChairCopyWithImpl<$Res,
        $Val extends EntityConferenceChair>
    implements $EntityConferenceChairCopyWith<$Res> {
  _$EntityConferenceChairCopyWithImpl(this._value, this._then);

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
              as List<EntityProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityConferenceChairImplCopyWith<$Res>
    implements $EntityConferenceChairCopyWith<$Res> {
  factory _$$EntityConferenceChairImplCopyWith(
          _$EntityConferenceChairImpl value,
          $Res Function(_$EntityConferenceChairImpl) then) =
      __$$EntityConferenceChairImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryName, List<EntityProduct> listProduct});
}

/// @nodoc
class __$$EntityConferenceChairImplCopyWithImpl<$Res>
    extends _$EntityConferenceChairCopyWithImpl<$Res,
        _$EntityConferenceChairImpl>
    implements _$$EntityConferenceChairImplCopyWith<$Res> {
  __$$EntityConferenceChairImplCopyWithImpl(_$EntityConferenceChairImpl _value,
      $Res Function(_$EntityConferenceChairImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? listProduct = null,
  }) {
    return _then(_$EntityConferenceChairImpl(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<EntityProduct>,
    ));
  }
}

/// @nodoc

class _$EntityConferenceChairImpl extends _EntityConferenceChair {
  const _$EntityConferenceChairImpl(
      {required this.categoryName,
      required final List<EntityProduct> listProduct})
      : _listProduct = listProduct,
        super._();

  @override
  final String categoryName;
  final List<EntityProduct> _listProduct;
  @override
  List<EntityProduct> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'EntityConferenceChair(categoryName: $categoryName, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityConferenceChairImpl &&
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
  _$$EntityConferenceChairImplCopyWith<_$EntityConferenceChairImpl>
      get copyWith => __$$EntityConferenceChairImplCopyWithImpl<
          _$EntityConferenceChairImpl>(this, _$identity);
}

abstract class _EntityConferenceChair extends EntityConferenceChair {
  const factory _EntityConferenceChair(
          {required final String categoryName,
          required final List<EntityProduct> listProduct}) =
      _$EntityConferenceChairImpl;
  const _EntityConferenceChair._() : super._();

  @override
  String get categoryName;
  @override
  List<EntityProduct> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$EntityConferenceChairImplCopyWith<_$EntityConferenceChairImpl>
      get copyWith => throw _privateConstructorUsedError;
}
