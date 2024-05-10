import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/entity/entity_product_workingtable.dart';
import 'package:either_dart/either.dart';

abstract class RepositoryWorkingTable {
  List<EntityWorkingTableProduct> get localEntityWorkingTableProduct;

  List<AdditionalAttributes> get localAdditionalAttributes;

  Future<Either<Failure, EntityWorkingTableProduct>> getWorkingTableProduct(
      String? productNumber);

  Future<Either<Failure, List<AdditionalAttributes>>> getAdditionalAttributes();
}
