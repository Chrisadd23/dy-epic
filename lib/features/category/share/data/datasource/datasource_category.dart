import 'package:app_flutter_produkt_bestellen/features/category/share/data/model/model_category_abstract.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/entity_category.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceCategory<T> {
  DataSourceCategory();

  EntityCategory createCategoryEntity(
      ModelCategoryAbstract modelCategoryAbstract) {
    return EntityCategory(
        categoryName: 'categoryName',
        productCategory:
            ProductCategory(categoryName: 'categoryName', listProduct: []));
  }

  Future<Either<void, EntityCategory>> loadData() async {
    //Platzhalter und test
    //langsam antasten
    return Right(createCategoryEntity(ModelCategoryAbstract()));
  }
}
