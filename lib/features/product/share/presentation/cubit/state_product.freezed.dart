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
            List<T>? workingTables,
            T? selectedWorkingTable)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String hashKey, String category, int productOrderCount,
            List<T>? workingTables, T? selectedWorkingTable)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String hashKey, String category, int productOrderCount,
            List<T>? workingTables, T? selectedWorkingTable)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Success<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Success<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? success,
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
            List<T>? workingTables,
            T? selectedWorkingTable)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String hashKey, String category, int productOrderCount,
            List<T>? workingTables, T? selectedWorkingTable)?
        success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String hashKey, String category, int productOrderCount,
            List<T>? workingTables, T? selectedWorkingTable)?
        success,
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
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Success<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? success,
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
      List<T>? workingTables,
      T? selectedWorkingTable});
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
    Object? workingTables = freezed,
    Object? selectedWorkingTable = freezed,
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
      workingTables: freezed == workingTables
          ? _value._workingTables
          : workingTables // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      selectedWorkingTable: freezed == selectedWorkingTable
          ? _value.selectedWorkingTable
          : selectedWorkingTable // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> implements _Success<T> {
  const _$SuccessImpl(
      {this.hashKey = '',
      this.category = '',
      this.productOrderCount = 0,
      final List<T>? workingTables = const [],
      this.selectedWorkingTable})
      : _workingTables = workingTables;

  @override
  @JsonKey()
  final String hashKey;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final int productOrderCount;
  final List<T>? _workingTables;
  @override
  @JsonKey()
  List<T>? get workingTables {
    final value = _workingTables;
    if (value == null) return null;
    if (_workingTables is EqualUnmodifiableListView) return _workingTables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final T? selectedWorkingTable;

  @override
  String toString() {
    return 'StateProduct<$T>.success(hashKey: $hashKey, category: $category, productOrderCount: $productOrderCount, workingTables: $workingTables, selectedWorkingTable: $selectedWorkingTable)';
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
            const DeepCollectionEquality()
                .equals(other._workingTables, _workingTables) &&
            const DeepCollectionEquality()
                .equals(other.selectedWorkingTable, selectedWorkingTable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hashKey,
      category,
      productOrderCount,
      const DeepCollectionEquality().hash(_workingTables),
      const DeepCollectionEquality().hash(selectedWorkingTable));

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
            List<T>? workingTables,
            T? selectedWorkingTable)
        success,
  }) {
    return success(hashKey, category, productOrderCount, workingTables,
        selectedWorkingTable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String hashKey, String category, int productOrderCount,
            List<T>? workingTables, T? selectedWorkingTable)?
        success,
  }) {
    return success?.call(hashKey, category, productOrderCount, workingTables,
        selectedWorkingTable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String hashKey, String category, int productOrderCount,
            List<T>? workingTables, T? selectedWorkingTable)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(hashKey, category, productOrderCount, workingTables,
          selectedWorkingTable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Success<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Success<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? success,
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
      final List<T>? workingTables,
      final T? selectedWorkingTable}) = _$SuccessImpl<T>;

  String get hashKey;
  String get category;
  int get productOrderCount;
  List<T>? get workingTables;
  T? get selectedWorkingTable;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
