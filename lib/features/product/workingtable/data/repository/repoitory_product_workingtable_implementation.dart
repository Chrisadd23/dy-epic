import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/data/datasource/datasource_product_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/entity/entity_product_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/repository/repostiory_workingtable.dart';
import 'package:either_dart/either.dart';

class RepositoryProductWorkingtableImplementation
    extends RepositoryWorkingTable {
  RepositoryProductWorkingtableImplementation(
      {required this.dataSourceWorkingTable});

  final DataSourceProductWorkingTable dataSourceWorkingTable;

  @override
  Future<Either<Failure, EntityWorkingTableProduct>> getWorkingTableProduct(
      String? productNumber) {
    final data = dataSourceWorkingTable.loadData(productNumber);
    return data.fold(
        (failure) => Left(failure),
        (listEntityProductArbeitstische) =>
            Right(listEntityProductArbeitstische));
  }

  @override
  Future<Either<Failure, List<AdditionalAttributes>>>
      getAdditionalAttributes() {
    final data = dataSourceWorkingTable.getAdditionalAttributes();
    return data;
  }
}
