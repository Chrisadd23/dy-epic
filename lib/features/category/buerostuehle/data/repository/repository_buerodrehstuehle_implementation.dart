import 'dart:typed_data';

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
  Future<Either<Failure, EntityBuerodrehstuehle>> getBuerodrehstuehle(
      {String? officeChairCategory}) async {
    // TODO: implement getBuerodrehstuehle
    return dataSourceBuerostuehle.getBuerodrehstuehle(
        officeChairCategory: officeChairCategory);
  }

  @override
  Future<Either<Failure, Uint8List?>> getPicturePath(
      {required List<String> productTypes}) {
    // TODO: implement getPicturePath
    return dataSourceBuerostuehle.getPicturePath(productTypes: productTypes);
  }
}
