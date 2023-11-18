import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/data/datasource/datasource_product_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/entity/entity_product_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/repository/repostiory_workingtable.dart';
import 'package:either_dart/either.dart';

class RepositoryProductWorkingtableImplementation
    extends RepositoryWorkingTable {
  RepositoryProductWorkingtableImplementation(
      {required this.dataSourceArbeitstische});

  final DataSourceProductWorkingTable dataSourceArbeitstische;

  @override
  Future<Either<Failure, List<EntityArbeitsTischeProduct>>>
      getArbeitstischeProduct(EnumCategoryWorkingTable? product) {
    // TODO: implement getArbeitstischeProduct
    final data = dataSourceArbeitstische.loadData(product);
    return data.fold(
        (failure) => Left(failure),
        (listEntityProductArbeitstische) =>
            Right(listEntityProductArbeitstische));
  }
}
