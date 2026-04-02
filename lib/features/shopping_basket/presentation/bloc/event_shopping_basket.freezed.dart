// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_shopping_basket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventShoppingBasket {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EventShoppingBasket);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EventShoppingBasket()';
  }
}

/// @nodoc
class $EventShoppingBasketCopyWith<$Res> {
  $EventShoppingBasketCopyWith(
      EventShoppingBasket _, $Res Function(EventShoppingBasket) __);
}

/// Adds pattern-matching-related methods to [EventShoppingBasket].
extension EventShoppingBasketPatterns on EventShoppingBasket {
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
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Remove value)? remove,
    TResult Function(_OrderList value)? orderList,
    TResult Function(_Send value)? send,
    TResult Function(_Clear value)? clear,
    TResult Function(_DeleteFailureMessage value)? deleteFailureMessage,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Add() when add != null:
        return add(_that);
      case _Change() when change != null:
        return change(_that);
      case _Remove() when remove != null:
        return remove(_that);
      case _OrderList() when orderList != null:
        return orderList(_that);
      case _Send() when send != null:
        return send(_that);
      case _Clear() when clear != null:
        return clear(_that);
      case _DeleteFailureMessage() when deleteFailureMessage != null:
        return deleteFailureMessage(_that);
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
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Remove value) remove,
    required TResult Function(_OrderList value) orderList,
    required TResult Function(_Send value) send,
    required TResult Function(_Clear value) clear,
    required TResult Function(_DeleteFailureMessage value) deleteFailureMessage,
  }) {
    final _that = this;
    switch (_that) {
      case _Add():
        return add(_that);
      case _Change():
        return change(_that);
      case _Remove():
        return remove(_that);
      case _OrderList():
        return orderList(_that);
      case _Send():
        return send(_that);
      case _Clear():
        return clear(_that);
      case _DeleteFailureMessage():
        return deleteFailureMessage(_that);
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
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_OrderList value)? orderList,
    TResult? Function(_Send value)? send,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_DeleteFailureMessage value)? deleteFailureMessage,
  }) {
    final _that = this;
    switch (_that) {
      case _Add() when add != null:
        return add(_that);
      case _Change() when change != null:
        return change(_that);
      case _Remove() when remove != null:
        return remove(_that);
      case _OrderList() when orderList != null:
        return orderList(_that);
      case _Send() when send != null:
        return send(_that);
      case _Clear() when clear != null:
        return clear(_that);
      case _DeleteFailureMessage() when deleteFailureMessage != null:
        return deleteFailureMessage(_that);
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
    TResult Function(
            String category,
            int productOrderCount,
            CategoryEntity productEntity,
            EntityCorePictures entityCorePicture,
            int? timeIndex)?
        add,
    TResult Function(int timePosition, String location)? change,
    TResult Function(int timePosition)? remove,
    TResult Function(EnumSortProductOrder orderList)? orderList,
    TResult Function(String customerNumber)? send,
    TResult Function()? clear,
    TResult Function()? deleteFailureMessage,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Add() when add != null:
        return add(_that.category, _that.productOrderCount, _that.productEntity,
            _that.entityCorePicture, _that.timeIndex);
      case _Change() when change != null:
        return change(_that.timePosition, _that.location);
      case _Remove() when remove != null:
        return remove(_that.timePosition);
      case _OrderList() when orderList != null:
        return orderList(_that.orderList);
      case _Send() when send != null:
        return send(_that.customerNumber);
      case _Clear() when clear != null:
        return clear();
      case _DeleteFailureMessage() when deleteFailureMessage != null:
        return deleteFailureMessage();
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
    required TResult Function(
            String category,
            int productOrderCount,
            CategoryEntity productEntity,
            EntityCorePictures entityCorePicture,
            int? timeIndex)
        add,
    required TResult Function(int timePosition, String location) change,
    required TResult Function(int timePosition) remove,
    required TResult Function(EnumSortProductOrder orderList) orderList,
    required TResult Function(String customerNumber) send,
    required TResult Function() clear,
    required TResult Function() deleteFailureMessage,
  }) {
    final _that = this;
    switch (_that) {
      case _Add():
        return add(_that.category, _that.productOrderCount, _that.productEntity,
            _that.entityCorePicture, _that.timeIndex);
      case _Change():
        return change(_that.timePosition, _that.location);
      case _Remove():
        return remove(_that.timePosition);
      case _OrderList():
        return orderList(_that.orderList);
      case _Send():
        return send(_that.customerNumber);
      case _Clear():
        return clear();
      case _DeleteFailureMessage():
        return deleteFailureMessage();
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
    TResult? Function(
            String category,
            int productOrderCount,
            CategoryEntity productEntity,
            EntityCorePictures entityCorePicture,
            int? timeIndex)?
        add,
    TResult? Function(int timePosition, String location)? change,
    TResult? Function(int timePosition)? remove,
    TResult? Function(EnumSortProductOrder orderList)? orderList,
    TResult? Function(String customerNumber)? send,
    TResult? Function()? clear,
    TResult? Function()? deleteFailureMessage,
  }) {
    final _that = this;
    switch (_that) {
      case _Add() when add != null:
        return add(_that.category, _that.productOrderCount, _that.productEntity,
            _that.entityCorePicture, _that.timeIndex);
      case _Change() when change != null:
        return change(_that.timePosition, _that.location);
      case _Remove() when remove != null:
        return remove(_that.timePosition);
      case _OrderList() when orderList != null:
        return orderList(_that.orderList);
      case _Send() when send != null:
        return send(_that.customerNumber);
      case _Clear() when clear != null:
        return clear();
      case _DeleteFailureMessage() when deleteFailureMessage != null:
        return deleteFailureMessage();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Add implements EventShoppingBasket {
  const _Add(
      {required this.category,
      required this.productOrderCount,
      required this.productEntity,
      required this.entityCorePicture,
      this.timeIndex});

  final String category;
  final int productOrderCount;
  final CategoryEntity productEntity;
  final EntityCorePictures entityCorePicture;
  final int? timeIndex;

  /// Create a copy of EventShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddCopyWith<_Add> get copyWith =>
      __$AddCopyWithImpl<_Add>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Add &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.productOrderCount, productOrderCount) ||
                other.productOrderCount == productOrderCount) &&
            (identical(other.productEntity, productEntity) ||
                other.productEntity == productEntity) &&
            (identical(other.entityCorePicture, entityCorePicture) ||
                other.entityCorePicture == entityCorePicture) &&
            (identical(other.timeIndex, timeIndex) ||
                other.timeIndex == timeIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, productOrderCount,
      productEntity, entityCorePicture, timeIndex);

  @override
  String toString() {
    return 'EventShoppingBasket.add(category: $category, productOrderCount: $productOrderCount, productEntity: $productEntity, entityCorePicture: $entityCorePicture, timeIndex: $timeIndex)';
  }
}

