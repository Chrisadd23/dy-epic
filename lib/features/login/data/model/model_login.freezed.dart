// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelLogin {
  CustomerAddress get address;
  String get customerNumber;
  int get userTypeIndex;
  String? get email;
  String? get companyName;
  @JsonKey(name: 'firstname')
  String? get customerName;
  @JsonKey(name: 'lastname')
  String? get customerSurname;
  int? get registrationDate;
  CustomerAddress? get deliveryAddress;
  List<UserNotification> get notifications;
  String? get fToken;

  /// Create a copy of ModelLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModelLoginCopyWith<ModelLogin> get copyWith =>
      _$ModelLoginCopyWithImpl<ModelLogin>(this as ModelLogin, _$identity);

  /// Serializes this ModelLogin to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModelLogin &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.userTypeIndex, userTypeIndex) ||
                other.userTypeIndex == userTypeIndex) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerSurname, customerSurname) ||
                other.customerSurname == customerSurname) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications) &&
            (identical(other.fToken, fToken) || other.fToken == fToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      customerNumber,
      userTypeIndex,
      email,
      companyName,
      customerName,
      customerSurname,
      registrationDate,
      deliveryAddress,
      const DeepCollectionEquality().hash(notifications),
      fToken);

  @override
  String toString() {
    return 'ModelLogin(address: $address, customerNumber: $customerNumber, userTypeIndex: $userTypeIndex, email: $email, companyName: $companyName, customerName: $customerName, customerSurname: $customerSurname, registrationDate: $registrationDate, deliveryAddress: $deliveryAddress, notifications: $notifications, fToken: $fToken)';
  }
}

/// @nodoc
abstract mixin class $ModelLoginCopyWith<$Res> {
  factory $ModelLoginCopyWith(
          ModelLogin value, $Res Function(ModelLogin) _then) =
      _$ModelLoginCopyWithImpl;
  @useResult
  $Res call(
      {CustomerAddress address,
      String customerNumber,
      int userTypeIndex,
      String? email,
      String? companyName,
      @JsonKey(name: 'firstname') String? customerName,
      @JsonKey(name: 'lastname') String? customerSurname,
      int? registrationDate,
      CustomerAddress? deliveryAddress,
      List<UserNotification> notifications,
      String? fToken});

  $CustomerAddressCopyWith<$Res> get address;
  $CustomerAddressCopyWith<$Res>? get deliveryAddress;
}

/// @nodoc
class _$ModelLoginCopyWithImpl<$Res> implements $ModelLoginCopyWith<$Res> {
  _$ModelLoginCopyWithImpl(this._self, this._then);

  final ModelLogin _self;
  final $Res Function(ModelLogin) _then;

