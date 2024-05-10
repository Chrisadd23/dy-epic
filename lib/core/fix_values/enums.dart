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
  created(sortIndex: 0, information: 'wurde erstellt'),
  inWork(sortIndex: 1, information: 'wird bearbeitet'),
  finished(sortIndex: 2, information: 'abgeschlossen'),
  canceledByAdmin(sortIndex: 3, information: 'stoniert'),
  canceledByCustomer(sortIndex: 4, information: 'stoniert');

  const EnumOrderProcess({required this.sortIndex, required this.information});

  final int sortIndex;
  final String information;
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
  sortCanceled(type: 'Stoniert');

  const EnumSortProductOrder({required this.type});

  final String type;
}
