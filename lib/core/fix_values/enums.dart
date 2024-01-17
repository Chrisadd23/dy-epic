enum EnumCategoryWorkingTable {
  slavonischeEiche(type: 'Slavonische Eiche'),
  ahorn(type: 'Ahorn'),
  buche(type: 'Buche'),
  lSchwarz(type: 'Lichtgrau'),
  wSchwarz(type: 'Weiß');

  const EnumCategoryWorkingTable({required this.type});

  final String type;
}

enum EnumSelectOfficeChairCategory {
  normal,
  hochlehner,
}

enum EnumOrderType { bestellen, anfragen }

enum EnumShoppingBasketOrder {
  dateDesc,
  dateAsc,
  priceDesc,
  priceAsc,
  bestellen,
  anfragen,
  category
}
