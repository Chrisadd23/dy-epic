enum EnumCategoryWorkingTable {
  slavonischeEiche(type: 'Slavonische Eiche'),
  ahorn(type: 'Ahorn'),
  buche(type: 'Buche'),
  lSchwarz(type: 'lSchwarz'),
  wSchwarz(type: 'wSchwarz');

  const EnumCategoryWorkingTable({required this.type});

  final String type;
}
