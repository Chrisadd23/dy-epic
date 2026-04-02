// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_core_pictures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EntityCorePictures {
  String get name;
  Uint8List? get listIntForUint8List;

  /// Create a copy of EntityCorePictures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EntityCorePicturesCopyWith<EntityCorePictures> get copyWith =>
      _$EntityCorePicturesCopyWithImpl<EntityCorePictures>(
          this as EntityCorePictures, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EntityCorePictures &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.listIntForUint8List, listIntForUint8List));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(listIntForUint8List));

  @override
  String toString() {
    return 'EntityCorePictures(name: $name, listIntForUint8List: $listIntForUint8List)';
  }
}

/// @nodoc
abstract mixin class $EntityCorePicturesCopyWith<$Res> {
  factory $EntityCorePicturesCopyWith(
          EntityCorePictures value, $Res Function(EntityCorePictures) _then) =
      _$EntityCorePicturesCopyWithImpl;
  @useResult
  $Res call({String name, Uint8List? listIntForUint8List});
}

/// @nodoc
class _$EntityCorePicturesCopyWithImpl<$Res>
    implements $EntityCorePicturesCopyWith<$Res> {
  _$EntityCorePicturesCopyWithImpl(this._self, this._then);

  final EntityCorePictures _self;
  final $Res Function(EntityCorePictures) _then;

  /// Create a copy of EntityCorePictures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? listIntForUint8List = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      listIntForUint8List: freezed == listIntForUint8List
          ? _self.listIntForUint8List
          : listIntForUint8List // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// Adds pattern-matching-related methods to [EntityCorePictures].
extension EntityCorePicturesPatterns on EntityCorePictures {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EntityCorePictures value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EntityCorePictures() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EntityCorePictures value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntityCorePictures():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EntityCorePictures value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntityCorePictures() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, Uint8List? listIntForUint8List)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EntityCorePictures() when $default != null:
        return $default(_that.name, _that.listIntForUint8List);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, Uint8List? listIntForUint8List) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntityCorePictures():
        return $default(_that.name, _that.listIntForUint8List);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, Uint8List? listIntForUint8List)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntityCorePictures() when $default != null:
        return $default(_that.name, _that.listIntForUint8List);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _EntityCorePictures implements EntityCorePictures {
  const _EntityCorePictures(
      {required this.name, required this.listIntForUint8List});

  @override
  final String name;
  @override
  final Uint8List? listIntForUint8List;

  /// Create a copy of EntityCorePictures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EntityCorePicturesCopyWith<_EntityCorePictures> get copyWith =>
      __$EntityCorePicturesCopyWithImpl<_EntityCorePictures>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EntityCorePictures &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.listIntForUint8List, listIntForUint8List));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(listIntForUint8List));

  @override
  String toString() {
    return 'EntityCorePictures(name: $name, listIntForUint8List: $listIntForUint8List)';
  }
}

/// @nodoc
abstract mixin class _$EntityCorePicturesCopyWith<$Res>
    implements $EntityCorePicturesCopyWith<$Res> {
  factory _$EntityCorePicturesCopyWith(
          _EntityCorePictures value, $Res Function(_EntityCorePictures) _then) =
      __$EntityCorePicturesCopyWithImpl;
  @override
  @useResult
  $Res call({String name, Uint8List? listIntForUint8List});
}

/// @nodoc
class __$EntityCorePicturesCopyWithImpl<$Res>
    implements _$EntityCorePicturesCopyWith<$Res> {
  __$EntityCorePicturesCopyWithImpl(this._self, this._then);

  final _EntityCorePictures _self;
  final $Res Function(_EntityCorePictures) _then;

  /// Create a copy of EntityCorePictures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? listIntForUint8List = freezed,
  }) {
    return _then(_EntityCorePictures(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      listIntForUint8List: freezed == listIntForUint8List
          ? _self.listIntForUint8List
          : listIntForUint8List // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

// dart format on
