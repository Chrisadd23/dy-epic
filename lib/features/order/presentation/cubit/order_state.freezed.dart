// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderCustomerState {
  List<Order> get orderList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCustomerStateCopyWith<OrderCustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCustomerStateCopyWith<$Res> {
  factory $OrderCustomerStateCopyWith(
          OrderCustomerState value, $Res Function(OrderCustomerState) then) =
      _$OrderCustomerStateCopyWithImpl<$Res, OrderCustomerState>;
  @useResult
  $Res call({List<Order> orderList});
}

/// @nodoc
class _$OrderCustomerStateCopyWithImpl<$Res, $Val extends OrderCustomerState>
    implements $OrderCustomerStateCopyWith<$Res> {
  _$OrderCustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
  }) {
    return _then(_value.copyWith(
      orderList: null == orderList
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderCustomerStateImplCopyWith<$Res>
    implements $OrderCustomerStateCopyWith<$Res> {
  factory _$$OrderCustomerStateImplCopyWith(_$OrderCustomerStateImpl value,
          $Res Function(_$OrderCustomerStateImpl) then) =
      __$$OrderCustomerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Order> orderList});
}

/// @nodoc
class __$$OrderCustomerStateImplCopyWithImpl<$Res>
    extends _$OrderCustomerStateCopyWithImpl<$Res, _$OrderCustomerStateImpl>
    implements _$$OrderCustomerStateImplCopyWith<$Res> {
  __$$OrderCustomerStateImplCopyWithImpl(_$OrderCustomerStateImpl _value,
      $Res Function(_$OrderCustomerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
  }) {
    return _then(_$OrderCustomerStateImpl(
      orderList: null == orderList
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _$OrderCustomerStateImpl implements _OrderCustomerState {
  const _$OrderCustomerStateImpl({required final List<Order> orderList})
      : _orderList = orderList;

  final List<Order> _orderList;
  @override
  List<Order> get orderList {
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderList);
  }

  @override
  String toString() {
    return 'OrderCustomerState(orderList: $orderList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCustomerStateImpl &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orderList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCustomerStateImplCopyWith<_$OrderCustomerStateImpl> get copyWith =>
      __$$OrderCustomerStateImplCopyWithImpl<_$OrderCustomerStateImpl>(
          this, _$identity);
}

abstract class _OrderCustomerState implements OrderCustomerState {
  const factory _OrderCustomerState({required final List<Order> orderList}) =
      _$OrderCustomerStateImpl;

  @override
  List<Order> get orderList;
  @override
  @JsonKey(ignore: true)
  _$$OrderCustomerStateImplCopyWith<_$OrderCustomerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Order {
  String get orderNumber => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  bool get inWork => throw _privateConstructorUsedError;
  bool get finished => throw _privateConstructorUsedError;
  bool get canceledByAdmin => throw _privateConstructorUsedError;
  bool get canceledByCustomer => throw _privateConstructorUsedError;
  List<ProductInformation> get productInformationList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String orderNumber,
      double amount,
      bool inWork,
      bool finished,
      bool canceledByAdmin,
      bool canceledByCustomer,
      List<ProductInformation> productInformationList});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNumber = null,
    Object? amount = null,
    Object? inWork = null,
    Object? finished = null,
    Object? canceledByAdmin = null,
    Object? canceledByCustomer = null,
    Object? productInformationList = null,
  }) {
    return _then(_value.copyWith(
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      inWork: null == inWork
          ? _value.inWork
          : inWork // ignore: cast_nullable_to_non_nullable
              as bool,
      finished: null == finished
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as bool,
      canceledByAdmin: null == canceledByAdmin
          ? _value.canceledByAdmin
          : canceledByAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      canceledByCustomer: null == canceledByCustomer
          ? _value.canceledByCustomer
          : canceledByCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      productInformationList: null == productInformationList
          ? _value.productInformationList
          : productInformationList // ignore: cast_nullable_to_non_nullable
              as List<ProductInformation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderNumber,
      double amount,
      bool inWork,
      bool finished,
      bool canceledByAdmin,
      bool canceledByCustomer,
      List<ProductInformation> productInformationList});
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNumber = null,
    Object? amount = null,
    Object? inWork = null,
    Object? finished = null,
    Object? canceledByAdmin = null,
    Object? canceledByCustomer = null,
    Object? productInformationList = null,
  }) {
    return _then(_$OrderImpl(
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      inWork: null == inWork
          ? _value.inWork
          : inWork // ignore: cast_nullable_to_non_nullable
              as bool,
      finished: null == finished
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as bool,
      canceledByAdmin: null == canceledByAdmin
          ? _value.canceledByAdmin
          : canceledByAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      canceledByCustomer: null == canceledByCustomer
          ? _value.canceledByCustomer
          : canceledByCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      productInformationList: null == productInformationList
          ? _value._productInformationList
          : productInformationList // ignore: cast_nullable_to_non_nullable
              as List<ProductInformation>,
    ));
  }
}

/// @nodoc

class _$OrderImpl implements _Order {
  const _$OrderImpl(
      {required this.orderNumber,
      required this.amount,
      required this.inWork,
      required this.finished,
      required this.canceledByAdmin,
      required this.canceledByCustomer,
      required final List<ProductInformation> productInformationList})
      : _productInformationList = productInformationList;

  @override
  final String orderNumber;
  @override
  final double amount;
  @override
  final bool inWork;
  @override
  final bool finished;
  @override
  final bool canceledByAdmin;
  @override
  final bool canceledByCustomer;
  final List<ProductInformation> _productInformationList;
  @override
  List<ProductInformation> get productInformationList {
    if (_productInformationList is EqualUnmodifiableListView)
      return _productInformationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productInformationList);
  }

  @override
  String toString() {
    return 'Order(orderNumber: $orderNumber, amount: $amount, inWork: $inWork, finished: $finished, canceledByAdmin: $canceledByAdmin, canceledByCustomer: $canceledByCustomer, productInformationList: $productInformationList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.inWork, inWork) || other.inWork == inWork) &&
            (identical(other.finished, finished) ||
                other.finished == finished) &&
            (identical(other.canceledByAdmin, canceledByAdmin) ||
                other.canceledByAdmin == canceledByAdmin) &&
            (identical(other.canceledByCustomer, canceledByCustomer) ||
                other.canceledByCustomer == canceledByCustomer) &&
            const DeepCollectionEquality().equals(
                other._productInformationList, _productInformationList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderNumber,
      amount,
      inWork,
      finished,
      canceledByAdmin,
      canceledByCustomer,
      const DeepCollectionEquality().hash(_productInformationList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);
}

abstract class _Order implements Order {
  const factory _Order(
          {required final String orderNumber,
          required final double amount,
          required final bool inWork,
          required final bool finished,
          required final bool canceledByAdmin,
          required final bool canceledByCustomer,
          required final List<ProductInformation> productInformationList}) =
      _$OrderImpl;

  @override
  String get orderNumber;
  @override
  double get amount;
  @override
  bool get inWork;
  @override
  bool get finished;
  @override
  bool get canceledByAdmin;
  @override
  bool get canceledByCustomer;
  @override
  List<ProductInformation> get productInformationList;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductInformation {
  bool get request => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get productNumber => throw _privateConstructorUsedError;
  String get productTitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductInformationCopyWith<ProductInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInformationCopyWith<$Res> {
  factory $ProductInformationCopyWith(
          ProductInformation value, $Res Function(ProductInformation) then) =
      _$ProductInformationCopyWithImpl<$Res, ProductInformation>;
  @useResult
  $Res call(
      {bool request,
      int count,
      double price,
      String productNumber,
      String productTitle});
}

/// @nodoc
class _$ProductInformationCopyWithImpl<$Res, $Val extends ProductInformation>
    implements $ProductInformationCopyWith<$Res> {
  _$ProductInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? count = null,
    Object? price = null,
    Object? productNumber = null,
    Object? productTitle = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as bool,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      productTitle: null == productTitle
          ? _value.productTitle
          : productTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductInformationImplCopyWith<$Res>
    implements $ProductInformationCopyWith<$Res> {
  factory _$$ProductInformationImplCopyWith(_$ProductInformationImpl value,
          $Res Function(_$ProductInformationImpl) then) =
      __$$ProductInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool request,
      int count,
      double price,
      String productNumber,
      String productTitle});
}

/// @nodoc
class __$$ProductInformationImplCopyWithImpl<$Res>
    extends _$ProductInformationCopyWithImpl<$Res, _$ProductInformationImpl>
    implements _$$ProductInformationImplCopyWith<$Res> {
  __$$ProductInformationImplCopyWithImpl(_$ProductInformationImpl _value,
      $Res Function(_$ProductInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? count = null,
    Object? price = null,
    Object? productNumber = null,
    Object? productTitle = null,
  }) {
    return _then(_$ProductInformationImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as bool,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      productTitle: null == productTitle
          ? _value.productTitle
          : productTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductInformationImpl implements _ProductInformation {
  const _$ProductInformationImpl(
      {required this.request,
      required this.count,
      required this.price,
      required this.productNumber,
      required this.productTitle});

  @override
  final bool request;
  @override
  final int count;
  @override
  final double price;
  @override
  final String productNumber;
  @override
  final String productTitle;

  @override
  String toString() {
    return 'ProductInformation(request: $request, count: $count, price: $price, productNumber: $productNumber, productTitle: $productTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductInformationImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            (identical(other.productTitle, productTitle) ||
                other.productTitle == productTitle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, request, count, price, productNumber, productTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductInformationImplCopyWith<_$ProductInformationImpl> get copyWith =>
      __$$ProductInformationImplCopyWithImpl<_$ProductInformationImpl>(
          this, _$identity);
}

abstract class _ProductInformation implements ProductInformation {
  const factory _ProductInformation(
      {required final bool request,
      required final int count,
      required final double price,
      required final String productNumber,
      required final String productTitle}) = _$ProductInformationImpl;

  @override
  bool get request;
  @override
  int get count;
  @override
  double get price;
  @override
  String get productNumber;
  @override
  String get productTitle;
  @override
  @JsonKey(ignore: true)
  _$$ProductInformationImplCopyWith<_$ProductInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
