import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/domain/entity/category_workingtable_entity.dart';
import 'package:either_dart/either.dart';

abstract class CategoryWorkingtableDatasource {
  Future<Either<Failure, CategoryWorkingTableEntity>> getArbeitstischeData();
}

class DataSourceArbeitstischeImplementation
    extends CategoryWorkingtableDatasource {
  @override
  Future<Either<Failure, CategoryWorkingTableEntity>>
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
    CategoryWorkingTableEntity(categoryName: 'E-Smart', listProduct: []);
