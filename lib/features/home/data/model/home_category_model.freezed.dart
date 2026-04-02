// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeCategoryModel {
  String get title;
  String get imgPath;
  String get navigation;
  int get indexPositon;

  /// Create a copy of HomeCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeCategoryModelCopyWith<HomeCategoryModel> get copyWith =>
      _$HomeCategoryModelCopyWithImpl<HomeCategoryModel>(
          this as HomeCategoryModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeCategoryModel &&
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

  @override
  String toString() {
    return 'HomeCategoryModel(title: $title, imgPath: $imgPath, navigation: $navigation, indexPositon: $indexPositon)';
  }
}

/// @nodoc
abstract mixin class $HomeCategoryModelCopyWith<$Res> {
  factory $HomeCategoryModelCopyWith(
          HomeCategoryModel value, $Res Function(HomeCategoryModel) _then) =
      _$HomeCategoryModelCopyWithImpl;
  @useResult
  $Res call(
      {String title, String imgPath, String navigation, int indexPositon});
}

/// @nodoc
class _$HomeCategoryModelCopyWithImpl<$Res>
    implements $HomeCategoryModelCopyWith<$Res> {
  _$HomeCategoryModelCopyWithImpl(this._self, this._then);

  final HomeCategoryModel _self;
  final $Res Function(HomeCategoryModel) _then;

  /// Create a copy of HomeCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imgPath = null,
    Object? navigation = null,
    Object? indexPositon = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: null == imgPath
          ? _self.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      navigation: null == navigation
          ? _self.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as String,
      indexPositon: null == indexPositon
          ? _self.indexPositon
          : indexPositon // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [HomeCategoryModel].
extension HomeCategoryModelPatterns on HomeCategoryModel {
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
    TResult Function(_HomeCategoryModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeCategoryModel() when $default != null:
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
    TResult Function(_HomeCategoryModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeCategoryModel():
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
    TResult? Function(_HomeCategoryModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeCategoryModel() when $default != null:
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
    TResult Function(
            String title, String imgPath, String navigation, int indexPositon)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeCategoryModel() when $default != null:
        return $default(
            _that.title, _that.imgPath, _that.navigation, _that.indexPositon);
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
    TResult Function(
            String title, String imgPath, String navigation, int indexPositon)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeCategoryModel():
        return $default(
            _that.title, _that.imgPath, _that.navigation, _that.indexPositon);
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
    TResult? Function(
            String title, String imgPath, String navigation, int indexPositon)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeCategoryModel() when $default != null:
        return $default(
            _that.title, _that.imgPath, _that.navigation, _that.indexPositon);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HomeCategoryModel implements HomeCategoryModel {
  const _HomeCategoryModel(
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

  /// Create a copy of HomeCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeCategoryModelCopyWith<_HomeCategoryModel> get copyWith =>
      __$HomeCategoryModelCopyWithImpl<_HomeCategoryModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeCategoryModel &&
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

  @override
  String toString() {
    return 'HomeCategoryModel(title: $title, imgPath: $imgPath, navigation: $navigation, indexPositon: $indexPositon)';
  }
}

/// @nodoc
abstract mixin class _$HomeCategoryModelCopyWith<$Res>
    implements $HomeCategoryModelCopyWith<$Res> {
  factory _$HomeCategoryModelCopyWith(
          _HomeCategoryModel value, $Res Function(_HomeCategoryModel) _then) =
      __$HomeCategoryModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title, String imgPath, String navigation, int indexPositon});
}

/// @nodoc
class __$HomeCategoryModelCopyWithImpl<$Res>
    implements _$HomeCategoryModelCopyWith<$Res> {
  __$HomeCategoryModelCopyWithImpl(this._self, this._then);

  final _HomeCategoryModel _self;
  final $Res Function(_HomeCategoryModel) _then;

  /// Create a copy of HomeCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? imgPath = null,
    Object? navigation = null,
    Object? indexPositon = null,
  }) {
    return _then(_HomeCategoryModel(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: null == imgPath
          ? _self.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      navigation: null == navigation
          ? _self.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as String,
      indexPositon: null == indexPositon
          ? _self.indexPositon
          : indexPositon // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
