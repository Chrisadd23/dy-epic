import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/entity/entity_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/repository/repository_arbeitstische.dart';
import 'package:either_dart/either.dart';

class UseCaseGetProduct {
  UseCaseGetProduct(this.repositoryArbeitstische);

  final RepositoryArbeitstische repositoryArbeitstische;

  Future<Either<Failure, EntityArbeitstische>> call() =>
      repositoryArbeitstische.getArbeitstische();
}
