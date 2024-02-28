import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/domain/entity/category_workingtable_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/domain/repository/category_workingtable_repository.dart';
import 'package:either_dart/either.dart';

class CategoryWorkingTableUseCase {
  CategoryWorkingTableUseCase(this.repositoryArbeitstische);

  final CategoryWorkingtableRepository repositoryArbeitstische;

  Future<Either<Failure, CategoryWorkingtableEntity>> call() =>
      repositoryArbeitstische.getArbeitstische();
}
