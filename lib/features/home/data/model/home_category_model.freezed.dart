// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeCategoryModel {
  String get title => throw _privateConstructorUsedError;
  String get imgPath => throw _privateConstructorUsedError;
  String get navigation => throw _privateConstructorUsedError;
  int get indexPositon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeCategoryModelCopyWith<HomeCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCategoryModelCopyWith<$Res> {
  factory $HomeCategoryModelCopyWith(
          HomeCategoryModel value, $Res Function(HomeCategoryModel) then) =
      _$HomeCategoryModelCopyWithImpl<$Res, HomeCategoryModel>;
  @useResult
  $Res call(
      {String title, String imgPath, String navigation, int indexPositon});
}

/// @nodoc
class _$HomeCategoryModelCopyWithImpl<$Res, $Val extends HomeCategoryModel>
    implements $HomeCategoryModelCopyWith<$Res> {
  _$HomeCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imgPath = null,
    Object? navigation = null,
    Object? indexPositon = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as String,
      indexPositon: null == indexPositon
          ? _value.indexPositon
          : indexPositon // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeCategoryModelImplCopyWith<$Res>
    implements $HomeCategoryModelCopyWith<$Res> {
  factory _$$HomeCategoryModelImplCopyWith(_$HomeCategoryModelImpl value,
          $Res Function(_$HomeCategoryModelImpl) then) =
      __$$HomeCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String imgPath, String navigation, int indexPositon});
}

/// @nodoc
class __$$HomeCategoryModelImplCopyWithImpl<$Res>
    extends _$HomeCategoryModelCopyWithImpl<$Res, _$HomeCategoryModelImpl>
    implements _$$HomeCategoryModelImplCopyWith<$Res> {
  __$$HomeCategoryModelImplCopyWithImpl(_$HomeCategoryModelImpl _value,
      $Res Function(_$HomeCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imgPath = null,
    Object? navigation = null,
    Object? indexPositon = null,
  }) {
    return _then(_$HomeCategoryModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as String,
      indexPositon: null == indexPositon
          ? _value.indexPositon
          : indexPositon // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeCategoryModelImpl implements _HomeCategoryModel {
  const _$HomeCategoryModelImpl(
      {required this.title,
      required this.imgPath,
      required this.navigation,
      required this.indexPositon});

  @override
  final String title;
  @override
  final String imgPath;
  @override
  final String navigation;
  @override
  final int indexPositon;

  @override
  String toString() {
    return 'HomeCategoryModel(title: $title, imgPath: $imgPath, navigation: $navigation, indexPositon: $indexPositon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeCategoryModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath) &&
            (identical(other.navigation, navigation) ||
                other.navigation == navigation) &&
            (identical(other.indexPositon, indexPositon) ||
                other.indexPositon == indexPositon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, imgPath, navigation, indexPositon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeCategoryModelImplCopyWith<_$HomeCategoryModelImpl> get copyWith =>
      __$$HomeCategoryModelImplCopyWithImpl<_$HomeCategoryModelImpl>(
          this, _$identity);
}

abstract class _HomeCategoryModel implements HomeCategoryModel {
  const factory _HomeCategoryModel(
      {required final String title,
      required final String imgPath,
      required final String navigation,
      required final int indexPositon}) = _$HomeCategoryModelImpl;

  @override
  String get title;
  @override
  String get imgPath;
  @override
  String get navigation;
  @override
  int get indexPositon;
  @override
  @JsonKey(ignore: true)
  _$$HomeCategoryModelImplCopyWith<_$HomeCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
