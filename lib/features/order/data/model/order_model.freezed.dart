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
  List<OrderModelProduct>? get products => throw _privateConstructorUsedError;
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
      List<OrderModelProduct>? products,
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
              as List<OrderModelProduct>?,
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
      List<OrderModelProduct>? products,
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
              as List<OrderModelProduct>?,
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
      final List<OrderModelProduct>? products,
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
  final List<OrderModelProduct>? _products;
  @override
  List<OrderModelProduct>? get products {
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
      final List<OrderModelProduct>? products,
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
  List<OrderModelProduct>? get products;
  @override
  int? get sendDate;
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderModelProduct _$OrderModelProductFromJson(Map<String, dynamic> json) {
  return _OrderModelProduct.fromJson(json);
}

/// @nodoc
mixin _$OrderModelProduct {
  String get productNumber => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  int get productType => throw _privateConstructorUsedError;
  int get productCount => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get addedTime => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  Size? get widthAndHeight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelProductCopyWith<OrderModelProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelProductCopyWith<$Res> {
  factory $OrderModelProductCopyWith(
          OrderModelProduct value, $Res Function(OrderModelProduct) then) =
      _$OrderModelProductCopyWithImpl<$Res, OrderModelProduct>;
  @useResult
  $Res call(
      {String productNumber,
      String productName,
      int productType,
      int productCount,
      double price,
      int addedTime,
      String? color,
      Size? widthAndHeight});

  $SizeCopyWith<$Res>? get widthAndHeight;
}

/// @nodoc
class _$OrderModelProductCopyWithImpl<$Res, $Val extends OrderModelProduct>
    implements $OrderModelProductCopyWith<$Res> {
  _$OrderModelProductCopyWithImpl(this._value, this._then);

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
    Object? price = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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
abstract class _$$OrderModelProductImplCopyWith<$Res>
    implements $OrderModelProductCopyWith<$Res> {
  factory _$$OrderModelProductImplCopyWith(_$OrderModelProductImpl value,
          $Res Function(_$OrderModelProductImpl) then) =
      __$$OrderModelProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productNumber,
      String productName,
      int productType,
      int productCount,
      double price,
      int addedTime,
      String? color,
      Size? widthAndHeight});

  @override
  $SizeCopyWith<$Res>? get widthAndHeight;
}

/// @nodoc
class __$$OrderModelProductImplCopyWithImpl<$Res>
    extends _$OrderModelProductCopyWithImpl<$Res, _$OrderModelProductImpl>
    implements _$$OrderModelProductImplCopyWith<$Res> {
  __$$OrderModelProductImplCopyWithImpl(_$OrderModelProductImpl _value,
      $Res Function(_$OrderModelProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productNumber = null,
    Object? productName = null,
    Object? productType = null,
    Object? productCount = null,
    Object? price = null,
    Object? addedTime = null,
    Object? color = freezed,
    Object? widthAndHeight = freezed,
  }) {
    return _then(_$OrderModelProductImpl(
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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

@JsonSerializable(explicitToJson: true)
class _$OrderModelProductImpl implements _OrderModelProduct {
  const _$OrderModelProductImpl(
      {required this.productNumber,
      required this.productName,
      required this.productType,
      required this.productCount,
      required this.price,
      required this.addedTime,
      this.color,
      this.widthAndHeight});

  factory _$OrderModelProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelProductImplFromJson(json);

  @override
  final String productNumber;
  @override
  final String productName;
  @override
  final int productType;
  @override
  final int productCount;
  @override
  final double price;
  @override
  final int addedTime;
  @override
  final String? color;
  @override
  final Size? widthAndHeight;

  @override
  String toString() {
    return 'OrderModelProduct(productNumber: $productNumber, productName: $productName, productType: $productType, productCount: $productCount, price: $price, addedTime: $addedTime, color: $color, widthAndHeight: $widthAndHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelProductImpl &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.addedTime, addedTime) ||
                other.addedTime == addedTime) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.widthAndHeight, widthAndHeight) ||
                other.widthAndHeight == widthAndHeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productNumber, productName,
      productType, productCount, price, addedTime, color, widthAndHeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelProductImplCopyWith<_$OrderModelProductImpl> get copyWith =>
      __$$OrderModelProductImplCopyWithImpl<_$OrderModelProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelProductImplToJson(
      this,
    );
  }
}

abstract class _OrderModelProduct implements OrderModelProduct {
  const factory _OrderModelProduct(
      {required final String productNumber,
      required final String productName,
      required final int productType,
      required final int productCount,
      required final double price,
      required final int addedTime,
      final String? color,
      final Size? widthAndHeight}) = _$OrderModelProductImpl;

  factory _OrderModelProduct.fromJson(Map<String, dynamic> json) =
      _$OrderModelProductImpl.fromJson;

  @override
  String get productNumber;
  @override
  String get productName;
  @override
  int get productType;
  @override
  int get productCount;
  @override
  double get price;
  @override
  int get addedTime;
  @override
  String? get color;
  @override
  Size? get widthAndHeight;
  @override
  @JsonKey(ignore: true)
  _$$OrderModelProductImplCopyWith<_$OrderModelProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
