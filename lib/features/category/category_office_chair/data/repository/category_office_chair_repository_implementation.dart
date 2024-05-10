import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/data/datasource/category_office_chair_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/domain/entity/entity_buerodrehstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/domain/repository/category_office_chair_repository.dart';
import 'package:either_dart/either.dart';

class RepositoryBuerodrehstuehleImplementation
    extends RepositoryBuerodrehstuehle {
  RepositoryBuerodrehstuehleImplementation(
      {required this.dataSourceBuerostuehle});

  final DataSourceBuerostuehle dataSourceBuerostuehle;

  @override
  Future<Either<Failure, EntityBuerodrehstuehle>> getBuerodrehstuehle(
      {String? officeChairCategory}) async {
    // TODO: implement getBuerodrehstuehle
    return dataSourceBuerostuehle.getBuerodrehstuehle(
        officeChairCategory: officeChairCategory);
  }
}
