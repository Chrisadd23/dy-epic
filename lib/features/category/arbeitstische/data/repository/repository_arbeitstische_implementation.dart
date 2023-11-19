import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/data/datasource/datasource_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/entity/entity_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/repository/repository_arbeitstische.dart';
import 'package:either_dart/either.dart';

class RepositoryArbeitstischeImplementation extends RepositoryArbeitstische {
  RepositoryArbeitstischeImplementation(
      {required this.dataSourceArbeitstische});

  final DataSourceArbeitstische dataSourceArbeitstische;

  @override
  Future<Either<Failure, List<EntityArbeitstische>>> getArbeitstische() {
    // TODO: implement getArbeitstische
    return dataSourceArbeitstische.getArbeitstischeData();
  }
}
