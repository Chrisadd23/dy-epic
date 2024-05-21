// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_customer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderCustomerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function() loading,
    required TResult Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function()? loading,
    TResult? Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function()? loading,
    TResult Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCustomerStateCopyWith<$Res> {
  factory $OrderCustomerStateCopyWith(
          OrderCustomerState value, $Res Function(OrderCustomerState) then) =
      _$OrderCustomerStateCopyWithImpl<$Res, OrderCustomerState>;
}

/// @nodoc
class _$OrderCustomerStateCopyWithImpl<$Res, $Val extends OrderCustomerState>
    implements $OrderCustomerStateCopyWith<$Res> {
  _$OrderCustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialiseImplCopyWith<$Res> {
  factory _$$InitialiseImplCopyWith(
          _$InitialiseImpl value, $Res Function(_$InitialiseImpl) then) =
      __$$InitialiseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialiseImplCopyWithImpl<$Res>
    extends _$OrderCustomerStateCopyWithImpl<$Res, _$InitialiseImpl>
    implements _$$InitialiseImplCopyWith<$Res> {
  __$$InitialiseImplCopyWithImpl(
      _$InitialiseImpl _value, $Res Function(_$InitialiseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialiseImpl extends _Initialise {
  const _$InitialiseImpl() : super._();

  @override
  String toString() {
    return 'OrderCustomerState.initialise()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialiseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function() loading,
    required TResult Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return initialise();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function()? loading,
    TResult? Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return initialise?.call();
  }

  @override
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
    if (initialise != null) {
      return initialise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class _Initialise extends OrderCustomerState {
  const factory _Initialise() = _$InitialiseImpl;
  const _Initialise._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OrderCustomerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'OrderCustomerState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function() loading,
    required TResult Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function()? loading,
    TResult? Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
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
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends OrderCustomerState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EnumSortProductOrder sortType, List<OrderEntity>? orderList});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$OrderCustomerStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
    Object? orderList = freezed,
  }) {
    return _then(_$SuccessImpl(
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as EnumSortProductOrder,
      orderList: freezed == orderList
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl extends _Success {
  const _$SuccessImpl(
      {this.sortType = EnumSortProductOrder.sortDate,
      required final List<OrderEntity>? orderList})
      : _orderList = orderList,
        super._();

  @override
  @JsonKey()
  final EnumSortProductOrder sortType;
  final List<OrderEntity>? _orderList;
  @override
  List<OrderEntity>? get orderList {
    final value = _orderList;
    if (value == null) return null;
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderCustomerState.success(sortType: $sortType, orderList: $orderList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sortType, const DeepCollectionEquality().hash(_orderList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function() loading,
    required TResult Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(sortType, orderList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function()? loading,
    TResult? Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(sortType, orderList);
  }

  @override
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
    if (success != null) {
      return success(sortType, orderList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends OrderCustomerState {
  const factory _Success(
      {final EnumSortProductOrder sortType,
      required final List<OrderEntity>? orderList}) = _$SuccessImpl;
  const _Success._() : super._();

  EnumSortProductOrder get sortType;
  List<OrderEntity>? get orderList;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$OrderCustomerStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureImpl extends _Failure {
  const _$FailureImpl({required this.failure}) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'OrderCustomerState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function() loading,
    required TResult Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function()? loading,
    TResult? Function(
            EnumSortProductOrder sortType, List<OrderEntity>? orderList)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
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
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends OrderCustomerState {
  const factory _Failure({required final Failure failure}) = _$FailureImpl;
  const _Failure._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductOrder {
  String get orderNumber => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  EnumOrderProcess get enumOrderProcess => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  List<ProductInformation> get productInformationList =>
      throw _privateConstructorUsedError;
  bool? get hide => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductOrderCopyWith<ProductOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOrderCopyWith<$Res> {
  factory $ProductOrderCopyWith(
          ProductOrder value, $Res Function(ProductOrder) then) =
      _$ProductOrderCopyWithImpl<$Res, ProductOrder>;
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
class _$ProductOrderCopyWithImpl<$Res, $Val extends ProductOrder>
    implements $ProductOrderCopyWith<$Res> {
  _$ProductOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      enumOrderProcess: null == enumOrderProcess
          ? _value.enumOrderProcess
          : enumOrderProcess // ignore: cast_nullable_to_non_nullable
              as EnumOrderProcess,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      productInformationList: null == productInformationList
          ? _value.productInformationList
          : productInformationList // ignore: cast_nullable_to_non_nullable
              as List<ProductInformation>,
      hide: freezed == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductOrderImplCopyWith<$Res>
    implements $ProductOrderCopyWith<$Res> {
  factory _$$ProductOrderImplCopyWith(
          _$ProductOrderImpl value, $Res Function(_$ProductOrderImpl) then) =
      __$$ProductOrderImplCopyWithImpl<$Res>;
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
class __$$ProductOrderImplCopyWithImpl<$Res>
    extends _$ProductOrderCopyWithImpl<$Res, _$ProductOrderImpl>
    implements _$$ProductOrderImplCopyWith<$Res> {
  __$$ProductOrderImplCopyWithImpl(
      _$ProductOrderImpl _value, $Res Function(_$ProductOrderImpl) _then)
      : super(_value, _then);

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
    return _then(_$ProductOrderImpl(
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      enumOrderProcess: null == enumOrderProcess
          ? _value.enumOrderProcess
          : enumOrderProcess // ignore: cast_nullable_to_non_nullable
              as EnumOrderProcess,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      productInformationList: null == productInformationList
          ? _value._productInformationList
          : productInformationList // ignore: cast_nullable_to_non_nullable
              as List<ProductInformation>,
      hide: freezed == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ProductOrderImpl implements _ProductOrder {
  const _$ProductOrderImpl(
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

  @override
  String toString() {
    return 'ProductOrder(orderNumber: $orderNumber, amount: $amount, enumOrderProcess: $enumOrderProcess, date: $date, productInformationList: $productInformationList, hide: $hide)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductOrderImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductOrderImplCopyWith<_$ProductOrderImpl> get copyWith =>
      __$$ProductOrderImplCopyWithImpl<_$ProductOrderImpl>(this, _$identity);
}

abstract class _ProductOrder implements ProductOrder {
  const factory _ProductOrder(
      {required final String orderNumber,
      required final double amount,
      required final EnumOrderProcess enumOrderProcess,
      required final DateTime date,
      required final List<ProductInformation> productInformationList,
      final bool? hide}) = _$ProductOrderImpl;

  @override
  String get orderNumber;
  @override
  double get amount;
  @override
  EnumOrderProcess get enumOrderProcess;
  @override
  DateTime get date;
  @override
  List<ProductInformation> get productInformationList;
  @override
  bool? get hide;
  @override
  @JsonKey(ignore: true)
  _$$ProductOrderImplCopyWith<_$ProductOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductInformation {
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
      {int count, double price, String productNumber, String productTitle});
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
    Object? count = null,
    Object? price = null,
    Object? productNumber = null,
    Object? productTitle = null,
  }) {
    return _then(_value.copyWith(
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
      {int count, double price, String productNumber, String productTitle});
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
    Object? count = null,
    Object? price = null,
    Object? productNumber = null,
    Object? productTitle = null,
  }) {
    return _then(_$ProductInformationImpl(
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

  @override
  String toString() {
    return 'ProductInformation(count: $count, price: $price, productNumber: $productNumber, productTitle: $productTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductInformationImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductInformationImplCopyWith<_$ProductInformationImpl> get copyWith =>
      __$$ProductInformationImplCopyWithImpl<_$ProductInformationImpl>(
          this, _$identity);
}

abstract class _ProductInformation implements ProductInformation {
  const factory _ProductInformation(
      {required final int count,
      required final double price,
      required final String productNumber,
      required final String productTitle}) = _$ProductInformationImpl;

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
