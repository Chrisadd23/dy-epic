// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_customer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderCustomerState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderCustomerState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderCustomerState()';
  }
}

/// @nodoc
class $OrderCustomerStateCopyWith<$Res> {
  $OrderCustomerStateCopyWith(
      OrderCustomerState _, $Res Function(OrderCustomerState) __);
}

/// Adds pattern-matching-related methods to [OrderCustomerState].
extension OrderCustomerStatePatterns on OrderCustomerState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initialise() when initialise != null:
        return initialise(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Success() when success != null:
        return success(_that);
      case _Failure() when failure != null:
        return failure(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initialise():
        return initialise(_that);
      case _Loading():
        return loading(_that);
      case _Success():
        return success(_that);
      case _Failure():
        return failure(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initialise() when initialise != null:
        return initialise(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Success() when success != null:
        return success(_that);
      case _Failure() when failure != null:
        return failure(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function()? loading,
    TResult Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initialise() when initialise != null:
        return initialise();
      case _Loading() when loading != null:
        return loading();
      case _Success() when success != null:
        return success(_that.sortType, _that.orderList);
      case _Failure() when failure != null:
        return failure(_that.failure);
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
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function() loading,
    required TResult Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initialise():
        return initialise();
      case _Loading():
        return loading();
      case _Success():
        return success(_that.sortType, _that.orderList);
      case _Failure():
        return failure(_that.failure);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function()? loading,
    TResult? Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initialise() when initialise != null:
        return initialise();
      case _Loading() when loading != null:
        return loading();
      case _Success() when success != null:
        return success(_that.sortType, _that.orderList);
      case _Failure() when failure != null:
        return failure(_that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initialise extends OrderCustomerState {
  const _Initialise() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initialise);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderCustomerState.initialise()';
  }
}

/// @nodoc

class _Loading extends OrderCustomerState {
  const _Loading() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderCustomerState.loading()';
  }
}

/// @nodoc

class _Success extends OrderCustomerState {
  const _Success(
      {this.sortType = EnumSortProductOrder.sortDate,
      required final List<OrderEntity>? orderList})
      : _orderList = orderList,
        super._();

  @JsonKey()
  final EnumSortProductOrder sortType;
  final List<OrderEntity>? _orderList;
  List<OrderEntity>? get orderList {
    final value = _orderList;
    if (value == null) return null;
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of OrderCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sortType, const DeepCollectionEquality().hash(_orderList));

  @override
  String toString() {
    return 'OrderCustomerState.success(sortType: $sortType, orderList: $orderList)';
  }
}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res>
    implements $OrderCustomerStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) =
      __$SuccessCopyWithImpl;
  @useResult
  $Res call({EnumSortProductOrder sortType, List<OrderEntity>? orderList});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

  /// Create a copy of OrderCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sortType = null,
    Object? orderList = freezed,
  }) {
    return _then(_Success(
      sortType: null == sortType
          ? _self.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as EnumSortProductOrder,
      orderList: freezed == orderList
          ? _self._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>?,
    ));
  }
}

/// @nodoc

class _Failure extends OrderCustomerState {
  const _Failure({required this.failure}) : super._();

  final Failure failure;

  /// Create a copy of OrderCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @override
  String toString() {
    return 'OrderCustomerState.failure(failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res>
    implements $OrderCustomerStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) =
      __$FailureCopyWithImpl;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

  /// Create a copy of OrderCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
  }) {
    return _then(_Failure(
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of OrderCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_self.failure, (value) {
      return _then(_self.copyWith(failure: value));
    });
  }
}

/// @nodoc
mixin _$ProductOrder {
  String get orderNumber;
  double get amount;
  EnumOrderProcess get enumOrderProcess;
  DateTime get date;
  List<ProductInformation> get productInformationList;
  bool? get hide;

  /// Create a copy of ProductOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductOrderCopyWith<ProductOrder> get copyWith =>
      _$ProductOrderCopyWithImpl<ProductOrder>(
          this as ProductOrder, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductOrder &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.enumOrderProcess, enumOrderProcess) ||
                other.enumOrderProcess == enumOrderProcess) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other.productInformationList, productInformationList) &&
            (identical(other.hide, hide) || other.hide == hide));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderNumber,
      amount,
      enumOrderProcess,
      date,
      const DeepCollectionEquality().hash(productInformationList),
      hide);

  @override
  String toString() {
    return 'ProductOrder(orderNumber: $orderNumber, amount: $amount, enumOrderProcess: $enumOrderProcess, date: $date, productInformationList: $productInformationList, hide: $hide)';
  }
}