/// @nodoc
abstract mixin class _$AddCopyWith<$Res>
    implements $EventShoppingBasketCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) _then) =
      __$AddCopyWithImpl;
  @useResult
  $Res call(
      {String category,
      int productOrderCount,
      CategoryEntity productEntity,
      EntityCorePictures entityCorePicture,
      int? timeIndex});

  $CategoryEntityCopyWith<$Res> get productEntity;
  $EntityCorePicturesCopyWith<$Res> get entityCorePicture;
}

/// @nodoc
class __$AddCopyWithImpl<$Res> implements _$AddCopyWith<$Res> {
  __$AddCopyWithImpl(this._self, this._then);

  final _Add _self;
  final $Res Function(_Add) _then;

  /// Create a copy of EventShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = null,
    Object? productOrderCount = null,
    Object? productEntity = null,
    Object? entityCorePicture = null,
    Object? timeIndex = freezed,
  }) {
    return _then(_Add(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      productOrderCount: null == productOrderCount
          ? _self.productOrderCount
          : productOrderCount // ignore: cast_nullable_to_non_nullable
              as int,
      productEntity: null == productEntity
          ? _self.productEntity
          : productEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
      entityCorePicture: null == entityCorePicture
          ? _self.entityCorePicture
          : entityCorePicture // ignore: cast_nullable_to_non_nullable
              as EntityCorePictures,
      timeIndex: freezed == timeIndex
          ? _self.timeIndex
          : timeIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of EventShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res> get productEntity {
    return $CategoryEntityCopyWith<$Res>(_self.productEntity, (value) {
      return _then(_self.copyWith(productEntity: value));
    });
  }

  /// Create a copy of EventShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityCorePicturesCopyWith<$Res> get entityCorePicture {
    return $EntityCorePicturesCopyWith<$Res>(_self.entityCorePicture, (value) {
      return _then(_self.copyWith(entityCorePicture: value));
    });
  }
}

/// @nodoc

class _Change implements EventShoppingBasket {
  const _Change({required this.timePosition, required this.location});

  final int timePosition;
  final String location;

  /// Create a copy of EventShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChangeCopyWith<_Change> get copyWith =>
      __$ChangeCopyWithImpl<_Change>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Change &&
            (identical(other.timePosition, timePosition) ||
                other.timePosition == timePosition) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timePosition, location);

  @override
  String toString() {
    return 'EventShoppingBasket.change(timePosition: $timePosition, location: $location)';
  }
}

