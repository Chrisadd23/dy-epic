import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/repository/category_product_repository.dart';
import 'package:either_dart/either.dart';

class UseCaseGetCategoryProduct {
  UseCaseGetCategoryProduct(this.repositoryCategoryProduct);

  final CategoryProductRepository repositoryCategoryProduct;

  Future<Either<Failure, List<CategoryEntity>>> call() =>
      repositoryCategoryProduct.getListCategory();
}
