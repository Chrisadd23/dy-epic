import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/data/datasource/datasource_product_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/entity/entity_product_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/repository/repostiory_workingtable.dart';
import 'package:either_dart/either.dart';

class RepositoryProductWorkingTableImplementation
    extends RepositoryWorkingTable {
  RepositoryProductWorkingTableImplementation(
      {required this.dataSourceWorkingTable});

  final DataSourceProductWorkingTable dataSourceWorkingTable;
  final List<EntityWorkingTableProduct> _entityWorkingTableProduct = [];
  final List<AdditionalAttributes> _additionalAttributes = [];

  @override
  Future<Either<Failure, EntityWorkingTableProduct>> getWorkingTableProduct(
      String? productNumber) async {
    if (_entityWorkingTableProduct.isEmpty ||
        !_entityWorkingTableProduct
            .any((element) => element.productNumber == productNumber)) {
      return dataSourceWorkingTable
          .loadData(productNumber)
          .fold((failure) => Left(failure), (entityProductWorkingTable) {
        _entityWorkingTableProduct.add(entityProductWorkingTable);
        return Right(entityProductWorkingTable);
      });
    }

    return Right(_entityWorkingTableProduct
        .where((element) => element.productNumber == productNumber)
        .first);
  }

  @override
  Future<Either<Failure, List<AdditionalAttributes>>>
      getAdditionalAttributes() async {
    if (_additionalAttributes.isEmpty) {
      return dataSourceWorkingTable
          .getAdditionalAttributes()
          .fold((failure) => Left(failure), (additionalAttributes) {
        _additionalAttributes.addAll(additionalAttributes);
        return Right(additionalAttributes);
      });
    } else {
      return Right(_additionalAttributes);
    }
  }

  @override
  List<EntityWorkingTableProduct> get localEntityWorkingTableProduct =>
      _entityWorkingTableProduct;

  @override
  List<AdditionalAttributes> get localAdditionalAttributes =>
      _additionalAttributes;
}
