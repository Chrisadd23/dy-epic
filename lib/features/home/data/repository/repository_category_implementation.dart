import 'package:app_flutter_produkt_bestellen/features/category/share/data/datasource/datasource_category.dart';
import 'package:app_flutter_produkt_bestellen/features/home/data/model/model_category.dart';
import 'package:app_flutter_produkt_bestellen/features/home/domain/repository/repository_category.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/widget/category_widget.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';

class RepositoryCategoryImplementation implements RepositoryCategory {
  @override
  List<CategoryWidget> getCategory() {
    // TODO: implement getCategory
    return chooseCategory
        .map((category) =>
            CategoryWidget(img: category.imgPath, title: category.title))
        .toList();
  }

  List<ModelCategory> chooseCategory = [
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

  @override
  // TODO: implement dataSourceCategory
  DataSourceCategory get dataSourceCategory => throw UnimplementedError();

  @override
  load() {
    // TODO: implement load
    throw UnimplementedError();
  }
}
