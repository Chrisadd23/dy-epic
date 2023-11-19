enum EnumCategoryWorkingTable {
  slavonischeEiche(type: 'Slavonische Eiche'),
  ahorn(type: 'Ahorn'),
  buche(type: 'Buche'),
  lSchwarz(type: 'Lichtgrau'),
  wSchwarz(type: 'Weiß');

  const EnumCategoryWorkingTable({required this.type});

  final String type;
}
