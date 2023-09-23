import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/home/data/model/model_category.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';

class ListValues {
  static final drawerList = [
    'Produkte',
    'Bestellungen',
    'Anfragen',
    'Einstellungen',
    'Rechtliches'
  ];
}

class ProductPictures {
  static final Map<String, Map<String, String>> arbeitstischeMap = {
    'slavonischeEiche': <String, String>{
      'schwarz': Assets.products.arbeitstische.slavonischeEicheSchwarz.path,
    }
  };
}

List<ModelCategory> chooseCategorry = [
  ModelCategory(
      title: 'Arbeitstische',
      imgPath: Assets.appComponents.jpg.arbeitstisch.path,
      navigation: AppGoRouter.arbeitstische.name,
      indexPositon: 0),
  ModelCategory(
      title: 'Bürostühle',
      navigation: AppGoRouter.buerostuehle.name,
      imgPath: Assets.appComponents.jpg.buerodrehstuehle.path,
      indexPositon: 1),
  ModelCategory(
      title: 'Konferenzstühle',
      imgPath: Assets.appComponents.jpg.konferenzstuehle.path,
      navigation: 'konferenzstuehle',
      indexPositon: 2),
  ModelCategory(
      title: 'Konferenztische',
      imgPath: Assets.appComponents.jpg.konferenztische.path,
      navigation: 'konferenztische',
      indexPositon: 3),
];
