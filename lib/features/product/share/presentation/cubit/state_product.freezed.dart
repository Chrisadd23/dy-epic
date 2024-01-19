// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateProduct<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String hashKey,
            String category,
            int productOrderCount,
            double price,
            EntityProduct? product,
            Map<Enum, dynamic> selectedCharacteristics)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            String hashKey,
            String category,
            int productOrderCount,
            double price,
            EntityProduct? product,
            Map<Enum, dynamic> selectedCharacteristics)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String hashKey,
            String category,
            int productOrderCount,
            double price,
            EntityProduct? product,
            Map<Enum, dynamic> selectedCharacteristics)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Failure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateProductCopyWith<T, $Res> {
  factory $StateProductCopyWith(
          StateProduct<T> value, $Res Function(StateProduct<T>) then) =
      _$StateProductCopyWithImpl<T, $Res, StateProduct<T>>;
}

/// @nodoc
class _$StateProductCopyWithImpl<T, $Res, $Val extends StateProduct<T>>
    implements $StateProductCopyWith<T, $Res> {
  _$StateProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$StateProductCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> implements _Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'StateProduct<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String hashKey,
            String category,
            int productOrderCount,
            double price,
            EntityProduct? product,
            Map<Enum, dynamic> selectedCharacteristics)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            String hashKey,
            String category,
            int productOrderCount,
            double price,
            EntityProduct? product,
            Map<Enum, dynamic> selectedCharacteristics)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String hashKey,
            String category,
            int productOrderCount,
            double price,
            EntityProduct? product,
            Map<Enum, dynamic> selectedCharacteristics)?
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
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Failure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements StateProduct<T> {
  const factory _Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call(
      {String hashKey,
      String category,
      int productOrderCount,
      double price,
      EntityProduct? product,
      Map<Enum, dynamic> selectedCharacteristics});

  $EntityProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$StateProductCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashKey = null,
    Object? category = null,
    Object? productOrderCount = null,
    Object? price = null,
    Object? product = freezed,
    Object? selectedCharacteristics = null,
  }) {
    return _then(_$SuccessImpl<T>(
      hashKey: null == hashKey
          ? _value.hashKey
          : hashKey // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      productOrderCount: null == productOrderCount
          ? _value.productOrderCount
          : productOrderCount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as EntityProduct?,
      selectedCharacteristics: null == selectedCharacteristics
          ? _value._selectedCharacteristics
          : selectedCharacteristics // ignore: cast_nullable_to_non_nullable
              as Map<Enum, dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EntityProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $EntityProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl<T> implements _Success<T> {
  const _$SuccessImpl(
      {this.hashKey = '',
      this.category = '',
      this.productOrderCount = 0,
      this.price = 0.00,
      this.product,
      final Map<Enum, dynamic> selectedCharacteristics = const {}})
      : _selectedCharacteristics = selectedCharacteristics;

  @override
  @JsonKey()
  final String hashKey;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final int productOrderCount;
  @override
  @JsonKey()
  final double price;
  @override
  final EntityProduct? product;
  final Map<Enum, dynamic> _selectedCharacteristics;
  @override
  @JsonKey()
  Map<Enum, dynamic> get selectedCharacteristics {
    if (_selectedCharacteristics is EqualUnmodifiableMapView)
      return _selectedCharacteristics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedCharacteristics);
  }

  @override
  String toString() {
    return 'StateProduct<$T>.success(hashKey: $hashKey, category: $category, productOrderCount: $productOrderCount, price: $price, product: $product, selectedCharacteristics: $selectedCharacteristics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            (identical(other.hashKey, hashKey) || other.hashKey == hashKey) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.productOrderCount, productOrderCount) ||
                other.productOrderCount == productOrderCount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(
                other._selectedCharacteristics, _selectedCharacteristics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hashKey,
      category,
      productOrderCount,
      price,
      product,
      const DeepCollectionEquality().hash(_selectedCharacteristics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String hashKey,
            String category,
            int productOrderCount,
            double price,
            EntityProduct? product,
            Map<Enum, dynamic> selectedCharacteristics)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(hashKey, category, productOrderCount, price, product,
        selectedCharacteristics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            String hashKey,
            String category,
            int productOrderCount,
            double price,
            EntityProduct? product,
            Map<Enum, dynamic> selectedCharacteristics)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(hashKey, category, productOrderCount, price, product,
        selectedCharacteristics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String hashKey,
            String category,
            int productOrderCount,
            double price,
            EntityProduct? product,
            Map<Enum, dynamic> selectedCharacteristics)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(hashKey, category, productOrderCount, price, product,
          selectedCharacteristics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Failure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements StateProduct<T> {
  const factory _Success(
      {final String hashKey,
      final String category,
      final int productOrderCount,
      final double price,
      final EntityProduct? product,
      final Map<Enum, dynamic> selectedCharacteristics}) = _$SuccessImpl<T>;

  String get hashKey;
  String get category;
  int get productOrderCount;
  double get price;
  EntityProduct? get product;
  Map<Enum, dynamic> get selectedCharacteristics;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<T, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<T> value, $Res Function(_$FailureImpl<T>) then) =
      __$$FailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<T, $Res>
    extends _$StateProductCopyWithImpl<T, $Res, _$FailureImpl<T>>
    implements _$$FailureImplCopyWith<T, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<T> _value, $Res Function(_$FailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureImpl<T>(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$FailureImpl<T> implements _Failure<T> {
  const _$FailureImpl({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'StateProduct<$T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      __$$FailureImplCopyWithImpl<T, _$FailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String hashKey,
            String category,
            int productOrderCount,
            double price,
            EntityProduct? product,
            Map<Enum, dynamic> selectedCharacteristics)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            String hashKey,
            String category,
            int productOrderCount,
            double price,
            EntityProduct? product,
            Map<Enum, dynamic> selectedCharacteristics)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String hashKey,
            String category,
            int productOrderCount,
            double price,
            EntityProduct? product,
            Map<Enum, dynamic> selectedCharacteristics)?
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
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Failure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<T> implements StateProduct<T> {
  const factory _Failure({required final Failure failure}) = _$FailureImpl<T>;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
