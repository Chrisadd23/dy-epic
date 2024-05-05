import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/home/data/model/home_category_model.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';

class ListValues {
  static final drawerList = {
    'Produkte': 'home',
    'Bestellungen': 'bestellungen',
    'Einstellungen': 'notificationEinstellungen',
    'Rechtliches': 'rechtliches'
  };
}

class ProductPictures {
  static final Map<String, Map<String, String>> arbeitstischeMap = {
    'slavonischeEiche': <String, String>{
      'schwarz': Assets.products.arbeitstische.slavonischeEicheSchwarz.path,
    }
  };
}

List<HomeCategoryModel> chooseCategory = [
  HomeCategoryModel(
      title: 'Arbeitstische',
      imgPath: Assets.appComponents.jpg.arbeitstisch.path,
      navigation: AppGoRouter.arbeitstische.name,
      indexPositon: 0),
  HomeCategoryModel(
      title: 'Bürostühle',
      navigation: AppGoRouter.buerostuehle.name,
      imgPath: Assets.appComponents.jpg.buerodrehstuehle.path,
      indexPositon: 1),
  HomeCategoryModel(
      title: 'Konferenzstühle',
      imgPath: Assets.appComponents.jpg.konferenzstuehle.path,
      navigation: 'konferenzstuehle',
      indexPositon: 2),
  HomeCategoryModel(
      title: 'Konferenztische',
      imgPath: Assets.appComponents.jpg.konferenztische.path,
      navigation: 'konferenztische',
      indexPositon: 3),
];
