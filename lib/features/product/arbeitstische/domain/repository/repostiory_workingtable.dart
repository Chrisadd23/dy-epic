import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/entity/entity_product_workingtable.dart';
import 'package:either_dart/either.dart';

abstract class RepositoryWorkingTable {
  Future<Either<Failure, EntityArbeitsTischeProduct>> getArbeitstischeProduct(
      EnumCategoryWorkingTable? product);
}
