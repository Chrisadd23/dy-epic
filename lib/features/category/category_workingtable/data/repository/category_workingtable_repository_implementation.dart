import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/data/datasource/category_workingtable_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/domain/entity/category_workingtable_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/domain/repository/category_workingtable_repository.dart';
import 'package:either_dart/either.dart';

class CategoryWorkingtableRepositoryImplementation
    extends CategoryWorkingTableRepository {
  CategoryWorkingtableRepositoryImplementation(
      {required this.dataSourceWorkingTable});

  final CategoryWorkingTableDatasource dataSourceWorkingTable;

  @override
  Future<Either<Failure, CategoryWorkingTableEntity>> getWorkingTable() async {
    // TODO: implement getArbeitstische
    return dataSourceWorkingTable.getWorkingTableData();
  }
}
