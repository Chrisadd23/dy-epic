import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_product.freezed.dart';

@freezed
class StateProduct with _$StateProduct {
  const factory StateProduct({
    @Default('') String hashKey,
    @Default('') String category,
    @Default(0) int productOrderCount,
    Product? product,
  }) = _StateProduct;
}

@freezed
class Product with _$Product {
  const factory Product({
    required String name,
    required Gestell frameColors,
    required Platte plateColor,
    required HoehenVerstellbarkeit hoehenVerstellbarkeit,
    required GestellDimension gestellDimension,
    required Hubbereich hubbereich,
    required Hubgeschwindigkeit hubgeschwindigkeit,
    required Gerauscheentwicklung gerauscheentwicklung,
    required StandbyStromverbrauch standbyStromverbrauch,
    required bool kollisionsSchutz,
  }) = _Product;
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
