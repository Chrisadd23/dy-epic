// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_workingtable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateWorkingTable {
  String get hashKey => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get productOrderCount => throw _privateConstructorUsedError;
  List<ArbeitsTischeProduct>? get workingTables =>
      throw _privateConstructorUsedError;
  ArbeitsTischeProduct? get selectedWorkingTable =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateWorkingTableCopyWith<StateWorkingTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateWorkingTableCopyWith<$Res> {
  factory $StateWorkingTableCopyWith(
          StateWorkingTable value, $Res Function(StateWorkingTable) then) =
      _$StateWorkingTableCopyWithImpl<$Res, StateWorkingTable>;
  @useResult
  $Res call(
      {String hashKey,
      String category,
      int productOrderCount,
      List<ArbeitsTischeProduct>? workingTables,
      ArbeitsTischeProduct? selectedWorkingTable});

  $ArbeitsTischeProductCopyWith<$Res>? get selectedWorkingTable;
}

/// @nodoc
class _$StateWorkingTableCopyWithImpl<$Res, $Val extends StateWorkingTable>
    implements $StateWorkingTableCopyWith<$Res> {
  _$StateWorkingTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashKey = null,
    Object? category = null,
    Object? productOrderCount = null,
    Object? workingTables = freezed,
    Object? selectedWorkingTable = freezed,
  }) {
    return _then(_value.copyWith(
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
          ? _value.workingTables
          : workingTables // ignore: cast_nullable_to_non_nullable
              as List<ArbeitsTischeProduct>?,
      selectedWorkingTable: freezed == selectedWorkingTable
          ? _value.selectedWorkingTable
          : selectedWorkingTable // ignore: cast_nullable_to_non_nullable
              as ArbeitsTischeProduct?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArbeitsTischeProductCopyWith<$Res>? get selectedWorkingTable {
    if (_value.selectedWorkingTable == null) {
      return null;
    }

    return $ArbeitsTischeProductCopyWith<$Res>(_value.selectedWorkingTable!,
        (value) {
      return _then(_value.copyWith(selectedWorkingTable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StateWorkingTableCopyWith<$Res>
    implements $StateWorkingTableCopyWith<$Res> {
  factory _$$_StateWorkingTableCopyWith(_$_StateWorkingTable value,
          $Res Function(_$_StateWorkingTable) then) =
      __$$_StateWorkingTableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hashKey,
      String category,
      int productOrderCount,
      List<ArbeitsTischeProduct>? workingTables,
      ArbeitsTischeProduct? selectedWorkingTable});

  @override
  $ArbeitsTischeProductCopyWith<$Res>? get selectedWorkingTable;
}

/// @nodoc
class __$$_StateWorkingTableCopyWithImpl<$Res>
    extends _$StateWorkingTableCopyWithImpl<$Res, _$_StateWorkingTable>
    implements _$$_StateWorkingTableCopyWith<$Res> {
  __$$_StateWorkingTableCopyWithImpl(
      _$_StateWorkingTable _value, $Res Function(_$_StateWorkingTable) _then)
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
    return _then(_$_StateWorkingTable(
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
              as List<ArbeitsTischeProduct>?,
      selectedWorkingTable: freezed == selectedWorkingTable
          ? _value.selectedWorkingTable
          : selectedWorkingTable // ignore: cast_nullable_to_non_nullable
              as ArbeitsTischeProduct?,
    ));
  }
}

/// @nodoc

class _$_StateWorkingTable implements _StateWorkingTable {
  const _$_StateWorkingTable(
      {this.hashKey = '',
      this.category = '',
      this.productOrderCount = 0,
      final List<ArbeitsTischeProduct>? workingTables = const [],
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
  final List<ArbeitsTischeProduct>? _workingTables;
  @override
  @JsonKey()
  List<ArbeitsTischeProduct>? get workingTables {
    final value = _workingTables;
    if (value == null) return null;
    if (_workingTables is EqualUnmodifiableListView) return _workingTables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ArbeitsTischeProduct? selectedWorkingTable;

  @override
  String toString() {
    return 'StateWorkingTable(hashKey: $hashKey, category: $category, productOrderCount: $productOrderCount, workingTables: $workingTables, selectedWorkingTable: $selectedWorkingTable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateWorkingTable &&
            (identical(other.hashKey, hashKey) || other.hashKey == hashKey) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.productOrderCount, productOrderCount) ||
                other.productOrderCount == productOrderCount) &&
            const DeepCollectionEquality()
                .equals(other._workingTables, _workingTables) &&
            (identical(other.selectedWorkingTable, selectedWorkingTable) ||
                other.selectedWorkingTable == selectedWorkingTable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hashKey,
      category,
      productOrderCount,
      const DeepCollectionEquality().hash(_workingTables),
      selectedWorkingTable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateWorkingTableCopyWith<_$_StateWorkingTable> get copyWith =>
      __$$_StateWorkingTableCopyWithImpl<_$_StateWorkingTable>(
          this, _$identity);
}

abstract class _StateWorkingTable implements StateWorkingTable {
  const factory _StateWorkingTable(
      {final String hashKey,
      final String category,
      final int productOrderCount,
      final List<ArbeitsTischeProduct>? workingTables,
      final ArbeitsTischeProduct? selectedWorkingTable}) = _$_StateWorkingTable;

  @override
  String get hashKey;
  @override
  String get category;
  @override
  int get productOrderCount;
  @override
  List<ArbeitsTischeProduct>? get workingTables;
  @override
  ArbeitsTischeProduct? get selectedWorkingTable;
  @override
  @JsonKey(ignore: true)
  _$$_StateWorkingTableCopyWith<_$_StateWorkingTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArbeitsTischeProduct {
  String? get name => throw _privateConstructorUsedError;
  Gestell? get frameColors => throw _privateConstructorUsedError;
  Platte? get plateColor => throw _privateConstructorUsedError;
  HoehenVerstellbarkeit? get hoehenVerstellbarkeit =>
      throw _privateConstructorUsedError;
  GestellDimension? get gestellDimension => throw _privateConstructorUsedError;
  Hubbereich? get hubbereich => throw _privateConstructorUsedError;
  Hubgeschwindigkeit? get hubgeschwindigkeit =>
      throw _privateConstructorUsedError;
  Gerauscheentwicklung? get gerauscheentwicklung =>
      throw _privateConstructorUsedError;
  StandbyStromverbrauch? get standbyStromverbrauch =>
      throw _privateConstructorUsedError;
  bool? get kollisionsSchutz => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArbeitsTischeProductCopyWith<ArbeitsTischeProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArbeitsTischeProductCopyWith<$Res> {
  factory $ArbeitsTischeProductCopyWith(ArbeitsTischeProduct value,
          $Res Function(ArbeitsTischeProduct) then) =
      _$ArbeitsTischeProductCopyWithImpl<$Res, ArbeitsTischeProduct>;
  @useResult
  $Res call(
      {String? name,
      Gestell? frameColors,
      Platte? plateColor,
      HoehenVerstellbarkeit? hoehenVerstellbarkeit,
      GestellDimension? gestellDimension,
      Hubbereich? hubbereich,
      Hubgeschwindigkeit? hubgeschwindigkeit,
      Gerauscheentwicklung? gerauscheentwicklung,
      StandbyStromverbrauch? standbyStromverbrauch,
      bool? kollisionsSchutz});

  $GestellCopyWith<$Res>? get frameColors;
  $PlatteCopyWith<$Res>? get plateColor;
  $HoehenVerstellbarkeitCopyWith<$Res>? get hoehenVerstellbarkeit;
  $GestellDimensionCopyWith<$Res>? get gestellDimension;
  $HubbereichCopyWith<$Res>? get hubbereich;
  $HubgeschwindigkeitCopyWith<$Res>? get hubgeschwindigkeit;
  $GerauscheentwicklungCopyWith<$Res>? get gerauscheentwicklung;
  $StandbyStromverbrauchCopyWith<$Res>? get standbyStromverbrauch;
}

/// @nodoc
class _$ArbeitsTischeProductCopyWithImpl<$Res,
        $Val extends ArbeitsTischeProduct>
    implements $ArbeitsTischeProductCopyWith<$Res> {
  _$ArbeitsTischeProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? frameColors = freezed,
    Object? plateColor = freezed,
    Object? hoehenVerstellbarkeit = freezed,
    Object? gestellDimension = freezed,
    Object? hubbereich = freezed,
    Object? hubgeschwindigkeit = freezed,
    Object? gerauscheentwicklung = freezed,
    Object? standbyStromverbrauch = freezed,
    Object? kollisionsSchutz = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      frameColors: freezed == frameColors
          ? _value.frameColors
          : frameColors // ignore: cast_nullable_to_non_nullable
              as Gestell?,
      plateColor: freezed == plateColor
          ? _value.plateColor
          : plateColor // ignore: cast_nullable_to_non_nullable
              as Platte?,
      hoehenVerstellbarkeit: freezed == hoehenVerstellbarkeit
          ? _value.hoehenVerstellbarkeit
          : hoehenVerstellbarkeit // ignore: cast_nullable_to_non_nullable
              as HoehenVerstellbarkeit?,
      gestellDimension: freezed == gestellDimension
          ? _value.gestellDimension
          : gestellDimension // ignore: cast_nullable_to_non_nullable
              as GestellDimension?,
      hubbereich: freezed == hubbereich
          ? _value.hubbereich
          : hubbereich // ignore: cast_nullable_to_non_nullable
              as Hubbereich?,
      hubgeschwindigkeit: freezed == hubgeschwindigkeit
          ? _value.hubgeschwindigkeit
          : hubgeschwindigkeit // ignore: cast_nullable_to_non_nullable
              as Hubgeschwindigkeit?,
      gerauscheentwicklung: freezed == gerauscheentwicklung
          ? _value.gerauscheentwicklung
          : gerauscheentwicklung // ignore: cast_nullable_to_non_nullable
              as Gerauscheentwicklung?,
      standbyStromverbrauch: freezed == standbyStromverbrauch
          ? _value.standbyStromverbrauch
          : standbyStromverbrauch // ignore: cast_nullable_to_non_nullable
              as StandbyStromverbrauch?,
      kollisionsSchutz: freezed == kollisionsSchutz
          ? _value.kollisionsSchutz
          : kollisionsSchutz // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GestellCopyWith<$Res>? get frameColors {
    if (_value.frameColors == null) {
      return null;
    }

    return $GestellCopyWith<$Res>(_value.frameColors!, (value) {
      return _then(_value.copyWith(frameColors: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlatteCopyWith<$Res>? get plateColor {
    if (_value.plateColor == null) {
      return null;
    }

    return $PlatteCopyWith<$Res>(_value.plateColor!, (value) {
      return _then(_value.copyWith(plateColor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HoehenVerstellbarkeitCopyWith<$Res>? get hoehenVerstellbarkeit {
    if (_value.hoehenVerstellbarkeit == null) {
      return null;
    }

    return $HoehenVerstellbarkeitCopyWith<$Res>(_value.hoehenVerstellbarkeit!,
        (value) {
      return _then(_value.copyWith(hoehenVerstellbarkeit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GestellDimensionCopyWith<$Res>? get gestellDimension {
    if (_value.gestellDimension == null) {
      return null;
    }

    return $GestellDimensionCopyWith<$Res>(_value.gestellDimension!, (value) {
      return _then(_value.copyWith(gestellDimension: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HubbereichCopyWith<$Res>? get hubbereich {
    if (_value.hubbereich == null) {
      return null;
    }

    return $HubbereichCopyWith<$Res>(_value.hubbereich!, (value) {
      return _then(_value.copyWith(hubbereich: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HubgeschwindigkeitCopyWith<$Res>? get hubgeschwindigkeit {
    if (_value.hubgeschwindigkeit == null) {
      return null;
    }

    return $HubgeschwindigkeitCopyWith<$Res>(_value.hubgeschwindigkeit!,
        (value) {
      return _then(_value.copyWith(hubgeschwindigkeit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GerauscheentwicklungCopyWith<$Res>? get gerauscheentwicklung {
    if (_value.gerauscheentwicklung == null) {
      return null;
    }

    return $GerauscheentwicklungCopyWith<$Res>(_value.gerauscheentwicklung!,
        (value) {
      return _then(_value.copyWith(gerauscheentwicklung: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StandbyStromverbrauchCopyWith<$Res>? get standbyStromverbrauch {
    if (_value.standbyStromverbrauch == null) {
      return null;
    }

    return $StandbyStromverbrauchCopyWith<$Res>(_value.standbyStromverbrauch!,
        (value) {
      return _then(_value.copyWith(standbyStromverbrauch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArbeitsTischeProductCopyWith<$Res>
    implements $ArbeitsTischeProductCopyWith<$Res> {
  factory _$$_ArbeitsTischeProductCopyWith(_$_ArbeitsTischeProduct value,
          $Res Function(_$_ArbeitsTischeProduct) then) =
      __$$_ArbeitsTischeProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      Gestell? frameColors,
      Platte? plateColor,
      HoehenVerstellbarkeit? hoehenVerstellbarkeit,
      GestellDimension? gestellDimension,
      Hubbereich? hubbereich,
      Hubgeschwindigkeit? hubgeschwindigkeit,
      Gerauscheentwicklung? gerauscheentwicklung,
      StandbyStromverbrauch? standbyStromverbrauch,
      bool? kollisionsSchutz});

  @override
  $GestellCopyWith<$Res>? get frameColors;
  @override
  $PlatteCopyWith<$Res>? get plateColor;
  @override
  $HoehenVerstellbarkeitCopyWith<$Res>? get hoehenVerstellbarkeit;
  @override
  $GestellDimensionCopyWith<$Res>? get gestellDimension;
  @override
  $HubbereichCopyWith<$Res>? get hubbereich;
  @override
  $HubgeschwindigkeitCopyWith<$Res>? get hubgeschwindigkeit;
  @override
  $GerauscheentwicklungCopyWith<$Res>? get gerauscheentwicklung;
  @override
  $StandbyStromverbrauchCopyWith<$Res>? get standbyStromverbrauch;
}

/// @nodoc
class __$$_ArbeitsTischeProductCopyWithImpl<$Res>
    extends _$ArbeitsTischeProductCopyWithImpl<$Res, _$_ArbeitsTischeProduct>
    implements _$$_ArbeitsTischeProductCopyWith<$Res> {
  __$$_ArbeitsTischeProductCopyWithImpl(_$_ArbeitsTischeProduct _value,
      $Res Function(_$_ArbeitsTischeProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? frameColors = freezed,
    Object? plateColor = freezed,
    Object? hoehenVerstellbarkeit = freezed,
    Object? gestellDimension = freezed,
    Object? hubbereich = freezed,
    Object? hubgeschwindigkeit = freezed,
    Object? gerauscheentwicklung = freezed,
    Object? standbyStromverbrauch = freezed,
    Object? kollisionsSchutz = freezed,
  }) {
    return _then(_$_ArbeitsTischeProduct(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      frameColors: freezed == frameColors
          ? _value.frameColors
          : frameColors // ignore: cast_nullable_to_non_nullable
              as Gestell?,
      plateColor: freezed == plateColor
          ? _value.plateColor
          : plateColor // ignore: cast_nullable_to_non_nullable
              as Platte?,
      hoehenVerstellbarkeit: freezed == hoehenVerstellbarkeit
          ? _value.hoehenVerstellbarkeit
          : hoehenVerstellbarkeit // ignore: cast_nullable_to_non_nullable
              as HoehenVerstellbarkeit?,
      gestellDimension: freezed == gestellDimension
          ? _value.gestellDimension
          : gestellDimension // ignore: cast_nullable_to_non_nullable
              as GestellDimension?,
      hubbereich: freezed == hubbereich
          ? _value.hubbereich
          : hubbereich // ignore: cast_nullable_to_non_nullable
              as Hubbereich?,
      hubgeschwindigkeit: freezed == hubgeschwindigkeit
          ? _value.hubgeschwindigkeit
          : hubgeschwindigkeit // ignore: cast_nullable_to_non_nullable
              as Hubgeschwindigkeit?,
      gerauscheentwicklung: freezed == gerauscheentwicklung
          ? _value.gerauscheentwicklung
          : gerauscheentwicklung // ignore: cast_nullable_to_non_nullable
              as Gerauscheentwicklung?,
      standbyStromverbrauch: freezed == standbyStromverbrauch
          ? _value.standbyStromverbrauch
          : standbyStromverbrauch // ignore: cast_nullable_to_non_nullable
              as StandbyStromverbrauch?,
      kollisionsSchutz: freezed == kollisionsSchutz
          ? _value.kollisionsSchutz
          : kollisionsSchutz // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ArbeitsTischeProduct implements _ArbeitsTischeProduct {
  const _$_ArbeitsTischeProduct(
      {this.name,
      this.frameColors,
      this.plateColor,
      this.hoehenVerstellbarkeit,
      this.gestellDimension,
      this.hubbereich,
      this.hubgeschwindigkeit,
      this.gerauscheentwicklung,
      this.standbyStromverbrauch,
      this.kollisionsSchutz});

  @override
  final String? name;
  @override
  final Gestell? frameColors;
  @override
  final Platte? plateColor;
  @override
  final HoehenVerstellbarkeit? hoehenVerstellbarkeit;
  @override
  final GestellDimension? gestellDimension;
  @override
  final Hubbereich? hubbereich;
  @override
  final Hubgeschwindigkeit? hubgeschwindigkeit;
  @override
  final Gerauscheentwicklung? gerauscheentwicklung;
  @override
  final StandbyStromverbrauch? standbyStromverbrauch;
  @override
  final bool? kollisionsSchutz;

  @override
  String toString() {
    return 'ArbeitsTischeProduct(name: $name, frameColors: $frameColors, plateColor: $plateColor, hoehenVerstellbarkeit: $hoehenVerstellbarkeit, gestellDimension: $gestellDimension, hubbereich: $hubbereich, hubgeschwindigkeit: $hubgeschwindigkeit, gerauscheentwicklung: $gerauscheentwicklung, standbyStromverbrauch: $standbyStromverbrauch, kollisionsSchutz: $kollisionsSchutz)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArbeitsTischeProduct &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.frameColors, frameColors) ||
                other.frameColors == frameColors) &&
            (identical(other.plateColor, plateColor) ||
                other.plateColor == plateColor) &&
            (identical(other.hoehenVerstellbarkeit, hoehenVerstellbarkeit) ||
                other.hoehenVerstellbarkeit == hoehenVerstellbarkeit) &&
            (identical(other.gestellDimension, gestellDimension) ||
                other.gestellDimension == gestellDimension) &&
            (identical(other.hubbereich, hubbereich) ||
                other.hubbereich == hubbereich) &&
            (identical(other.hubgeschwindigkeit, hubgeschwindigkeit) ||
                other.hubgeschwindigkeit == hubgeschwindigkeit) &&
            (identical(other.gerauscheentwicklung, gerauscheentwicklung) ||
                other.gerauscheentwicklung == gerauscheentwicklung) &&
            (identical(other.standbyStromverbrauch, standbyStromverbrauch) ||
                other.standbyStromverbrauch == standbyStromverbrauch) &&
            (identical(other.kollisionsSchutz, kollisionsSchutz) ||
                other.kollisionsSchutz == kollisionsSchutz));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      frameColors,
      plateColor,
      hoehenVerstellbarkeit,
      gestellDimension,
      hubbereich,
      hubgeschwindigkeit,
      gerauscheentwicklung,
      standbyStromverbrauch,
      kollisionsSchutz);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArbeitsTischeProductCopyWith<_$_ArbeitsTischeProduct> get copyWith =>
      __$$_ArbeitsTischeProductCopyWithImpl<_$_ArbeitsTischeProduct>(
          this, _$identity);
}

abstract class _ArbeitsTischeProduct implements ArbeitsTischeProduct {
  const factory _ArbeitsTischeProduct(
      {final String? name,
      final Gestell? frameColors,
      final Platte? plateColor,
      final HoehenVerstellbarkeit? hoehenVerstellbarkeit,
      final GestellDimension? gestellDimension,
      final Hubbereich? hubbereich,
      final Hubgeschwindigkeit? hubgeschwindigkeit,
      final Gerauscheentwicklung? gerauscheentwicklung,
      final StandbyStromverbrauch? standbyStromverbrauch,
      final bool? kollisionsSchutz}) = _$_ArbeitsTischeProduct;

  @override
  String? get name;
  @override
  Gestell? get frameColors;
  @override
  Platte? get plateColor;
  @override
  HoehenVerstellbarkeit? get hoehenVerstellbarkeit;
  @override
  GestellDimension? get gestellDimension;
  @override
  Hubbereich? get hubbereich;
  @override
  Hubgeschwindigkeit? get hubgeschwindigkeit;
  @override
  Gerauscheentwicklung? get gerauscheentwicklung;
  @override
  StandbyStromverbrauch? get standbyStromverbrauch;
  @override
  bool? get kollisionsSchutz;
  @override
  @JsonKey(ignore: true)
  _$$_ArbeitsTischeProductCopyWith<_$_ArbeitsTischeProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StandbyStromverbrauch {
  double get betrag => throw _privateConstructorUsedError;
  String get masseinheit => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StandbyStromverbrauchCopyWith<StandbyStromverbrauch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandbyStromverbrauchCopyWith<$Res> {
  factory $StandbyStromverbrauchCopyWith(StandbyStromverbrauch value,
          $Res Function(StandbyStromverbrauch) then) =
      _$StandbyStromverbrauchCopyWithImpl<$Res, StandbyStromverbrauch>;
  @useResult
  $Res call({double betrag, String masseinheit, String? name});
}

/// @nodoc
class _$StandbyStromverbrauchCopyWithImpl<$Res,
        $Val extends StandbyStromverbrauch>
    implements $StandbyStromverbrauchCopyWith<$Res> {
  _$StandbyStromverbrauchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? betrag = null,
    Object? masseinheit = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      betrag: null == betrag
          ? _value.betrag
          : betrag // ignore: cast_nullable_to_non_nullable
              as double,
      masseinheit: null == masseinheit
          ? _value.masseinheit
          : masseinheit // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StandbyStromverbrauchCopyWith<$Res>
    implements $StandbyStromverbrauchCopyWith<$Res> {
  factory _$$_StandbyStromverbrauchCopyWith(_$_StandbyStromverbrauch value,
          $Res Function(_$_StandbyStromverbrauch) then) =
      __$$_StandbyStromverbrauchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double betrag, String masseinheit, String? name});
}

/// @nodoc
class __$$_StandbyStromverbrauchCopyWithImpl<$Res>
    extends _$StandbyStromverbrauchCopyWithImpl<$Res, _$_StandbyStromverbrauch>
    implements _$$_StandbyStromverbrauchCopyWith<$Res> {
  __$$_StandbyStromverbrauchCopyWithImpl(_$_StandbyStromverbrauch _value,
      $Res Function(_$_StandbyStromverbrauch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? betrag = null,
    Object? masseinheit = null,
    Object? name = freezed,
  }) {
    return _then(_$_StandbyStromverbrauch(
      betrag: null == betrag
          ? _value.betrag
          : betrag // ignore: cast_nullable_to_non_nullable
              as double,
      masseinheit: null == masseinheit
          ? _value.masseinheit
          : masseinheit // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_StandbyStromverbrauch implements _StandbyStromverbrauch {
  const _$_StandbyStromverbrauch(
      {required this.betrag, required this.masseinheit, this.name});

  @override
  final double betrag;
  @override
  final String masseinheit;
  @override
  final String? name;

  @override
  String toString() {
    return 'StandbyStromverbrauch(betrag: $betrag, masseinheit: $masseinheit, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StandbyStromverbrauch &&
            (identical(other.betrag, betrag) || other.betrag == betrag) &&
            (identical(other.masseinheit, masseinheit) ||
                other.masseinheit == masseinheit) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, betrag, masseinheit, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StandbyStromverbrauchCopyWith<_$_StandbyStromverbrauch> get copyWith =>
      __$$_StandbyStromverbrauchCopyWithImpl<_$_StandbyStromverbrauch>(
          this, _$identity);
}

abstract class _StandbyStromverbrauch implements StandbyStromverbrauch {
  const factory _StandbyStromverbrauch(
      {required final double betrag,
      required final String masseinheit,
      final String? name}) = _$_StandbyStromverbrauch;

  @override
  double get betrag;
  @override
  String get masseinheit;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_StandbyStromverbrauchCopyWith<_$_StandbyStromverbrauch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Gerauscheentwicklung {
  int get betrag => throw _privateConstructorUsedError;
  String get masseinheit => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GerauscheentwicklungCopyWith<Gerauscheentwicklung> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GerauscheentwicklungCopyWith<$Res> {
  factory $GerauscheentwicklungCopyWith(Gerauscheentwicklung value,
          $Res Function(Gerauscheentwicklung) then) =
      _$GerauscheentwicklungCopyWithImpl<$Res, Gerauscheentwicklung>;
  @useResult
  $Res call({int betrag, String masseinheit, String? name});
}

/// @nodoc
class _$GerauscheentwicklungCopyWithImpl<$Res,
        $Val extends Gerauscheentwicklung>
    implements $GerauscheentwicklungCopyWith<$Res> {
  _$GerauscheentwicklungCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? betrag = null,
    Object? masseinheit = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      betrag: null == betrag
          ? _value.betrag
          : betrag // ignore: cast_nullable_to_non_nullable
              as int,
      masseinheit: null == masseinheit
          ? _value.masseinheit
          : masseinheit // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GerauscheentwicklungCopyWith<$Res>
    implements $GerauscheentwicklungCopyWith<$Res> {
  factory _$$_GerauscheentwicklungCopyWith(_$_Gerauscheentwicklung value,
          $Res Function(_$_Gerauscheentwicklung) then) =
      __$$_GerauscheentwicklungCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int betrag, String masseinheit, String? name});
}

/// @nodoc
class __$$_GerauscheentwicklungCopyWithImpl<$Res>
    extends _$GerauscheentwicklungCopyWithImpl<$Res, _$_Gerauscheentwicklung>
    implements _$$_GerauscheentwicklungCopyWith<$Res> {
  __$$_GerauscheentwicklungCopyWithImpl(_$_Gerauscheentwicklung _value,
      $Res Function(_$_Gerauscheentwicklung) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? betrag = null,
    Object? masseinheit = null,
    Object? name = freezed,
  }) {
    return _then(_$_Gerauscheentwicklung(
      betrag: null == betrag
          ? _value.betrag
          : betrag // ignore: cast_nullable_to_non_nullable
              as int,
      masseinheit: null == masseinheit
          ? _value.masseinheit
          : masseinheit // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Gerauscheentwicklung implements _Gerauscheentwicklung {
  const _$_Gerauscheentwicklung(
      {required this.betrag, required this.masseinheit, this.name});

  @override
  final int betrag;
  @override
  final String masseinheit;
  @override
  final String? name;

  @override
  String toString() {
    return 'Gerauscheentwicklung(betrag: $betrag, masseinheit: $masseinheit, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Gerauscheentwicklung &&
            (identical(other.betrag, betrag) || other.betrag == betrag) &&
            (identical(other.masseinheit, masseinheit) ||
                other.masseinheit == masseinheit) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, betrag, masseinheit, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GerauscheentwicklungCopyWith<_$_Gerauscheentwicklung> get copyWith =>
      __$$_GerauscheentwicklungCopyWithImpl<_$_Gerauscheentwicklung>(
          this, _$identity);
}

abstract class _Gerauscheentwicklung implements Gerauscheentwicklung {
  const factory _Gerauscheentwicklung(
      {required final int betrag,
      required final String masseinheit,
      final String? name}) = _$_Gerauscheentwicklung;

  @override
  int get betrag;
  @override
  String get masseinheit;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_GerauscheentwicklungCopyWith<_$_Gerauscheentwicklung> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Hubgeschwindigkeit {
  int get betrag => throw _privateConstructorUsedError;
  String get masseinheit => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HubgeschwindigkeitCopyWith<Hubgeschwindigkeit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HubgeschwindigkeitCopyWith<$Res> {
  factory $HubgeschwindigkeitCopyWith(
          Hubgeschwindigkeit value, $Res Function(Hubgeschwindigkeit) then) =
      _$HubgeschwindigkeitCopyWithImpl<$Res, Hubgeschwindigkeit>;
  @useResult
  $Res call({int betrag, String masseinheit, String? name});
}

/// @nodoc
class _$HubgeschwindigkeitCopyWithImpl<$Res, $Val extends Hubgeschwindigkeit>
    implements $HubgeschwindigkeitCopyWith<$Res> {
  _$HubgeschwindigkeitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? betrag = null,
    Object? masseinheit = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      betrag: null == betrag
          ? _value.betrag
          : betrag // ignore: cast_nullable_to_non_nullable
              as int,
      masseinheit: null == masseinheit
          ? _value.masseinheit
          : masseinheit // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HubgeschwindigkeitCopyWith<$Res>
    implements $HubgeschwindigkeitCopyWith<$Res> {
  factory _$$_HubgeschwindigkeitCopyWith(_$_Hubgeschwindigkeit value,
          $Res Function(_$_Hubgeschwindigkeit) then) =
      __$$_HubgeschwindigkeitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int betrag, String masseinheit, String? name});
}

/// @nodoc
class __$$_HubgeschwindigkeitCopyWithImpl<$Res>
    extends _$HubgeschwindigkeitCopyWithImpl<$Res, _$_Hubgeschwindigkeit>
    implements _$$_HubgeschwindigkeitCopyWith<$Res> {
  __$$_HubgeschwindigkeitCopyWithImpl(
      _$_Hubgeschwindigkeit _value, $Res Function(_$_Hubgeschwindigkeit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? betrag = null,
    Object? masseinheit = null,
    Object? name = freezed,
  }) {
    return _then(_$_Hubgeschwindigkeit(
      betrag: null == betrag
          ? _value.betrag
          : betrag // ignore: cast_nullable_to_non_nullable
              as int,
      masseinheit: null == masseinheit
          ? _value.masseinheit
          : masseinheit // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Hubgeschwindigkeit implements _Hubgeschwindigkeit {
  const _$_Hubgeschwindigkeit(
      {required this.betrag, required this.masseinheit, this.name});

  @override
  final int betrag;
  @override
  final String masseinheit;
  @override
  final String? name;

  @override
  String toString() {
    return 'Hubgeschwindigkeit(betrag: $betrag, masseinheit: $masseinheit, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hubgeschwindigkeit &&
            (identical(other.betrag, betrag) || other.betrag == betrag) &&
            (identical(other.masseinheit, masseinheit) ||
                other.masseinheit == masseinheit) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, betrag, masseinheit, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HubgeschwindigkeitCopyWith<_$_Hubgeschwindigkeit> get copyWith =>
      __$$_HubgeschwindigkeitCopyWithImpl<_$_Hubgeschwindigkeit>(
          this, _$identity);
}

abstract class _Hubgeschwindigkeit implements Hubgeschwindigkeit {
  const factory _Hubgeschwindigkeit(
      {required final int betrag,
      required final String masseinheit,
      final String? name}) = _$_Hubgeschwindigkeit;

  @override
  int get betrag;
  @override
  String get masseinheit;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_HubgeschwindigkeitCopyWith<_$_Hubgeschwindigkeit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Hubbereich {
  int get breite => throw _privateConstructorUsedError;
  int get tiefe => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HubbereichCopyWith<Hubbereich> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HubbereichCopyWith<$Res> {
  factory $HubbereichCopyWith(
          Hubbereich value, $Res Function(Hubbereich) then) =
      _$HubbereichCopyWithImpl<$Res, Hubbereich>;
  @useResult
  $Res call({int breite, int tiefe, String? name});
}

/// @nodoc
class _$HubbereichCopyWithImpl<$Res, $Val extends Hubbereich>
    implements $HubbereichCopyWith<$Res> {
  _$HubbereichCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breite = null,
    Object? tiefe = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      breite: null == breite
          ? _value.breite
          : breite // ignore: cast_nullable_to_non_nullable
              as int,
      tiefe: null == tiefe
          ? _value.tiefe
          : tiefe // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HubbereichCopyWith<$Res>
    implements $HubbereichCopyWith<$Res> {
  factory _$$_HubbereichCopyWith(
          _$_Hubbereich value, $Res Function(_$_Hubbereich) then) =
      __$$_HubbereichCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int breite, int tiefe, String? name});
}

/// @nodoc
class __$$_HubbereichCopyWithImpl<$Res>
    extends _$HubbereichCopyWithImpl<$Res, _$_Hubbereich>
    implements _$$_HubbereichCopyWith<$Res> {
  __$$_HubbereichCopyWithImpl(
      _$_Hubbereich _value, $Res Function(_$_Hubbereich) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breite = null,
    Object? tiefe = null,
    Object? name = freezed,
  }) {
    return _then(_$_Hubbereich(
      breite: null == breite
          ? _value.breite
          : breite // ignore: cast_nullable_to_non_nullable
              as int,
      tiefe: null == tiefe
          ? _value.tiefe
          : tiefe // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Hubbereich implements _Hubbereich {
  const _$_Hubbereich({required this.breite, required this.tiefe, this.name});

  @override
  final int breite;
  @override
  final int tiefe;
  @override
  final String? name;

  @override
  String toString() {
    return 'Hubbereich(breite: $breite, tiefe: $tiefe, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hubbereich &&
            (identical(other.breite, breite) || other.breite == breite) &&
            (identical(other.tiefe, tiefe) || other.tiefe == tiefe) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, breite, tiefe, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HubbereichCopyWith<_$_Hubbereich> get copyWith =>
      __$$_HubbereichCopyWithImpl<_$_Hubbereich>(this, _$identity);
}

abstract class _Hubbereich implements Hubbereich {
  const factory _Hubbereich(
      {required final int breite,
      required final int tiefe,
      final String? name}) = _$_Hubbereich;

  @override
  int get breite;
  @override
  int get tiefe;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_HubbereichCopyWith<_$_Hubbereich> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GestellDimension {
  int get breite => throw _privateConstructorUsedError;
  int get laenge => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GestellDimensionCopyWith<GestellDimension> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GestellDimensionCopyWith<$Res> {
  factory $GestellDimensionCopyWith(
          GestellDimension value, $Res Function(GestellDimension) then) =
      _$GestellDimensionCopyWithImpl<$Res, GestellDimension>;
  @useResult
  $Res call({int breite, int laenge, String? name});
}

/// @nodoc
class _$GestellDimensionCopyWithImpl<$Res, $Val extends GestellDimension>
    implements $GestellDimensionCopyWith<$Res> {
  _$GestellDimensionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breite = null,
    Object? laenge = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      breite: null == breite
          ? _value.breite
          : breite // ignore: cast_nullable_to_non_nullable
              as int,
      laenge: null == laenge
          ? _value.laenge
          : laenge // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GestellDimensionCopyWith<$Res>
    implements $GestellDimensionCopyWith<$Res> {
  factory _$$_GestellDimensionCopyWith(
          _$_GestellDimension value, $Res Function(_$_GestellDimension) then) =
      __$$_GestellDimensionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int breite, int laenge, String? name});
}

/// @nodoc
class __$$_GestellDimensionCopyWithImpl<$Res>
    extends _$GestellDimensionCopyWithImpl<$Res, _$_GestellDimension>
    implements _$$_GestellDimensionCopyWith<$Res> {
  __$$_GestellDimensionCopyWithImpl(
      _$_GestellDimension _value, $Res Function(_$_GestellDimension) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breite = null,
    Object? laenge = null,
    Object? name = freezed,
  }) {
    return _then(_$_GestellDimension(
      breite: null == breite
          ? _value.breite
          : breite // ignore: cast_nullable_to_non_nullable
              as int,
      laenge: null == laenge
          ? _value.laenge
          : laenge // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GestellDimension implements _GestellDimension {
  const _$_GestellDimension(
      {required this.breite, required this.laenge, this.name});

  @override
  final int breite;
  @override
  final int laenge;
  @override
  final String? name;

  @override
  String toString() {
    return 'GestellDimension(breite: $breite, laenge: $laenge, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GestellDimension &&
            (identical(other.breite, breite) || other.breite == breite) &&
            (identical(other.laenge, laenge) || other.laenge == laenge) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, breite, laenge, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GestellDimensionCopyWith<_$_GestellDimension> get copyWith =>
      __$$_GestellDimensionCopyWithImpl<_$_GestellDimension>(this, _$identity);
}

abstract class _GestellDimension implements GestellDimension {
  const factory _GestellDimension(
      {required final int breite,
      required final int laenge,
      final String? name}) = _$_GestellDimension;

  @override
  int get breite;
  @override
  int get laenge;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_GestellDimensionCopyWith<_$_GestellDimension> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HoehenVerstellbarkeit {
  int get von => throw _privateConstructorUsedError;
  int get bis => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HoehenVerstellbarkeitCopyWith<HoehenVerstellbarkeit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoehenVerstellbarkeitCopyWith<$Res> {
  factory $HoehenVerstellbarkeitCopyWith(HoehenVerstellbarkeit value,
          $Res Function(HoehenVerstellbarkeit) then) =
      _$HoehenVerstellbarkeitCopyWithImpl<$Res, HoehenVerstellbarkeit>;
  @useResult
  $Res call({int von, int bis, String? name});
}

/// @nodoc
class _$HoehenVerstellbarkeitCopyWithImpl<$Res,
        $Val extends HoehenVerstellbarkeit>
    implements $HoehenVerstellbarkeitCopyWith<$Res> {
  _$HoehenVerstellbarkeitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? von = null,
    Object? bis = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      von: null == von
          ? _value.von
          : von // ignore: cast_nullable_to_non_nullable
              as int,
      bis: null == bis
          ? _value.bis
          : bis // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HoehenVerstellabrkeitCopyWith<$Res>
    implements $HoehenVerstellbarkeitCopyWith<$Res> {
  factory _$$_HoehenVerstellabrkeitCopyWith(_$_HoehenVerstellabrkeit value,
          $Res Function(_$_HoehenVerstellabrkeit) then) =
      __$$_HoehenVerstellabrkeitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int von, int bis, String? name});
}

/// @nodoc
class __$$_HoehenVerstellabrkeitCopyWithImpl<$Res>
    extends _$HoehenVerstellbarkeitCopyWithImpl<$Res, _$_HoehenVerstellabrkeit>
    implements _$$_HoehenVerstellabrkeitCopyWith<$Res> {
  __$$_HoehenVerstellabrkeitCopyWithImpl(_$_HoehenVerstellabrkeit _value,
      $Res Function(_$_HoehenVerstellabrkeit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? von = null,
    Object? bis = null,
    Object? name = freezed,
  }) {
    return _then(_$_HoehenVerstellabrkeit(
      von: null == von
          ? _value.von
          : von // ignore: cast_nullable_to_non_nullable
              as int,
      bis: null == bis
          ? _value.bis
          : bis // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HoehenVerstellabrkeit implements _HoehenVerstellabrkeit {
  const _$_HoehenVerstellabrkeit(
      {required this.von, required this.bis, this.name});

  @override
  final int von;
  @override
  final int bis;
  @override
  final String? name;

  @override
  String toString() {
    return 'HoehenVerstellbarkeit(von: $von, bis: $bis, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HoehenVerstellabrkeit &&
            (identical(other.von, von) || other.von == von) &&
            (identical(other.bis, bis) || other.bis == bis) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, von, bis, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HoehenVerstellabrkeitCopyWith<_$_HoehenVerstellabrkeit> get copyWith =>
      __$$_HoehenVerstellabrkeitCopyWithImpl<_$_HoehenVerstellabrkeit>(
          this, _$identity);
}

abstract class _HoehenVerstellabrkeit implements HoehenVerstellbarkeit {
  const factory _HoehenVerstellabrkeit(
      {required final int von,
      required final int bis,
      final String? name}) = _$_HoehenVerstellabrkeit;

  @override
  int get von;
  @override
  int get bis;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_HoehenVerstellabrkeitCopyWith<_$_HoehenVerstellabrkeit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Gestell {
  Color get color => throw _privateConstructorUsedError;
  String get material => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GestellCopyWith<Gestell> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GestellCopyWith<$Res> {
  factory $GestellCopyWith(Gestell value, $Res Function(Gestell) then) =
      _$GestellCopyWithImpl<$Res, Gestell>;
  @useResult
  $Res call({Color color, String material, String? name});
}

/// @nodoc
class _$GestellCopyWithImpl<$Res, $Val extends Gestell>
    implements $GestellCopyWith<$Res> {
  _$GestellCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? material = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      material: null == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GestellCopyWith<$Res> implements $GestellCopyWith<$Res> {
  factory _$$_GestellCopyWith(
          _$_Gestell value, $Res Function(_$_Gestell) then) =
      __$$_GestellCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color color, String material, String? name});
}

/// @nodoc
class __$$_GestellCopyWithImpl<$Res>
    extends _$GestellCopyWithImpl<$Res, _$_Gestell>
    implements _$$_GestellCopyWith<$Res> {
  __$$_GestellCopyWithImpl(_$_Gestell _value, $Res Function(_$_Gestell) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? material = null,
    Object? name = freezed,
  }) {
    return _then(_$_Gestell(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      material: null == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Gestell implements _Gestell {
  const _$_Gestell({required this.color, required this.material, this.name});

  @override
  final Color color;
  @override
  final String material;
  @override
  final String? name;

  @override
  String toString() {
    return 'Gestell(color: $color, material: $material, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Gestell &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.material, material) ||
                other.material == material) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color, material, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GestellCopyWith<_$_Gestell> get copyWith =>
      __$$_GestellCopyWithImpl<_$_Gestell>(this, _$identity);
}

abstract class _Gestell implements Gestell {
  const factory _Gestell(
      {required final Color color,
      required final String material,
      final String? name}) = _$_Gestell;

  @override
  Color get color;
  @override
  String get material;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_GestellCopyWith<_$_Gestell> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Platte {
  Color get color => throw _privateConstructorUsedError;
  int get breite => throw _privateConstructorUsedError;
  int get tiefe => throw _privateConstructorUsedError;
  Beschichtung get beschichtung => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlatteCopyWith<Platte> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatteCopyWith<$Res> {
  factory $PlatteCopyWith(Platte value, $Res Function(Platte) then) =
      _$PlatteCopyWithImpl<$Res, Platte>;
  @useResult
  $Res call(
      {Color color,
      int breite,
      int tiefe,
      Beschichtung beschichtung,
      String? name});

  $BeschichtungCopyWith<$Res> get beschichtung;
}

/// @nodoc
class _$PlatteCopyWithImpl<$Res, $Val extends Platte>
    implements $PlatteCopyWith<$Res> {
  _$PlatteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? breite = null,
    Object? tiefe = null,
    Object? beschichtung = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      breite: null == breite
          ? _value.breite
          : breite // ignore: cast_nullable_to_non_nullable
              as int,
      tiefe: null == tiefe
          ? _value.tiefe
          : tiefe // ignore: cast_nullable_to_non_nullable
              as int,
      beschichtung: null == beschichtung
          ? _value.beschichtung
          : beschichtung // ignore: cast_nullable_to_non_nullable
              as Beschichtung,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BeschichtungCopyWith<$Res> get beschichtung {
    return $BeschichtungCopyWith<$Res>(_value.beschichtung, (value) {
      return _then(_value.copyWith(beschichtung: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlatteCopyWith<$Res> implements $PlatteCopyWith<$Res> {
  factory _$$_PlatteCopyWith(_$_Platte value, $Res Function(_$_Platte) then) =
      __$$_PlatteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Color color,
      int breite,
      int tiefe,
      Beschichtung beschichtung,
      String? name});

  @override
  $BeschichtungCopyWith<$Res> get beschichtung;
}

/// @nodoc
class __$$_PlatteCopyWithImpl<$Res>
    extends _$PlatteCopyWithImpl<$Res, _$_Platte>
    implements _$$_PlatteCopyWith<$Res> {
  __$$_PlatteCopyWithImpl(_$_Platte _value, $Res Function(_$_Platte) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? breite = null,
    Object? tiefe = null,
    Object? beschichtung = null,
    Object? name = freezed,
  }) {
    return _then(_$_Platte(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      breite: null == breite
          ? _value.breite
          : breite // ignore: cast_nullable_to_non_nullable
              as int,
      tiefe: null == tiefe
          ? _value.tiefe
          : tiefe // ignore: cast_nullable_to_non_nullable
              as int,
      beschichtung: null == beschichtung
          ? _value.beschichtung
          : beschichtung // ignore: cast_nullable_to_non_nullable
              as Beschichtung,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Platte implements _Platte {
  const _$_Platte(
      {required this.color,
      required this.breite,
      required this.tiefe,
      required this.beschichtung,
      this.name});

  @override
  final Color color;
  @override
  final int breite;
  @override
  final int tiefe;
  @override
  final Beschichtung beschichtung;
  @override
  final String? name;

  @override
  String toString() {
    return 'Platte(color: $color, breite: $breite, tiefe: $tiefe, beschichtung: $beschichtung, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Platte &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.breite, breite) || other.breite == breite) &&
            (identical(other.tiefe, tiefe) || other.tiefe == tiefe) &&
            (identical(other.beschichtung, beschichtung) ||
                other.beschichtung == beschichtung) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, color, breite, tiefe, beschichtung, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlatteCopyWith<_$_Platte> get copyWith =>
      __$$_PlatteCopyWithImpl<_$_Platte>(this, _$identity);
}

abstract class _Platte implements Platte {
  const factory _Platte(
      {required final Color color,
      required final int breite,
      required final int tiefe,
      required final Beschichtung beschichtung,
      final String? name}) = _$_Platte;

  @override
  Color get color;
  @override
  int get breite;
  @override
  int get tiefe;
  @override
  Beschichtung get beschichtung;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_PlatteCopyWith<_$_Platte> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Beschichtung {
  int get hoehe => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BeschichtungCopyWith<Beschichtung> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeschichtungCopyWith<$Res> {
  factory $BeschichtungCopyWith(
          Beschichtung value, $Res Function(Beschichtung) then) =
      _$BeschichtungCopyWithImpl<$Res, Beschichtung>;
  @useResult
  $Res call({int hoehe, String? name});
}

/// @nodoc
class _$BeschichtungCopyWithImpl<$Res, $Val extends Beschichtung>
    implements $BeschichtungCopyWith<$Res> {
  _$BeschichtungCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hoehe = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      hoehe: null == hoehe
          ? _value.hoehe
          : hoehe // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BeschichtungCopyWith<$Res>
    implements $BeschichtungCopyWith<$Res> {
  factory _$$_BeschichtungCopyWith(
          _$_Beschichtung value, $Res Function(_$_Beschichtung) then) =
      __$$_BeschichtungCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hoehe, String? name});
}

/// @nodoc
class __$$_BeschichtungCopyWithImpl<$Res>
    extends _$BeschichtungCopyWithImpl<$Res, _$_Beschichtung>
    implements _$$_BeschichtungCopyWith<$Res> {
  __$$_BeschichtungCopyWithImpl(
      _$_Beschichtung _value, $Res Function(_$_Beschichtung) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hoehe = null,
    Object? name = freezed,
  }) {
    return _then(_$_Beschichtung(
      hoehe: null == hoehe
          ? _value.hoehe
          : hoehe // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Beschichtung implements _Beschichtung {
  const _$_Beschichtung({required this.hoehe, this.name});

  @override
  final int hoehe;
  @override
  final String? name;

  @override
  String toString() {
    return 'Beschichtung(hoehe: $hoehe, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Beschichtung &&
            (identical(other.hoehe, hoehe) || other.hoehe == hoehe) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hoehe, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeschichtungCopyWith<_$_Beschichtung> get copyWith =>
      __$$_BeschichtungCopyWithImpl<_$_Beschichtung>(this, _$identity);
}

abstract class _Beschichtung implements Beschichtung {
  const factory _Beschichtung({required final int hoehe, final String? name}) =
      _$_Beschichtung;

  @override
  int get hoehe;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_BeschichtungCopyWith<_$_Beschichtung> get copyWith =>
      throw _privateConstructorUsedError;
}