/// @nodoc
abstract mixin class $ProductOrderCopyWith<$Res> {
  factory $ProductOrderCopyWith(
          ProductOrder value, $Res Function(ProductOrder) _then) =
      _$ProductOrderCopyWithImpl;
  @useResult
  $Res call(
      {String orderNumber,
      double amount,
      EnumOrderProcess enumOrderProcess,
      DateTime date,
      List<ProductInformation> productInformationList,
      bool? hide});
}

/// @nodoc
class _$ProductOrderCopyWithImpl<$Res> implements $ProductOrderCopyWith<$Res> {
  _$ProductOrderCopyWithImpl(this._self, this._then);

  final ProductOrder _self;
  final $Res Function(ProductOrder) _then;

  /// Create a copy of ProductOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNumber = null,
    Object? amount = null,
    Object? enumOrderProcess = null,
    Object? date = null,
    Object? productInformationList = null,
    Object? hide = freezed,
  }) {
    return _then(_self.copyWith(
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      enumOrderProcess: null == enumOrderProcess
          ? _self.enumOrderProcess
          : enumOrderProcess // ignore: cast_nullable_to_non_nullable
              as EnumOrderProcess,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      productInformationList: null == productInformationList
          ? _self.productInformationList
          : productInformationList // ignore: cast_nullable_to_non_nullable
              as List<ProductInformation>,
      hide: freezed == hide
          ? _self.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductOrder].
extension ProductOrderPatterns on ProductOrder {
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
    TResult Function(_ProductOrder value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductOrder() when $default != null:
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
    TResult Function(_ProductOrder value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductOrder():
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
    TResult? Function(_ProductOrder value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductOrder() when $default != null:
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
            String orderNumber,
            double amount,
            EnumOrderProcess enumOrderProcess,
            DateTime date,
            List<ProductInformation> productInformationList,
            bool? hide)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductOrder() when $default != null:
        return $default(_that.orderNumber, _that.amount, _that.enumOrderProcess,
            _that.date, _that.productInformationList, _that.hide);
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
            String orderNumber,
            double amount,
            EnumOrderProcess enumOrderProcess,
            DateTime date,
            List<ProductInformation> productInformationList,
            bool? hide)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductOrder():
        return $default(_that.orderNumber, _that.amount, _that.enumOrderProcess,
            _that.date, _that.productInformationList, _that.hide);
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
            String orderNumber,
            double amount,
            EnumOrderProcess enumOrderProcess,
            DateTime date,
            List<ProductInformation> productInformationList,
            bool? hide)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductOrder() when $default != null:
        return $default(_that.orderNumber, _that.amount, _that.enumOrderProcess,
            _that.date, _that.productInformationList, _that.hide);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProductOrder implements ProductOrder {
  const _ProductOrder(
      {required this.orderNumber,
      required this.amount,
      required this.enumOrderProcess,
      required this.date,
      required final List<ProductInformation> productInformationList,
      this.hide = false})
      : _productInformationList = productInformationList;

  @override
  final String orderNumber;
  @override
  final double amount;
  @override
  final EnumOrderProcess enumOrderProcess;
  @override
  final DateTime date;
  final List<ProductInformation> _productInformationList;
  @override
  List<ProductInformation> get productInformationList {
    if (_productInformationList is EqualUnmodifiableListView)
      return _productInformationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productInformationList);
  }

  @override
  @JsonKey()
  final bool? hide;

  /// Create a copy of ProductOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductOrderCopyWith<_ProductOrder> get copyWith =>
      __$ProductOrderCopyWithImpl<_ProductOrder>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductOrder &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.enumOrderProcess, enumOrderProcess) ||
                other.enumOrderProcess == enumOrderProcess) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(
                other._productInformationList, _productInformationList) &&
            (identical(other.hide, hide) || other.hide == hide));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderNumber,
      amount,
      enumOrderProcess,
      date,
      const DeepCollectionEquality().hash(_productInformationList),
      hide);

  @override
  String toString() {
    return 'ProductOrder(orderNumber: $orderNumber, amount: $amount, enumOrderProcess: $enumOrderProcess, date: $date, productInformationList: $productInformationList, hide: $hide)';
  }
}

/// @nodoc
abstract mixin class _$ProductOrderCopyWith<$Res>
    implements $ProductOrderCopyWith<$Res> {
  factory _$ProductOrderCopyWith(
          _ProductOrder value, $Res Function(_ProductOrder) _then) =
      __$ProductOrderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String orderNumber,
      double amount,
      EnumOrderProcess enumOrderProcess,
      DateTime date,
      List<ProductInformation> productInformationList,
      bool? hide});
}

