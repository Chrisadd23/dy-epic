import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/domain/entity/entity_buerodrehstuehle.dart';
import 'package:either_dart/either.dart';

abstract class RepositoryBuerodrehstuehle {
  Future<Either<Failure, List<EntityBuerodrehstuehle>>> getBuerodrehstuehle();
}
