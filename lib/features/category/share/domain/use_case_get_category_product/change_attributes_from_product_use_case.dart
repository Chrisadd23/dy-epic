import 'package:app_flutter_produkt_bestellen/features/category/share/data/model/category_product_model.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/repository/category_product_repository.dart';

class UseCaseChangeAttributesFromProduct {
  UseCaseChangeAttributesFromProduct(this._categoryProductRepository);

  final CategoryProductRepository _categoryProductRepository;

  List<CategoryEntity> call({required CategoryProductModel categoryModel}) =>
      _categoryProductRepository.replaceCategoryProduct(
          categoryModel: categoryModel);
}
