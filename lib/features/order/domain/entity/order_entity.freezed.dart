// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEntity {
  String get id => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  List<Order> get listOrderEntity => throw _privateConstructorUsedError;
  int get sendDate => throw _privateConstructorUsedError;
  bool get hide => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res, OrderEntity>;
  @useResult
  $Res call(
      {String id,
      String customerId,
      int status,
      List<Order> listOrderEntity,
      int sendDate,
      bool hide});
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res, $Val extends OrderEntity>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? status = null,
    Object? listOrderEntity = null,
    Object? sendDate = null,
    Object? hide = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      listOrderEntity: null == listOrderEntity
          ? _value.listOrderEntity
          : listOrderEntity // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      sendDate: null == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int,
      hide: null == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderEntityImplCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$OrderEntityImplCopyWith(
          _$OrderEntityImpl value, $Res Function(_$OrderEntityImpl) then) =
      __$$OrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String customerId,
      int status,
      List<Order> listOrderEntity,
      int sendDate,
      bool hide});
}

/// @nodoc
class __$$OrderEntityImplCopyWithImpl<$Res>
    extends _$OrderEntityCopyWithImpl<$Res, _$OrderEntityImpl>
    implements _$$OrderEntityImplCopyWith<$Res> {
  __$$OrderEntityImplCopyWithImpl(
      _$OrderEntityImpl _value, $Res Function(_$OrderEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? status = null,
    Object? listOrderEntity = null,
    Object? sendDate = null,
    Object? hide = null,
  }) {
    return _then(_$OrderEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      listOrderEntity: null == listOrderEntity
          ? _value._listOrderEntity
          : listOrderEntity // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      sendDate: null == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int,
      hide: null == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OrderEntityImpl extends _OrderEntity {
  const _$OrderEntityImpl(
      {required this.id,
      required this.customerId,
      required this.status,
      required final List<Order> listOrderEntity,
      required this.sendDate,
      this.hide = false})
      : _listOrderEntity = listOrderEntity,
        super._();

  @override
  final String id;
  @override
  final String customerId;
  @override
  final int status;
  final List<Order> _listOrderEntity;
  @override
  List<Order> get listOrderEntity {
    if (_listOrderEntity is EqualUnmodifiableListView) return _listOrderEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOrderEntity);
  }

  @override
  final int sendDate;
  @override
  @JsonKey()
  final bool hide;

  @override
  String toString() {
    return 'OrderEntity(id: $id, customerId: $customerId, status: $status, listOrderEntity: $listOrderEntity, sendDate: $sendDate, hide: $hide)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._listOrderEntity, _listOrderEntity) &&
            (identical(other.sendDate, sendDate) ||
                other.sendDate == sendDate) &&
            (identical(other.hide, hide) || other.hide == hide));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, customerId, status,
      const DeepCollectionEquality().hash(_listOrderEntity), sendDate, hide);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      __$$OrderEntityImplCopyWithImpl<_$OrderEntityImpl>(this, _$identity);
}

abstract class _OrderEntity extends OrderEntity {
  const factory _OrderEntity(
      {required final String id,
      required final String customerId,
      required final int status,
      required final List<Order> listOrderEntity,
      required final int sendDate,
      final bool hide}) = _$OrderEntityImpl;
  const _OrderEntity._() : super._();

  @override
  String get id;
  @override
  String get customerId;
  @override
  int get status;
  @override
  List<Order> get listOrderEntity;
  @override
  int get sendDate;
  @override
  bool get hide;
  @override
  @JsonKey(ignore: true)
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Order {
  String get productNumber => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  int get productType => throw _privateConstructorUsedError;
  int get productCount => throw _privateConstructorUsedError;
  double get productPrice => throw _privateConstructorUsedError;
  int get addedTime => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  Size? get widthAndHeight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String productNumber,
      String productName,
      int productType,
      int productCount,
      double productPrice,
      int addedTime,
      String? color,
      Size? widthAndHeight});

  $SizeCopyWith<$Res>? get widthAndHeight;
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
    Object? productNumber = null,
    Object? productName = null,
    Object? productType = null,
    Object? productCount = null,
    Object? productPrice = null,
    Object? addedTime = null,
    Object? color = freezed,
    Object? widthAndHeight = freezed,
  }) {
    return _then(_value.copyWith(
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as int,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as int,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      widthAndHeight: freezed == widthAndHeight
          ? _value.widthAndHeight
          : widthAndHeight // ignore: cast_nullable_to_non_nullable
              as Size?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SizeCopyWith<$Res>? get widthAndHeight {
    if (_value.widthAndHeight == null) {
      return null;
    }

    return $SizeCopyWith<$Res>(_value.widthAndHeight!, (value) {
      return _then(_value.copyWith(widthAndHeight: value) as $Val);
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
      {String productNumber,
      String productName,
      int productType,
      int productCount,
      double productPrice,
      int addedTime,
      String? color,
      Size? widthAndHeight});

  @override
  $SizeCopyWith<$Res>? get widthAndHeight;
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
    Object? productNumber = null,
    Object? productName = null,
    Object? productType = null,
    Object? productCount = null,
    Object? productPrice = null,
    Object? addedTime = null,
    Object? color = freezed,
    Object? widthAndHeight = freezed,
  }) {
    return _then(_$OrderImpl(
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as int,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as int,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      widthAndHeight: freezed == widthAndHeight
          ? _value.widthAndHeight
          : widthAndHeight // ignore: cast_nullable_to_non_nullable
              as Size?,
    ));
  }
}

/// @nodoc

class _$OrderImpl extends _Order {
  const _$OrderImpl(
      {required this.productNumber,
      required this.productName,
      required this.productType,
      required this.productCount,
      required this.productPrice,
      required this.addedTime,
      this.color,
      this.widthAndHeight})
      : super._();

  @override
  final String productNumber;
  @override
  final String productName;
  @override
  final int productType;
  @override
  final int productCount;
  @override
  final double productPrice;
  @override
  final int addedTime;
  @override
  final String? color;
  @override
  final Size? widthAndHeight;

  @override
  String toString() {
    return 'Order(productNumber: $productNumber, productName: $productName, productType: $productType, productCount: $productCount, productPrice: $productPrice, addedTime: $addedTime, color: $color, widthAndHeight: $widthAndHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.addedTime, addedTime) ||
                other.addedTime == addedTime) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.widthAndHeight, widthAndHeight) ||
                other.widthAndHeight == widthAndHeight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      productNumber,
      productName,
      productType,
      productCount,
      productPrice,
      addedTime,
      color,
      widthAndHeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);
}

abstract class _Order extends Order {
  const factory _Order(
      {required final String productNumber,
      required final String productName,
      required final int productType,
      required final int productCount,
      required final double productPrice,
      required final int addedTime,
      final String? color,
      final Size? widthAndHeight}) = _$OrderImpl;
  const _Order._() : super._();

  @override
  String get productNumber;
  @override
  String get productName;
  @override
  int get productType;
  @override
  int get productCount;
  @override
  double get productPrice;
  @override
  int get addedTime;
  @override
  String? get color;
  @override
  Size? get widthAndHeight;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