/// @nodoc
abstract mixin class _$ChangeCopyWith<$Res>
    implements $EventShoppingBasketCopyWith<$Res> {
  factory _$ChangeCopyWith(_Change value, $Res Function(_Change) _then) =
      __$ChangeCopyWithImpl;
  @useResult
  $Res call({int timePosition, String location});
}

/// @nodoc
class __$ChangeCopyWithImpl<$Res> implements _$ChangeCopyWith<$Res> {
  __$ChangeCopyWithImpl(this._self, this._then);

  final _Change _self;
  final $Res Function(_Change) _then;

  /// Create a copy of EventShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? timePosition = null,
    Object? location = null,
  }) {
    return _then(_Change(
      timePosition: null == timePosition
          ? _self.timePosition
          : timePosition // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Remove implements EventShoppingBasket {
  const _Remove({required this.timePosition});

  final int timePosition;

  /// Create a copy of EventShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoveCopyWith<_Remove> get copyWith =>
      __$RemoveCopyWithImpl<_Remove>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Remove &&
            (identical(other.timePosition, timePosition) ||
                other.timePosition == timePosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timePosition);

  @override
  String toString() {
    return 'EventShoppingBasket.remove(timePosition: $timePosition)';
  }
}

/// @nodoc
abstract mixin class _$RemoveCopyWith<$Res>
    implements $EventShoppingBasketCopyWith<$Res> {
  factory _$RemoveCopyWith(_Remove value, $Res Function(_Remove) _then) =
      __$RemoveCopyWithImpl;
  @useResult
  $Res call({int timePosition});
}

/// @nodoc
class __$RemoveCopyWithImpl<$Res> implements _$RemoveCopyWith<$Res> {
  __$RemoveCopyWithImpl(this._self, this._then);

  final _Remove _self;
  final $Res Function(_Remove) _then;

  /// Create a copy of EventShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? timePosition = null,
  }) {
    return _then(_Remove(
      timePosition: null == timePosition
          ? _self.timePosition
          : timePosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _OrderList implements EventShoppingBasket {
  const _OrderList({required this.orderList});

  final EnumSortProductOrder orderList;

  /// Create a copy of EventShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderListCopyWith<_OrderList> get copyWith =>
      __$OrderListCopyWithImpl<_OrderList>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderList &&
            (identical(other.orderList, orderList) ||
                other.orderList == orderList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderList);

  @override
  String toString() {
    return 'EventShoppingBasket.orderList(orderList: $orderList)';
  }
}

/// @nodoc
abstract mixin class _$OrderListCopyWith<$Res>
    implements $EventShoppingBasketCopyWith<$Res> {
  factory _$OrderListCopyWith(
          _OrderList value, $Res Function(_OrderList) _then) =
      __$OrderListCopyWithImpl;
  @useResult
  $Res call({EnumSortProductOrder orderList});
}

/// @nodoc
class __$OrderListCopyWithImpl<$Res> implements _$OrderListCopyWith<$Res> {
  __$OrderListCopyWithImpl(this._self, this._then);

  final _OrderList _self;
  final $Res Function(_OrderList) _then;

  /// Create a copy of EventShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderList = null,
  }) {
    return _then(_OrderList(
      orderList: null == orderList
          ? _self.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as EnumSortProductOrder,
    ));
  }
}

/// @nodoc

class _Send implements EventShoppingBasket {
  const _Send({required this.customerNumber});

  final String customerNumber;

  /// Create a copy of EventShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SendCopyWith<_Send> get copyWith =>
      __$SendCopyWithImpl<_Send>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Send &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerNumber);

  @override
  String toString() {
    return 'EventShoppingBasket.send(customerNumber: $customerNumber)';
  }
}

/// @nodoc
abstract mixin class _$SendCopyWith<$Res>
    implements $EventShoppingBasketCopyWith<$Res> {
  factory _$SendCopyWith(_Send value, $Res Function(_Send) _then) =
      __$SendCopyWithImpl;
  @useResult
  $Res call({String customerNumber});
}

/// @nodoc
class __$SendCopyWithImpl<$Res> implements _$SendCopyWith<$Res> {
  __$SendCopyWithImpl(this._self, this._then);

  final _Send _self;
  final $Res Function(_Send) _then;

  /// Create a copy of EventShoppingBasket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerNumber = null,
  }) {
    return _then(_Send(
      customerNumber: null == customerNumber
          ? _self.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Clear implements EventShoppingBasket {
  const _Clear();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EventShoppingBasket.clear()';
  }
}

/// @nodoc

class _DeleteFailureMessage implements EventShoppingBasket {
  const _DeleteFailureMessage();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeleteFailureMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EventShoppingBasket.deleteFailureMessage()';
  }
}

// dart format on
