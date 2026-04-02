// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_editing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TextEditingState {
  TextEditingController get customerNumber;
  TextEditingController get customerPassword;
  bool get hidePassword;

  /// Create a copy of TextEditingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TextEditingStateCopyWith<TextEditingState> get copyWith =>
      _$TextEditingStateCopyWithImpl<TextEditingState>(
          this as TextEditingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextEditingState &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.customerPassword, customerPassword) ||
                other.customerPassword == customerPassword) &&
            (identical(other.hidePassword, hidePassword) ||
                other.hidePassword == hidePassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, customerNumber, customerPassword, hidePassword);

  @override
  String toString() {
    return 'TextEditingState(customerNumber: $customerNumber, customerPassword: $customerPassword, hidePassword: $hidePassword)';
  }
}

/// @nodoc
abstract mixin class $TextEditingStateCopyWith<$Res> {
  factory $TextEditingStateCopyWith(
          TextEditingState value, $Res Function(TextEditingState) _then) =
      _$TextEditingStateCopyWithImpl;
  @useResult
  $Res call(
      {TextEditingController customerNumber,
      TextEditingController customerPassword,
      bool hidePassword});
}

/// @nodoc
class _$TextEditingStateCopyWithImpl<$Res>
    implements $TextEditingStateCopyWith<$Res> {
  _$TextEditingStateCopyWithImpl(this._self, this._then);

  final TextEditingState _self;
  final $Res Function(TextEditingState) _then;

  /// Create a copy of TextEditingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerNumber = null,
    Object? customerPassword = null,
    Object? hidePassword = null,
  }) {
    return _then(_self.copyWith(
      customerNumber: null == customerNumber
          ? _self.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      customerPassword: null == customerPassword
          ? _self.customerPassword
          : customerPassword // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      hidePassword: null == hidePassword
          ? _self.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [TextEditingState].
extension TextEditingStatePatterns on TextEditingState {
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
    TResult Function(_TextEditingState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TextEditingState() when $default != null:
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
    TResult Function(_TextEditingState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextEditingState():
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
    TResult? Function(_TextEditingState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextEditingState() when $default != null:
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
    TResult Function(TextEditingController customerNumber,
            TextEditingController customerPassword, bool hidePassword)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TextEditingState() when $default != null:
        return $default(
            _that.customerNumber, _that.customerPassword, _that.hidePassword);
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
    TResult Function(TextEditingController customerNumber,
            TextEditingController customerPassword, bool hidePassword)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextEditingState():
        return $default(
            _that.customerNumber, _that.customerPassword, _that.hidePassword);
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
    TResult? Function(TextEditingController customerNumber,
            TextEditingController customerPassword, bool hidePassword)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextEditingState() when $default != null:
        return $default(
            _that.customerNumber, _that.customerPassword, _that.hidePassword);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TextEditingState implements TextEditingState {
  const _TextEditingState(
      {required this.customerNumber,
      required this.customerPassword,
      required this.hidePassword});

  @override
  final TextEditingController customerNumber;
  @override
  final TextEditingController customerPassword;
  @override
  final bool hidePassword;

  /// Create a copy of TextEditingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TextEditingStateCopyWith<_TextEditingState> get copyWith =>
      __$TextEditingStateCopyWithImpl<_TextEditingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TextEditingState &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.customerPassword, customerPassword) ||
                other.customerPassword == customerPassword) &&
            (identical(other.hidePassword, hidePassword) ||
                other.hidePassword == hidePassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, customerNumber, customerPassword, hidePassword);

  @override
  String toString() {
    return 'TextEditingState(customerNumber: $customerNumber, customerPassword: $customerPassword, hidePassword: $hidePassword)';
  }
}

/// @nodoc
abstract mixin class _$TextEditingStateCopyWith<$Res>
    implements $TextEditingStateCopyWith<$Res> {
  factory _$TextEditingStateCopyWith(
          _TextEditingState value, $Res Function(_TextEditingState) _then) =
      __$TextEditingStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {TextEditingController customerNumber,
      TextEditingController customerPassword,
      bool hidePassword});
}

/// @nodoc
class __$TextEditingStateCopyWithImpl<$Res>
    implements _$TextEditingStateCopyWith<$Res> {
  __$TextEditingStateCopyWithImpl(this._self, this._then);

  final _TextEditingState _self;
  final $Res Function(_TextEditingState) _then;

  /// Create a copy of TextEditingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerNumber = null,
    Object? customerPassword = null,
    Object? hidePassword = null,
  }) {
    return _then(_TextEditingState(
      customerNumber: null == customerNumber
          ? _self.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      customerPassword: null == customerPassword
          ? _self.customerPassword
          : customerPassword // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      hidePassword: null == hidePassword
          ? _self.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
