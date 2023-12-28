import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/data/datasource/datasource_buerostuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/domain/entity/entity_buerodrehstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/domain/repository/repository_buerostuehle.dart';
import 'package:either_dart/either.dart';

class RepositoryBuerodrehstuehleImplementation
    extends RepositoryBuerodrehstuehle {
  RepositoryBuerodrehstuehleImplementation(
      {required this.dataSourceBuerostuehle});

  final DataSourceBuerostuehle dataSourceBuerostuehle;

  @override
  Future<Either<Failure, List<EntityBuerodrehstuehle>>> getBuerodrehstuehle(
      {String? officeChairCategory}) async {
    // TODO: implement getBuerodrehstuehle
    return dataSourceBuerostuehle.getBuerodrehstuehle(
        officeChairCategory: officeChairCategory);
  }
}
