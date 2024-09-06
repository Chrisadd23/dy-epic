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
  workingTable,
  officeChairNormal,
  officeChairHochlehner,
  conferenceChair;

  static EnumCategoryProduct category({required int typeIndex}) =>
      values.where((element) => element.index == typeIndex).first;
}

enum EnumSelectOfficeChairCategory {
  categoryOfficeChairNormal,
  categoryOfficeChairHochlehner,
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

enum AppDrawerCategoriesEnum {
  products(title: 'Produkte', name: 'home', isLoginRequired: false),
  orders(title: 'Bestellungen', name: 'order', isLoginRequired: true),
  requests(title: 'Anfragen', name: 'request', isLoginRequired: true),
  notificationSettings(
      title: 'Einstellungen',
      name: 'notificationSettings',
      isLoginRequired: true),
  legalities(title: 'Rechtliches', name: 'legalities', isLoginRequired: false);

  const AppDrawerCategoriesEnum(
      {required this.title, required this.name, required this.isLoginRequired});

  final String title;
  final String name;
  final bool isLoginRequired;
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
