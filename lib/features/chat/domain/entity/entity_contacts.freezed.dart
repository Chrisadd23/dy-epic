// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_contacts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EntityContact {
  String get customerNumber;
  String get email;
  String? get companyName;
  String? get customerName;
  String? get customerSurname;

  /// Create a copy of EntityContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EntityContactCopyWith<EntityContact> get copyWith =>
      _$EntityContactCopyWithImpl<EntityContact>(
          this as EntityContact, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EntityContact &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerSurname, customerSurname) ||
                other.customerSurname == customerSurname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerNumber, email,
      companyName, customerName, customerSurname);

  @override
  String toString() {
    return 'EntityContact(customerNumber: $customerNumber, email: $email, companyName: $companyName, customerName: $customerName, customerSurname: $customerSurname)';
  }
}

/// @nodoc
abstract mixin class $EntityContactCopyWith<$Res> {
  factory $EntityContactCopyWith(
          EntityContact value, $Res Function(EntityContact) _then) =
      _$EntityContactCopyWithImpl;
  @useResult
  $Res call(
      {String customerNumber,
      String email,
      String? companyName,
      String? customerName,
      String? customerSurname});
}

/// @nodoc
class _$EntityContactCopyWithImpl<$Res>
    implements $EntityContactCopyWith<$Res> {
  _$EntityContactCopyWithImpl(this._self, this._then);

  final EntityContact _self;
  final $Res Function(EntityContact) _then;

  /// Create a copy of EntityContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerNumber = null,
    Object? email = null,
    Object? companyName = freezed,
    Object? customerName = freezed,
    Object? customerSurname = freezed,
  }) {
    return _then(_self.copyWith(
      customerNumber: null == customerNumber
          ? _self.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: freezed == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _self.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerSurname: freezed == customerSurname
          ? _self.customerSurname
          : customerSurname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [EntityContact].
extension EntityContactPatterns on EntityContact {
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
    TResult Function(_EntityContact value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EntityContact() when $default != null:
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
    TResult Function(_EntityContact value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntityContact():
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
    TResult? Function(_EntityContact value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntityContact() when $default != null:
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
    TResult Function(String customerNumber, String email, String? companyName,
            String? customerName, String? customerSurname)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EntityContact() when $default != null:
        return $default(_that.customerNumber, _that.email, _that.companyName,
            _that.customerName, _that.customerSurname);
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
    TResult Function(String customerNumber, String email, String? companyName,
            String? customerName, String? customerSurname)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntityContact():
        return $default(_that.customerNumber, _that.email, _that.companyName,
            _that.customerName, _that.customerSurname);
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
    TResult? Function(String customerNumber, String email, String? companyName,
            String? customerName, String? customerSurname)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntityContact() when $default != null:
        return $default(_that.customerNumber, _that.email, _that.companyName,
            _that.customerName, _that.customerSurname);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _EntityContact implements EntityContact {
  const _EntityContact(
      {required this.customerNumber,
      required this.email,
      this.companyName,
      this.customerName,
      this.customerSurname});

  @override
  final String customerNumber;
  @override
  final String email;
  @override
  final String? companyName;
  @override
  final String? customerName;
  @override
  final String? customerSurname;

  /// Create a copy of EntityContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EntityContactCopyWith<_EntityContact> get copyWith =>
      __$EntityContactCopyWithImpl<_EntityContact>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EntityContact &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerSurname, customerSurname) ||
                other.customerSurname == customerSurname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerNumber, email,
      companyName, customerName, customerSurname);

  @override
  String toString() {
    return 'EntityContact(customerNumber: $customerNumber, email: $email, companyName: $companyName, customerName: $customerName, customerSurname: $customerSurname)';
  }
}

/// @nodoc
abstract mixin class _$EntityContactCopyWith<$Res>
    implements $EntityContactCopyWith<$Res> {
  factory _$EntityContactCopyWith(
          _EntityContact value, $Res Function(_EntityContact) _then) =
      __$EntityContactCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String customerNumber,
      String email,
      String? companyName,
      String? customerName,
      String? customerSurname});
}

/// @nodoc
class __$EntityContactCopyWithImpl<$Res>
    implements _$EntityContactCopyWith<$Res> {
  __$EntityContactCopyWithImpl(this._self, this._then);

  final _EntityContact _self;
  final $Res Function(_EntityContact) _then;

  /// Create a copy of EntityContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerNumber = null,
    Object? email = null,
    Object? companyName = freezed,
    Object? customerName = freezed,
    Object? customerSurname = freezed,
  }) {
    return _then(_EntityContact(
      customerNumber: null == customerNumber
          ? _self.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: freezed == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _self.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerSurname: freezed == customerSurname
          ? _self.customerSurname
          : customerSurname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
