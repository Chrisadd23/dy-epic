// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get customerId => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  List<Order>? get products => throw _privateConstructorUsedError;
  int? get sendDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'userId') String? customerId,
      int? status,
      List<Order>? products,
      int? sendDate});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? status = freezed,
    Object? products = freezed,
    Object? sendDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      sendDate: freezed == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'userId') String? customerId,
      int? status,
      List<Order>? products,
      int? sendDate});
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? status = freezed,
    Object? products = freezed,
    Object? sendDate = freezed,
  }) {
    return _then(_$OrderModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      sendDate: freezed == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OrderModelImpl extends _OrderModel {
  const _$OrderModelImpl(
      {this.id,
      @JsonKey(name: 'userId') this.customerId,
      this.status,
      final List<Order>? products,
      this.sendDate})
      : _products = products,
        super._();

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'userId')
  final String? customerId;
  @override
  final int? status;
  final List<Order>? _products;
  @override
  List<Order>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? sendDate;

  @override
  String toString() {
    return 'OrderModel(id: $id, customerId: $customerId, status: $status, products: $products, sendDate: $sendDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.sendDate, sendDate) ||
                other.sendDate == sendDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, customerId, status,
      const DeepCollectionEquality().hash(_products), sendDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel extends OrderModel {
  const factory _OrderModel(
      {final String? id,
      @JsonKey(name: 'userId') final String? customerId,
      final int? status,
      final List<Order>? products,
      final int? sendDate}) = _$OrderModelImpl;
  const _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'userId')
  String? get customerId;
  @override
  int? get status;
  @override
  List<Order>? get products;
  @override
  int? get sendDate;
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  CategoryEntity get categoryEntity => throw _privateConstructorUsedError;
  int get productCount => throw _privateConstructorUsedError;
  double get completeAmount => throw _privateConstructorUsedError;
  int get addedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {CategoryEntity categoryEntity,
      int productCount,
      double completeAmount,
      int addedTime});

  $CategoryEntityCopyWith<$Res> get categoryEntity;
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
    Object? categoryEntity = null,
    Object? productCount = null,
    Object? completeAmount = null,
    Object? addedTime = null,
  }) {
    return _then(_value.copyWith(
      categoryEntity: null == categoryEntity
          ? _value.categoryEntity
          : categoryEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      completeAmount: null == completeAmount
          ? _value.completeAmount
          : completeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res> get categoryEntity {
    return $CategoryEntityCopyWith<$Res>(_value.categoryEntity, (value) {
      return _then(_value.copyWith(categoryEntity: value) as $Val);
    });
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
      {CategoryEntity categoryEntity,
      int productCount,
      double completeAmount,
      int addedTime});

  @override
  $CategoryEntityCopyWith<$Res> get categoryEntity;
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
    Object? categoryEntity = null,
    Object? productCount = null,
    Object? completeAmount = null,
    Object? addedTime = null,
  }) {
    return _then(_$OrderImpl(
      categoryEntity: null == categoryEntity
          ? _value.categoryEntity
          : categoryEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      completeAmount: null == completeAmount
          ? _value.completeAmount
          : completeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OrderImpl extends _Order {
  const _$OrderImpl(
      {required this.categoryEntity,
      required this.productCount,
      required this.completeAmount,
      required this.addedTime})
      : super._();

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final CategoryEntity categoryEntity;
  @override
  final int productCount;
  @override
  final double completeAmount;
  @override
  final int addedTime;

  @override
  String toString() {
    return 'Order(categoryEntity: $categoryEntity, productCount: $productCount, completeAmount: $completeAmount, addedTime: $addedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.categoryEntity, categoryEntity) ||
                other.categoryEntity == categoryEntity) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.completeAmount, completeAmount) ||
                other.completeAmount == completeAmount) &&
            (identical(other.addedTime, addedTime) ||
                other.addedTime == addedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, categoryEntity, productCount, completeAmount, addedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order extends Order {
  const factory _Order(
      {required final CategoryEntity categoryEntity,
      required final int productCount,
      required final double completeAmount,
      required final int addedTime}) = _$OrderImpl;
  const _Order._() : super._();

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  CategoryEntity get categoryEntity;
  @override
  int get productCount;
  @override
  double get completeAmount;
  @override
  int get addedTime;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
