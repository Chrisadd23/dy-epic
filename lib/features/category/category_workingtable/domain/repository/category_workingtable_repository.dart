import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/domain/entity/category_workingtable_entity.dart';
import 'package:either_dart/either.dart';

abstract class CategoryWorkingtableRepository {
  Future<Either<Failure, CategoryWorkingTableEntity>> getArbeitstische();
}
