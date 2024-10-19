import 'package:app_flutter_produkt_bestellen/features/category/share/data/model/category_product_model.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/repository/category_product_repository.dart';

class UseCaseAddProduct {
  const UseCaseAddProduct(this._categoryProductRepository);

  final CategoryProductRepository _categoryProductRepository;

  void call({required CategoryProductModel categoryProductModel}) =>
      _categoryProductRepository.addProduct(
          categoryProductModel: categoryProductModel);
}
