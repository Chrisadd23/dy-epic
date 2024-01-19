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

enum EnumShoppingBasketOrder {
  sortNormal,
  sortDateDesc,
  sortDateAsc,
  sortPriceDesc,
  sortPriceAsc,
  sortBestellen,
  sortAnfragen,
  sortCategory
}