/// @nodoc
class __$ProductOrderCopyWithImpl<$Res>
    implements _$ProductOrderCopyWith<$Res> {
  __$ProductOrderCopyWithImpl(this._self, this._then);

  final _ProductOrder _self;
  final $Res Function(_ProductOrder) _then;

  /// Create a copy of ProductOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderNumber = null,
    Object? amount = null,
    Object? enumOrderProcess = null,
    Object? date = null,
    Object? productInformationList = null,
    Object? hide = freezed,
  }) {
    return _then(_ProductOrder(
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      enumOrderProcess: null == enumOrderProcess
          ? _self.enumOrderProcess
          : enumOrderProcess // ignore: cast_nullable_to_non_nullable
              as EnumOrderProcess,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      productInformationList: null == productInformationList
          ? _self._productInformationList
          : productInformationList // ignore: cast_nullable_to_non_nullable
              as List<ProductInformation>,
      hide: freezed == hide
          ? _self.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$ProductInformation {
  int get count;
  double get price;
  String get productNumber;
  String get productTitle;

  /// Create a copy of ProductInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductInformationCopyWith<ProductInformation> get copyWith =>
      _$ProductInformationCopyWithImpl<ProductInformation>(
          this as ProductInformation, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductInformation &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            (identical(other.productTitle, productTitle) ||
                other.productTitle == productTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, count, price, productNumber, productTitle);

  @override
  String toString() {
    return 'ProductInformation(count: $count, price: $price, productNumber: $productNumber, productTitle: $productTitle)';
  }
}

/// @nodoc
abstract mixin class $ProductInformationCopyWith<$Res> {
  factory $ProductInformationCopyWith(
          ProductInformation value, $Res Function(ProductInformation) _then) =
      _$ProductInformationCopyWithImpl;
  @useResult
  $Res call(
      {int count, double price, String productNumber, String productTitle});
}

/// @nodoc
class _$ProductInformationCopyWithImpl<$Res>
    implements $ProductInformationCopyWith<$Res> {
  _$ProductInformationCopyWithImpl(this._self, this._then);

  final ProductInformation _self;
  final $Res Function(ProductInformation) _then;

  /// Create a copy of ProductInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? price = null,
    Object? productNumber = null,
    Object? productTitle = null,
  }) {
    return _then(_self.copyWith(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      productNumber: null == productNumber
          ? _self.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      productTitle: null == productTitle
          ? _self.productTitle
          : productTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductInformation].
extension ProductInformationPatterns on ProductInformation {
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
    TResult Function(_ProductInformation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductInformation() when $default != null:
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
    TResult Function(_ProductInformation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductInformation():
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
    TResult? Function(_ProductInformation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductInformation() when $default != null:
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
            int count, double price, String productNumber, String productTitle)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductInformation() when $default != null:
        return $default(
            _that.count, _that.price, _that.productNumber, _that.productTitle);
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
            int count, double price, String productNumber, String productTitle)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductInformation():
        return $default(
            _that.count, _that.price, _that.productNumber, _that.productTitle);
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
            int count, double price, String productNumber, String productTitle)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductInformation() when $default != null:
        return $default(
            _that.count, _that.price, _that.productNumber, _that.productTitle);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProductInformation implements ProductInformation {
  const _ProductInformation(
      {required this.count,
      required this.price,
      required this.productNumber,
      required this.productTitle});

  @override
  final int count;
  @override
  final double price;
  @override
  final String productNumber;
  @override
  final String productTitle;

  /// Create a copy of ProductInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductInformationCopyWith<_ProductInformation> get copyWith =>
      __$ProductInformationCopyWithImpl<_ProductInformation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductInformation &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            (identical(other.productTitle, productTitle) ||
                other.productTitle == productTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, count, price, productNumber, productTitle);

  @override
  String toString() {
    return 'ProductInformation(count: $count, price: $price, productNumber: $productNumber, productTitle: $productTitle)';
  }
}

/// @nodoc
abstract mixin class _$ProductInformationCopyWith<$Res>
    implements $ProductInformationCopyWith<$Res> {
  factory _$ProductInformationCopyWith(
          _ProductInformation value, $Res Function(_ProductInformation) _then) =
      __$ProductInformationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int count, double price, String productNumber, String productTitle});
}

/// @nodoc
class __$ProductInformationCopyWithImpl<$Res>
    implements _$ProductInformationCopyWith<$Res> {
  __$ProductInformationCopyWithImpl(this._self, this._then);

  final _ProductInformation _self;
  final $Res Function(_ProductInformation) _then;

  /// Create a copy of ProductInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? count = null,
    Object? price = null,
    Object? productNumber = null,
    Object? productTitle = null,
  }) {
    return _then(_ProductInformation(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      productNumber: null == productNumber
          ? _self.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      productTitle: null == productTitle
          ? _self.productTitle
          : productTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
