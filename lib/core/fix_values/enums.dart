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
  conferenceChair
}

enum EnumSelectOfficeChairCategory {
  normal,
  hochlehner,
}

enum EnumOrderProcess {
  inWork(sortIndex: 0, information: 'wird bearbeitet'),
  finished(sortIndex: 1, information: 'abgeschlossen'),
  canceledByAdmin(sortIndex: 2, information: 'stoniert'),
  canceledByCustomer(sortIndex: 3, information: 'stoniert');

  const EnumOrderProcess({required this.sortIndex, required this.information});

  final int sortIndex;
  final String information;
}

enum EnumOrderType { bestellung, anfrage }

enum EnumSortProductOrder {
  sortDate(type: 'Datum'),
  sortPrice(type: 'Preis'),
  sortInWork(type: 'In Arbeit'),
  sortFinished(type: 'Abgeschlossen'),
  sortCanceled(type: 'Stoniert');

  const EnumSortProductOrder({required this.type});

  final String type;
}
