import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/entity/category_workingtable_entity.dart';
import 'package:either_dart/either.dart';

abstract class CategoryWorkingtableRepository {
  Future<Either<Failure, CategoryWorkingtableEntity>> getArbeitstische();
}
