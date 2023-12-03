// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_expandeable_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateExpandeableMenu {
  Map<String, bool> get expandeableMenu => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateExpandeableMenuCopyWith<StateExpandableMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateExpandeableMenuCopyWith<$Res> {
  factory $StateExpandeableMenuCopyWith(
          StateExpandableMenu value, $Res Function(StateExpandableMenu) then) =
      _$StateExpandeableMenuCopyWithImpl<$Res, StateExpandableMenu>;

  @useResult
  $Res call({Map<String, bool> expandeableMenu});
}

/// @nodoc
class _$StateExpandeableMenuCopyWithImpl<$Res, $Val extends StateExpandableMenu>
    implements $StateExpandeableMenuCopyWith<$Res> {
  _$StateExpandeableMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expandeableMenu = null,
  }) {
    return _then(_value.copyWith(
      expandeableMenu: null == expandeableMenu
          ? _value.expandeableMenu
          : expandeableMenu // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateExpandeableMenuImplCopyWith<$Res>
    implements $StateExpandeableMenuCopyWith<$Res> {
  factory _$$StateExpandeableMenuImplCopyWith(_$StateExpandeableMenuImpl value,
          $Res Function(_$StateExpandeableMenuImpl) then) =
      __$$StateExpandeableMenuImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({Map<String, bool> expandeableMenu});
}

/// @nodoc
class __$$StateExpandeableMenuImplCopyWithImpl<$Res>
    extends _$StateExpandeableMenuCopyWithImpl<$Res, _$StateExpandeableMenuImpl>
    implements _$$StateExpandeableMenuImplCopyWith<$Res> {
  __$$StateExpandeableMenuImplCopyWithImpl(_$StateExpandeableMenuImpl _value,
      $Res Function(_$StateExpandeableMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expandeableMenu = null,
  }) {
    return _then(_$StateExpandeableMenuImpl(
      expandeableMenu: null == expandeableMenu
          ? _value._expandeableMenu
          : expandeableMenu // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$StateExpandeableMenuImpl implements _StateExpandeableMenu {
  const _$StateExpandeableMenuImpl(
      {required final Map<String, bool> expandeableMenu})
      : _expandeableMenu = expandeableMenu;

  final Map<String, bool> _expandeableMenu;

  @override
  Map<String, bool> get expandeableMenu {
    if (_expandeableMenu is EqualUnmodifiableMapView) return _expandeableMenu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_expandeableMenu);
  }

  @override
  String toString() {
    return 'StateExpandeableMenu(expandeableMenu: $expandeableMenu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateExpandeableMenuImpl &&
            const DeepCollectionEquality()
                .equals(other._expandeableMenu, _expandeableMenu));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_expandeableMenu));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateExpandeableMenuImplCopyWith<_$StateExpandeableMenuImpl>
      get copyWith =>
          __$$StateExpandeableMenuImplCopyWithImpl<_$StateExpandeableMenuImpl>(
              this, _$identity);
}

abstract class _StateExpandeableMenu implements StateExpandableMenu {
  const factory _StateExpandeableMenu(
          {required final Map<String, bool> expandeableMenu}) =
      _$StateExpandeableMenuImpl;

  @override
  Map<String, bool> get expandeableMenu;

  @override
  @JsonKey(ignore: true)
  _$$StateExpandeableMenuImplCopyWith<_$StateExpandeableMenuImpl>
      get copyWith => throw _privateConstructorUsedError;
}
