// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_login_customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EntityLoginCustomer {
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

  /// Create a copy of EntityLoginCustomer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EntityLoginCustomerCopyWith<EntityLoginCustomer> get copyWith =>
      _$EntityLoginCustomerCopyWithImpl<EntityLoginCustomer>(
          this as EntityLoginCustomer, _$identity);

  /// Serializes this EntityLoginCustomer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EntityLoginCustomer &&
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
    return 'EntityLoginCustomer(address: $address, customerNumber: $customerNumber, userTypeIndex: $userTypeIndex, email: $email, companyName: $companyName, customerName: $customerName, customerSurname: $customerSurname, registrationDate: $registrationDate, deliveryAddress: $deliveryAddress, notifications: $notifications, fToken: $fToken)';
  }
}

/// @nodoc
abstract mixin class $EntityLoginCustomerCopyWith<$Res> {
  factory $EntityLoginCustomerCopyWith(
          EntityLoginCustomer value, $Res Function(EntityLoginCustomer) _then) =
      _$EntityLoginCustomerCopyWithImpl;
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
class _$EntityLoginCustomerCopyWithImpl<$Res>
    implements $EntityLoginCustomerCopyWith<$Res> {
  _$EntityLoginCustomerCopyWithImpl(this._self, this._then);

  final EntityLoginCustomer _self;
  final $Res Function(EntityLoginCustomer) _then;

  /// Create a copy of EntityLoginCustomer
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

  /// Create a copy of EntityLoginCustomer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerAddressCopyWith<$Res> get address {
    return $CustomerAddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of EntityLoginCustomer
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

/// Adds pattern-matching-related methods to [EntityLoginCustomer].
extension EntityLoginCustomerPatterns on EntityLoginCustomer {
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
    TResult Function(_EntityLoginCustomer value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EntityLoginCustomer() when $default != null:
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
    TResult Function(_EntityLoginCustomer value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntityLoginCustomer():
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
    TResult? Function(_EntityLoginCustomer value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntityLoginCustomer() when $default != null:
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
      case _EntityLoginCustomer() when $default != null:
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
      case _EntityLoginCustomer():
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
      case _EntityLoginCustomer() when $default != null:
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
class _EntityLoginCustomer extends EntityLoginCustomer {
  const _EntityLoginCustomer(
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
  factory _EntityLoginCustomer.fromJson(Map<String, dynamic> json) =>
      _$EntityLoginCustomerFromJson(json);

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

  /// Create a copy of EntityLoginCustomer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EntityLoginCustomerCopyWith<_EntityLoginCustomer> get copyWith =>
      __$EntityLoginCustomerCopyWithImpl<_EntityLoginCustomer>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EntityLoginCustomerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EntityLoginCustomer &&
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
    return 'EntityLoginCustomer(address: $address, customerNumber: $customerNumber, userTypeIndex: $userTypeIndex, email: $email, companyName: $companyName, customerName: $customerName, customerSurname: $customerSurname, registrationDate: $registrationDate, deliveryAddress: $deliveryAddress, notifications: $notifications, fToken: $fToken)';
  }
}

/// @nodoc
abstract mixin class _$EntityLoginCustomerCopyWith<$Res>
    implements $EntityLoginCustomerCopyWith<$Res> {
  factory _$EntityLoginCustomerCopyWith(_EntityLoginCustomer value,
          $Res Function(_EntityLoginCustomer) _then) =
      __$EntityLoginCustomerCopyWithImpl;
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
class __$EntityLoginCustomerCopyWithImpl<$Res>
    implements _$EntityLoginCustomerCopyWith<$Res> {
  __$EntityLoginCustomerCopyWithImpl(this._self, this._then);

  final _EntityLoginCustomer _self;
  final $Res Function(_EntityLoginCustomer) _then;

  /// Create a copy of EntityLoginCustomer
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
    return _then(_EntityLoginCustomer(
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

  /// Create a copy of EntityLoginCustomer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerAddressCopyWith<$Res> get address {
    return $CustomerAddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of EntityLoginCustomer
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

/// @nodoc
mixin _$CustomerAddress {
  String get street;
  String get city;
  String get zipCode;

  /// Create a copy of CustomerAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerAddressCopyWith<CustomerAddress> get copyWith =>
      _$CustomerAddressCopyWithImpl<CustomerAddress>(
          this as CustomerAddress, _$identity);

  /// Serializes this CustomerAddress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomerAddress &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, street, city, zipCode);

  @override
  String toString() {
    return 'CustomerAddress(street: $street, city: $city, zipCode: $zipCode)';
  }
}

/// @nodoc
abstract mixin class $CustomerAddressCopyWith<$Res> {
  factory $CustomerAddressCopyWith(
          CustomerAddress value, $Res Function(CustomerAddress) _then) =
      _$CustomerAddressCopyWithImpl;
  @useResult
  $Res call({String street, String city, String zipCode});
}

/// @nodoc
class _$CustomerAddressCopyWithImpl<$Res>
    implements $CustomerAddressCopyWith<$Res> {
  _$CustomerAddressCopyWithImpl(this._self, this._then);

  final CustomerAddress _self;
  final $Res Function(CustomerAddress) _then;

  /// Create a copy of CustomerAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? zipCode = null,
  }) {
    return _then(_self.copyWith(
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CustomerAddress].
extension CustomerAddressPatterns on CustomerAddress {
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
    TResult Function(_CustomerAddress value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomerAddress() when $default != null:
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
    TResult Function(_CustomerAddress value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerAddress():
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
    TResult? Function(_CustomerAddress value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerAddress() when $default != null:
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
    TResult Function(String street, String city, String zipCode)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomerAddress() when $default != null:
        return $default(_that.street, _that.city, _that.zipCode);
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
    TResult Function(String street, String city, String zipCode) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerAddress():
        return $default(_that.street, _that.city, _that.zipCode);
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
    TResult? Function(String street, String city, String zipCode)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerAddress() when $default != null:
        return $default(_that.street, _that.city, _that.zipCode);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _CustomerAddress implements CustomerAddress {
  const _CustomerAddress(
      {required this.street, required this.city, required this.zipCode});
  factory _CustomerAddress.fromJson(Map<String, dynamic> json) =>
      _$CustomerAddressFromJson(json);

  @override
  final String street;
  @override
  final String city;
  @override
  final String zipCode;

  /// Create a copy of CustomerAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerAddressCopyWith<_CustomerAddress> get copyWith =>
      __$CustomerAddressCopyWithImpl<_CustomerAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerAddressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerAddress &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, street, city, zipCode);

  @override
  String toString() {
    return 'CustomerAddress(street: $street, city: $city, zipCode: $zipCode)';
  }
}

/// @nodoc
abstract mixin class _$CustomerAddressCopyWith<$Res>
    implements $CustomerAddressCopyWith<$Res> {
  factory _$CustomerAddressCopyWith(
          _CustomerAddress value, $Res Function(_CustomerAddress) _then) =
      __$CustomerAddressCopyWithImpl;
  @override
  @useResult
  $Res call({String street, String city, String zipCode});
}

/// @nodoc
class __$CustomerAddressCopyWithImpl<$Res>
    implements _$CustomerAddressCopyWith<$Res> {
  __$CustomerAddressCopyWithImpl(this._self, this._then);

  final _CustomerAddress _self;
  final $Res Function(_CustomerAddress) _then;

  /// Create a copy of CustomerAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? zipCode = null,
  }) {
    return _then(_CustomerAddress(
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$UserNotification {
  int get statusType;
  bool get active;

  /// Create a copy of UserNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserNotificationCopyWith<UserNotification> get copyWith =>
      _$UserNotificationCopyWithImpl<UserNotification>(
          this as UserNotification, _$identity);

  /// Serializes this UserNotification to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserNotification &&
            (identical(other.statusType, statusType) ||
                other.statusType == statusType) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusType, active);

  @override
  String toString() {
    return 'UserNotification(statusType: $statusType, active: $active)';
  }
}

/// @nodoc
abstract mixin class $UserNotificationCopyWith<$Res> {
  factory $UserNotificationCopyWith(
          UserNotification value, $Res Function(UserNotification) _then) =
      _$UserNotificationCopyWithImpl;
  @useResult
  $Res call({int statusType, bool active});
}

/// @nodoc
class _$UserNotificationCopyWithImpl<$Res>
    implements $UserNotificationCopyWith<$Res> {
  _$UserNotificationCopyWithImpl(this._self, this._then);

  final UserNotification _self;
  final $Res Function(UserNotification) _then;

  /// Create a copy of UserNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusType = null,
    Object? active = null,
  }) {
    return _then(_self.copyWith(
      statusType: null == statusType
          ? _self.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserNotification].
extension UserNotificationPatterns on UserNotification {
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
    TResult Function(_UserNotification value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserNotification() when $default != null:
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
    TResult Function(_UserNotification value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserNotification():
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
    TResult? Function(_UserNotification value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserNotification() when $default != null:
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
    TResult Function(int statusType, bool active)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserNotification() when $default != null:
        return $default(_that.statusType, _that.active);
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
    TResult Function(int statusType, bool active) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserNotification():
        return $default(_that.statusType, _that.active);
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
    TResult? Function(int statusType, bool active)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserNotification() when $default != null:
        return $default(_that.statusType, _that.active);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _UserNotification extends UserNotification {
  const _UserNotification({required this.statusType, required this.active})
      : super._();
  factory _UserNotification.fromJson(Map<String, dynamic> json) =>
      _$UserNotificationFromJson(json);

  @override
  final int statusType;
  @override
  final bool active;

  /// Create a copy of UserNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserNotificationCopyWith<_UserNotification> get copyWith =>
      __$UserNotificationCopyWithImpl<_UserNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserNotificationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserNotification &&
            (identical(other.statusType, statusType) ||
                other.statusType == statusType) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusType, active);

  @override
  String toString() {
    return 'UserNotification(statusType: $statusType, active: $active)';
  }
}

/// @nodoc
abstract mixin class _$UserNotificationCopyWith<$Res>
    implements $UserNotificationCopyWith<$Res> {
  factory _$UserNotificationCopyWith(
          _UserNotification value, $Res Function(_UserNotification) _then) =
      __$UserNotificationCopyWithImpl;
  @override
  @useResult
  $Res call({int statusType, bool active});
}

/// @nodoc
class __$UserNotificationCopyWithImpl<$Res>
    implements _$UserNotificationCopyWith<$Res> {
  __$UserNotificationCopyWithImpl(this._self, this._then);

  final _UserNotification _self;
  final $Res Function(_UserNotification) _then;

  /// Create a copy of UserNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? statusType = null,
    Object? active = null,
  }) {
    return _then(_UserNotification(
      statusType: null == statusType
          ? _self.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
