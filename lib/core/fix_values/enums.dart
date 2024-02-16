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

enum EnumOrderType { bestellung, anfrage }

enum EnumSortProductOrder {
  sortDate(type: 'Datum'),
  sortPrice(type: 'Preis'),
  sortConditions(type: 'Zustand');

  const EnumSortProductOrder({required this.type});

  final String type;
}
