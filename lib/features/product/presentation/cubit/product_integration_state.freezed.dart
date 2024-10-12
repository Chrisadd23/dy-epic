// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_integration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductIntegrationState {
  EnumCategoryProduct get categoryProduct => throw _privateConstructorUsedError;
  bool get imageUploadInProcess => throw _privateConstructorUsedError;
  bool get infoUploadInProcess => throw _privateConstructorUsedError;
  bool get isProductVisible => throw _privateConstructorUsedError;
  Uint8List? get imageUint8List => throw _privateConstructorUsedError;
  List<String> get attributes => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductIntegrationStateCopyWith<ProductIntegrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductIntegrationStateCopyWith<$Res> {
  factory $ProductIntegrationStateCopyWith(ProductIntegrationState value,
          $Res Function(ProductIntegrationState) then) =
      _$ProductIntegrationStateCopyWithImpl<$Res, ProductIntegrationState>;
  @useResult
  $Res call(
      {EnumCategoryProduct categoryProduct,
      bool imageUploadInProcess,
      bool infoUploadInProcess,
      bool isProductVisible,
      Uint8List? imageUint8List,
      List<String> attributes,
      Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$ProductIntegrationStateCopyWithImpl<$Res,
        $Val extends ProductIntegrationState>
    implements $ProductIntegrationStateCopyWith<$Res> {
  _$ProductIntegrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryProduct = null,
    Object? imageUploadInProcess = null,
    Object? infoUploadInProcess = null,
    Object? isProductVisible = null,
    Object? imageUint8List = freezed,
    Object? attributes = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      categoryProduct: null == categoryProduct
          ? _value.categoryProduct
          : categoryProduct // ignore: cast_nullable_to_non_nullable
              as EnumCategoryProduct,
      imageUploadInProcess: null == imageUploadInProcess
          ? _value.imageUploadInProcess
          : imageUploadInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      infoUploadInProcess: null == infoUploadInProcess
          ? _value.infoUploadInProcess
          : infoUploadInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductVisible: null == isProductVisible
          ? _value.isProductVisible
          : isProductVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUint8List: freezed == imageUint8List
          ? _value.imageUint8List
          : imageUint8List // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductIntegrationStateImplCopyWith<$Res>
    implements $ProductIntegrationStateCopyWith<$Res> {
  factory _$$ProductIntegrationStateImplCopyWith(
          _$ProductIntegrationStateImpl value,
          $Res Function(_$ProductIntegrationStateImpl) then) =
      __$$ProductIntegrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EnumCategoryProduct categoryProduct,
      bool imageUploadInProcess,
      bool infoUploadInProcess,
      bool isProductVisible,
      Uint8List? imageUint8List,
      List<String> attributes,
      Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$ProductIntegrationStateImplCopyWithImpl<$Res>
    extends _$ProductIntegrationStateCopyWithImpl<$Res,
        _$ProductIntegrationStateImpl>
    implements _$$ProductIntegrationStateImplCopyWith<$Res> {
  __$$ProductIntegrationStateImplCopyWithImpl(
      _$ProductIntegrationStateImpl _value,
      $Res Function(_$ProductIntegrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryProduct = null,
    Object? imageUploadInProcess = null,
    Object? infoUploadInProcess = null,
    Object? isProductVisible = null,
    Object? imageUint8List = freezed,
    Object? attributes = null,
    Object? failure = freezed,
  }) {
    return _then(_$ProductIntegrationStateImpl(
      categoryProduct: null == categoryProduct
          ? _value.categoryProduct
          : categoryProduct // ignore: cast_nullable_to_non_nullable
              as EnumCategoryProduct,
      imageUploadInProcess: null == imageUploadInProcess
          ? _value.imageUploadInProcess
          : imageUploadInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      infoUploadInProcess: null == infoUploadInProcess
          ? _value.infoUploadInProcess
          : infoUploadInProcess // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductVisible: null == isProductVisible
          ? _value.isProductVisible
          : isProductVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUint8List: freezed == imageUint8List
          ? _value.imageUint8List
          : imageUint8List // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ProductIntegrationStateImpl implements _ProductIntegrationState {
  const _$ProductIntegrationStateImpl(
      {required this.categoryProduct,
      required this.imageUploadInProcess,
      required this.infoUploadInProcess,
      required this.isProductVisible,
      this.imageUint8List,
      final List<String> attributes = const [],
      this.failure})
      : _attributes = attributes;

  @override
  final EnumCategoryProduct categoryProduct;
  @override
  final bool imageUploadInProcess;
  @override
  final bool infoUploadInProcess;
  @override
  final bool isProductVisible;
  @override
  final Uint8List? imageUint8List;
  final List<String> _attributes;
  @override
  @JsonKey()
  List<String> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ProductIntegrationState(categoryProduct: $categoryProduct, imageUploadInProcess: $imageUploadInProcess, infoUploadInProcess: $infoUploadInProcess, isProductVisible: $isProductVisible, imageUint8List: $imageUint8List, attributes: $attributes, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductIntegrationStateImpl &&
            (identical(other.categoryProduct, categoryProduct) ||
                other.categoryProduct == categoryProduct) &&
            (identical(other.imageUploadInProcess, imageUploadInProcess) ||
                other.imageUploadInProcess == imageUploadInProcess) &&
            (identical(other.infoUploadInProcess, infoUploadInProcess) ||
                other.infoUploadInProcess == infoUploadInProcess) &&
            (identical(other.isProductVisible, isProductVisible) ||
                other.isProductVisible == isProductVisible) &&
            const DeepCollectionEquality()
                .equals(other.imageUint8List, imageUint8List) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryProduct,
      imageUploadInProcess,
      infoUploadInProcess,
      isProductVisible,
      const DeepCollectionEquality().hash(imageUint8List),
      const DeepCollectionEquality().hash(_attributes),
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductIntegrationStateImplCopyWith<_$ProductIntegrationStateImpl>
      get copyWith => __$$ProductIntegrationStateImplCopyWithImpl<
          _$ProductIntegrationStateImpl>(this, _$identity);
}

abstract class _ProductIntegrationState implements ProductIntegrationState {
  const factory _ProductIntegrationState(
      {required final EnumCategoryProduct categoryProduct,
      required final bool imageUploadInProcess,
      required final bool infoUploadInProcess,
      required final bool isProductVisible,
      final Uint8List? imageUint8List,
      final List<String> attributes,
      final Failure? failure}) = _$ProductIntegrationStateImpl;

  @override
  EnumCategoryProduct get categoryProduct;
  @override
  bool get imageUploadInProcess;
  @override
  bool get infoUploadInProcess;
  @override
  bool get isProductVisible;
  @override
  Uint8List? get imageUint8List;
  @override
  List<String> get attributes;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$ProductIntegrationStateImplCopyWith<_$ProductIntegrationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
