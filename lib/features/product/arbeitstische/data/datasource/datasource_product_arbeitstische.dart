import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/entity/entity_product_workingtable.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceProductWorkingTable {
  Future<Either<Failure, EntityWorkingTableProduct>> loadData(String? product);
}

class DataSourceProductWorkingtableImplementation
    extends DataSourceProductWorkingTable {
  @override
  Future<Either<Failure, EntityWorkingTableProduct>> loadData(
      String? product) async {
    return Left('Konnte nicht geladen werden' as Failure);
  }
}
