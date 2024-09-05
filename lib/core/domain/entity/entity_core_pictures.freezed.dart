// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_core_pictures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EntityCorePictures _$EntityCorePicturesFromJson(Map<String, dynamic> json) {
  return _EntityCorePictures.fromJson(json);
}

/// @nodoc
mixin _$EntityCorePictures {
  String get name => throw _privateConstructorUsedError;
  List<int> get listIntForUint8List => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityCorePicturesCopyWith<EntityCorePictures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityCorePicturesCopyWith<$Res> {
  factory $EntityCorePicturesCopyWith(
          EntityCorePictures value, $Res Function(EntityCorePictures) then) =
      _$EntityCorePicturesCopyWithImpl<$Res, EntityCorePictures>;
  @useResult
  $Res call({String name, List<int> listIntForUint8List});
}

/// @nodoc
class _$EntityCorePicturesCopyWithImpl<$Res, $Val extends EntityCorePictures>
    implements $EntityCorePicturesCopyWith<$Res> {
  _$EntityCorePicturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? listIntForUint8List = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      listIntForUint8List: null == listIntForUint8List
          ? _value.listIntForUint8List
          : listIntForUint8List // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityCorePicturesImplCopyWith<$Res>
    implements $EntityCorePicturesCopyWith<$Res> {
  factory _$$EntityCorePicturesImplCopyWith(_$EntityCorePicturesImpl value,
          $Res Function(_$EntityCorePicturesImpl) then) =
      __$$EntityCorePicturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<int> listIntForUint8List});
}

/// @nodoc
class __$$EntityCorePicturesImplCopyWithImpl<$Res>
    extends _$EntityCorePicturesCopyWithImpl<$Res, _$EntityCorePicturesImpl>
    implements _$$EntityCorePicturesImplCopyWith<$Res> {
  __$$EntityCorePicturesImplCopyWithImpl(_$EntityCorePicturesImpl _value,
      $Res Function(_$EntityCorePicturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? listIntForUint8List = null,
  }) {
    return _then(_$EntityCorePicturesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      listIntForUint8List: null == listIntForUint8List
          ? _value._listIntForUint8List
          : listIntForUint8List // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$EntityCorePicturesImpl implements _EntityCorePictures {
  const _$EntityCorePicturesImpl(
      {required this.name, required final List<int> listIntForUint8List})
      : _listIntForUint8List = listIntForUint8List;

  factory _$EntityCorePicturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntityCorePicturesImplFromJson(json);

  @override
  final String name;
  final List<int> _listIntForUint8List;
  @override
  List<int> get listIntForUint8List {
    if (_listIntForUint8List is EqualUnmodifiableListView)
      return _listIntForUint8List;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listIntForUint8List);
  }

  @override
  String toString() {
    return 'EntityCorePictures(name: $name, listIntForUint8List: $listIntForUint8List)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityCorePicturesImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._listIntForUint8List, _listIntForUint8List));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_listIntForUint8List));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityCorePicturesImplCopyWith<_$EntityCorePicturesImpl> get copyWith =>
      __$$EntityCorePicturesImplCopyWithImpl<_$EntityCorePicturesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntityCorePicturesImplToJson(
      this,
    );
  }
}

abstract class _EntityCorePictures implements EntityCorePictures {
  const factory _EntityCorePictures(
      {required final String name,
      required final List<int> listIntForUint8List}) = _$EntityCorePicturesImpl;

  factory _EntityCorePictures.fromJson(Map<String, dynamic> json) =
      _$EntityCorePicturesImpl.fromJson;

  @override
  String get name;
  @override
  List<int> get listIntForUint8List;
  @override
  @JsonKey(ignore: true)
  _$$EntityCorePicturesImplCopyWith<_$EntityCorePicturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
