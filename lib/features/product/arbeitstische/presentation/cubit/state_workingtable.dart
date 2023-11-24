import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_workingtable.freezed.dart';

enum TableChangeableCharacteristics {
  name,
  breiteXTiefe,
  frameColors,
  plateColor,
  hoehenVerstellbarkeit,
  gestellDimension,
  hubbereich,
  hubgeschwindigkeit,
  gerauscheentwicklung,
  standbyStromverbrauch,
  kollisionsSchutz,
  picturePath,
}

@freezed
class ArbeitsTischeProduct with _$ArbeitsTischeProduct {
  const factory ArbeitsTischeProduct({
    String? name,
    List<BreiteXTiefe>? breiteXTiefe,
    List<Gestell>? frameColors,
    Platte? plateColor,
    HoehenVerstellbarkeit? hoehenVerstellbarkeit,
    GestellDimension? gestellDimension,
    Hubbereich? hubbereich,
    Hubgeschwindigkeit? hubgeschwindigkeit,
    Gerauscheentwicklung? gerauscheentwicklung,
    StandbyStromverbrauch? standbyStromverbrauch,
    bool? kollisionsSchutz,
    String? picturePath,
  }) = _ArbeitsTischeProduct;
}

@freezed
class BreiteXTiefe with _$BreiteXTiefe {
  const factory BreiteXTiefe({
    required String breite,
    required String tiefe,
  }) = _BreiteXTiefe;
}

@freezed
class StandbyStromverbrauch with _$StandbyStromverbrauch {
  const factory StandbyStromverbrauch({
    required double betrag,
    required String masseinheit,
    String? name,
  }) = _StandbyStromverbrauch;
}

@freezed
class Gerauscheentwicklung with _$Gerauscheentwicklung {
  const factory Gerauscheentwicklung({
    required int betrag,
    required String masseinheit,
    String? name,
  }) = _Gerauscheentwicklung;
}

@freezed
class Hubgeschwindigkeit with _$Hubgeschwindigkeit {
  const factory Hubgeschwindigkeit({
    required int betrag,
    required String masseinheit,
    String? name,
  }) = _Hubgeschwindigkeit;
}

@freezed
class Hubbereich with _$Hubbereich {
  const factory Hubbereich({
    required int breite,
    required int tiefe,
    String? name,
  }) = _Hubbereich;
}

@freezed
class GestellDimension with _$GestellDimension {
  const factory GestellDimension({
    required int breite,
    required int laenge,
    String? name,
  }) = _GestellDimension;
}

@freezed
class HoehenVerstellbarkeit with _$HoehenVerstellbarkeit {
  const factory HoehenVerstellbarkeit(
      {required int von,
      required int bis,
      String? name}) = _HoehenVerstellabrkeit;
}

@freezed
class Gestell with _$Gestell {
  const factory Gestell({
    required Color color,
    required String material,
    required String pictuePath,
    String? name,
  }) = _Gestell;
}

@freezed
class Platte with _$Platte {
  const factory Platte({
    required Color color,
    required int breite,
    required int tiefe,
    required Beschichtung beschichtung,
    String? name,
  }) = _Platte;
}

@freezed
class Beschichtung with _$Beschichtung {
  const factory Beschichtung({
    required int hoehe,
    String? name,
  }) = _Beschichtung;
}
