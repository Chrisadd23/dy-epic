import 'package:app_flutter_produkt_bestellen/features/home/data/model/model_category.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';

class ListValues {
  static final DRAWER_LIST = [
    'Produkte',
    'Bestellungen',
    'Anfragen',
    'Einstellungen',
    'Rechtliches'
  ];
}

List<ModelCategory> CHOOSE_CATEGORRY = [
  ModelCategory(
      title: 'Arbeitstische',
      imgPath: Assets.appComponents.jpg.arbeitstisch.path,
      indexPositon: 0),
  ModelCategory(
      title: 'Bürostühle',
      imgPath: Assets.appComponents.jpg.buerodrehstuehle.path,
      indexPositon: 1),
  ModelCategory(
      title: 'Konferenzstühle',
      imgPath: Assets.appComponents.jpg.konferenzstuehle.path,
      indexPositon: 2),
  ModelCategory(
      title: 'Konferenztische',
      imgPath: Assets.appComponents.jpg.konferenztische.path,
      indexPositon: 3),
];
