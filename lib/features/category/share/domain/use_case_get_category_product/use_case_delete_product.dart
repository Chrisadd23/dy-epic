import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/repository/category_product_repository.dart';
import 'package:either_dart/either.dart';

class UseCaseDeleteProduct {
  UseCaseDeleteProduct(this._categoryProductRepository);

  final CategoryProductRepository _categoryProductRepository;

  Future<Either<Failure, List<CategoryEntity>>> call(
          {required String productNumber}) =>
      _categoryProductRepository.deleteProduct(productNumber: productNumber);
}
