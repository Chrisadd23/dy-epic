


import '../../../../gen/assets.gen.dart';
import '../../domain/repository/repository_category.dart';
import '../../presentation/widget/category_widget.dart';
import '../model/model_category.dart';

class RepositoryCategoryImplementation implements RepositoryCategory
{
  @override
  List<CategoryWidget> getCategory() {
    // TODO: implement getCategory
    return CHOOSE_CATEGORRY.map((category) => CategoryWidget(img: category.imgPath, title: category.title)).toList();
  }
  
  List<ModelCategory> CHOOSE_CATEGORRY = 
      [

    ModelCategory(title: 'Arbeitstische', imgPath: Assets.appComponents.jpg.arbeitstisch.path, indexPositon: 0),
    ModelCategory(title: 'Bürostühle', imgPath: Assets.appComponents.jpg.buerodrehstuehle.path, indexPositon: 1),
    ModelCategory(title: 'Konferenzstühle', imgPath: Assets.appComponents.jpg.konferenzstuehle.path, indexPositon: 2),
        ModelCategory(title: 'Konferenztische', imgPath: Assets.appComponents.jpg.konferenzstuehle.path, indexPositon: 2),
  ];
      

}