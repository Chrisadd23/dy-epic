import 'package:flutter/material.dart';

enum EnumCategoryWorkingTable {
  slavonischeEiche(type: 'Slavonische Eiche'),
  ahorn(type: 'Ahorn'),
  buche(type: 'Buche'),
  lSchwarz(type: 'Lichtgrau'),
  wSchwarz(type: 'Weiß');

  const EnumCategoryWorkingTable({required this.type});

  final String type;
}

enum EnumCategoryProduct {
  workingTable(type: 1),
  officeChairNormal(type: 2),
  officeChairHochlehner(type: 3),
  conferenceChair(type: 4);

  const EnumCategoryProduct({required this.type});

  final int type;

  static EnumCategoryProduct category({required int type}) =>
      values.where((element) => element.type == type).first;
}

enum EnumSelectOfficeChairCategory {
  normal,
  hochlehner,
}

enum EnumOrderProcess {
  created(
    sortIndex: 0,
    information: 'wurde erstellt',
  ),
  inWork(
      sortIndex: 1,
      information: 'wird bearbeitet',
      processColor: Colors.blue,
      icon: Icons.update),
  finished(
    sortIndex: 2,
    information: 'abgeschlossen',
    processColor: Colors.green,
    icon: Icons.done,
  ),
  canceledByAdmin(
      sortIndex: 3,
      information: 'stoniert',
      processColor: Colors.red,
      icon: Icons.cancel_outlined),
  canceledByCustomer(
      sortIndex: 4,
      information: 'stoniert',
      processColor: Colors.red,
      icon: Icons.cancel_outlined);

  const EnumOrderProcess(
      {required this.sortIndex,
      required this.information,
      this.processColor,
      this.icon});

  final int sortIndex;
  final String information;
  final Color? processColor;
  final IconData? icon;
}

enum EnumOrderType {
  bestellung(type: 1, text: 'Bestellung'),
  anfrage(type: 2, text: 'Anfrage');

  const EnumOrderType({required this.type, required this.text});

  final int type;
  final String text;
}

enum EnumSortProductOrder {
  sortDate(type: 'Datum'),
  sortPrice(type: 'Preis'),
  sortInWork(type: 'In Arbeit'),
  sortFinished(type: 'Abgeschlossen'),
  sortCanceled(type: 'Stoniert'),
  search(type: ''),
  none(type: '');

  const EnumSortProductOrder({required this.type});

  final String type;
}
