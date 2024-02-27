import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/entity/category_workingtable_entity.dart';
import 'package:either_dart/either.dart';

abstract class CategoryWorkingtableDatasource {
  Future<Either<Failure, CategoryWorkingtableEntity>> getArbeitstischeData();
}

class DataSourceArbeitstischeImplementation
    extends CategoryWorkingtableDatasource {
  @override
  Future<Either<Failure, CategoryWorkingtableEntity>>
      getArbeitstischeData() async {
    // TODO: implement getArbeitstischeData
    try {
      return const Right(_listProductSortiment);
    } catch (e) {
      return Left('Sortiment konnte nicht geladen werden' as Failure);
    }
  }
}

const _listProductSortiment =
    CategoryWorkingtableEntity(categoryName: 'E-Smart', listProduct: []);