  /// Create a copy of ModelLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? customerNumber = null,
    Object? userTypeIndex = null,
    Object? email = freezed,
    Object? companyName = freezed,
    Object? customerName = freezed,
    Object? customerSurname = freezed,
    Object? registrationDate = freezed,
    Object? deliveryAddress = freezed,
    Object? notifications = null,
    Object? fToken = freezed,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as CustomerAddress,
      customerNumber: null == customerNumber
          ? _self.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userTypeIndex: null == userTypeIndex
          ? _self.userTypeIndex
          : userTypeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
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
      registrationDate: freezed == registrationDate
          ? _self.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryAddress: freezed == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddress?,
      notifications: null == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<UserNotification>,
      fToken: freezed == fToken
          ? _self.fToken
          : fToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ModelLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerAddressCopyWith<$Res> get address {
    return $CustomerAddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of ModelLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerAddressCopyWith<$Res>? get deliveryAddress {
    if (_self.deliveryAddress == null) {
      return null;
    }

    return $CustomerAddressCopyWith<$Res>(_self.deliveryAddress!, (value) {
      return _then(_self.copyWith(deliveryAddress: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ModelLogin].
extension ModelLoginPatterns on ModelLogin {
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
    TResult Function(_ModelLogin value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModelLogin() when $default != null:
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
    TResult Function(_ModelLogin value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelLogin():
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
    TResult? Function(_ModelLogin value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelLogin() when $default != null:
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
            CustomerAddress address,
            String customerNumber,
            int userTypeIndex,
            String? email,
            String? companyName,
            @JsonKey(name: 'firstname') String? customerName,
            @JsonKey(name: 'lastname') String? customerSurname,
            int? registrationDate,
            CustomerAddress? deliveryAddress,
            List<UserNotification> notifications,
            String? fToken)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModelLogin() when $default != null:
        return $default(
            _that.address,
            _that.customerNumber,
            _that.userTypeIndex,
            _that.email,
            _that.companyName,
            _that.customerName,
            _that.customerSurname,
            _that.registrationDate,
            _that.deliveryAddress,
            _that.notifications,
            _that.fToken);
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
            CustomerAddress address,
            String customerNumber,
            int userTypeIndex,
            String? email,
            String? companyName,
            @JsonKey(name: 'firstname') String? customerName,
            @JsonKey(name: 'lastname') String? customerSurname,
            int? registrationDate,
            CustomerAddress? deliveryAddress,
            List<UserNotification> notifications,
            String? fToken)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelLogin():
        return $default(
            _that.address,
            _that.customerNumber,
            _that.userTypeIndex,
            _that.email,
            _that.companyName,
            _that.customerName,
            _that.customerSurname,
            _that.registrationDate,
            _that.deliveryAddress,
            _that.notifications,
            _that.fToken);
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
            CustomerAddress address,
            String customerNumber,
            int userTypeIndex,
            String? email,
            String? companyName,
            @JsonKey(name: 'firstname') String? customerName,
            @JsonKey(name: 'lastname') String? customerSurname,
            int? registrationDate,
            CustomerAddress? deliveryAddress,
            List<UserNotification> notifications,
            String? fToken)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelLogin() when $default != null:
        return $default(
            _that.address,
            _that.customerNumber,
            _that.userTypeIndex,
            _that.email,
            _that.companyName,
            _that.customerName,
            _that.customerSurname,
            _that.registrationDate,
            _that.deliveryAddress,
            _that.notifications,
            _that.fToken);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ModelLogin extends ModelLogin {
  const _ModelLogin(
      {required this.address,
      required this.customerNumber,
      required this.userTypeIndex,
      this.email,
      this.companyName,
      @JsonKey(name: 'firstname') this.customerName,
      @JsonKey(name: 'lastname') this.customerSurname,
      this.registrationDate,
      this.deliveryAddress,
      final List<UserNotification> notifications = const [],
      this.fToken})
      : _notifications = notifications,
        super._();
  factory _ModelLogin.fromJson(Map<String, dynamic> json) =>
      _$ModelLoginFromJson(json);

  @override
  final CustomerAddress address;
  @override
  final String customerNumber;
  @override
  final int userTypeIndex;
  @override
  final String? email;
  @override
  final String? companyName;
  @override
  @JsonKey(name: 'firstname')
  final String? customerName;
  @override
  @JsonKey(name: 'lastname')
  final String? customerSurname;
  @override
  final int? registrationDate;
  @override
  final CustomerAddress? deliveryAddress;
  final List<UserNotification> _notifications;
  @override
  @JsonKey()
  List<UserNotification> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  final String? fToken;

  /// Create a copy of ModelLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModelLoginCopyWith<_ModelLogin> get copyWith =>
      __$ModelLoginCopyWithImpl<_ModelLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModelLoginToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelLogin &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.userTypeIndex, userTypeIndex) ||
                other.userTypeIndex == userTypeIndex) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerSurname, customerSurname) ||
                other.customerSurname == customerSurname) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.fToken, fToken) || other.fToken == fToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      customerNumber,
      userTypeIndex,
      email,
      companyName,
      customerName,
      customerSurname,
      registrationDate,
      deliveryAddress,
      const DeepCollectionEquality().hash(_notifications),
      fToken);

  @override
  String toString() {
    return 'ModelLogin(address: $address, customerNumber: $customerNumber, userTypeIndex: $userTypeIndex, email: $email, companyName: $companyName, customerName: $customerName, customerSurname: $customerSurname, registrationDate: $registrationDate, deliveryAddress: $deliveryAddress, notifications: $notifications, fToken: $fToken)';
  }
}

/// @nodoc
abstract mixin class _$ModelLoginCopyWith<$Res>
    implements $ModelLoginCopyWith<$Res> {
  factory _$ModelLoginCopyWith(
          _ModelLogin value, $Res Function(_ModelLogin) _then) =
      __$ModelLoginCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CustomerAddress address,
      String customerNumber,
      int userTypeIndex,
      String? email,
      String? companyName,
      @JsonKey(name: 'firstname') String? customerName,
      @JsonKey(name: 'lastname') String? customerSurname,
      int? registrationDate,
      CustomerAddress? deliveryAddress,
      List<UserNotification> notifications,
      String? fToken});

  @override
  $CustomerAddressCopyWith<$Res> get address;
  @override
  $CustomerAddressCopyWith<$Res>? get deliveryAddress;
}

/// @nodoc
class __$ModelLoginCopyWithImpl<$Res> implements _$ModelLoginCopyWith<$Res> {
  __$ModelLoginCopyWithImpl(this._self, this._then);

  final _ModelLogin _self;
  final $Res Function(_ModelLogin) _then;

  /// Create a copy of ModelLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? customerNumber = null,
    Object? userTypeIndex = null,
    Object? email = freezed,
    Object? companyName = freezed,
    Object? customerName = freezed,
    Object? customerSurname = freezed,
    Object? registrationDate = freezed,
    Object? deliveryAddress = freezed,
    Object? notifications = null,
    Object? fToken = freezed,
  }) {
    return _then(_ModelLogin(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as CustomerAddress,
      customerNumber: null == customerNumber
          ? _self.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userTypeIndex: null == userTypeIndex
          ? _self.userTypeIndex
          : userTypeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
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
      registrationDate: freezed == registrationDate
          ? _self.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryAddress: freezed == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddress?,
      notifications: null == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<UserNotification>,
      fToken: freezed == fToken
          ? _self.fToken
          : fToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ModelLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerAddressCopyWith<$Res> get address {
    return $CustomerAddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of ModelLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerAddressCopyWith<$Res>? get deliveryAddress {
    if (_self.deliveryAddress == null) {
      return null;
    }

    return $CustomerAddressCopyWith<$Res>(_self.deliveryAddress!, (value) {
      return _then(_self.copyWith(deliveryAddress: value));
    });
  }
}

// dart format on
