import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/data/datasource/category_conference_chair_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/data/repository/cateogry_conference_chair_repository_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/domain/repository/category_conference_chair_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/presentation/cubit/category_conference_chair_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/data/datasource/category_office_chair_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/data/repository/category_office_chair_repository_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/domain/repository/category_office_chair_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/presentation/cubit/category_office_chair_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/presentation/cubit/choose_office_chair_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/data/datasource/category_workingtable_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/data/repository/category_workingtable_repository_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/domain/repository/category_workingtable_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/presentation/cubit/category_workingtable_cubit.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class CategoryDependencies {
  static setUp() {
    setUpCategoryWorkingTable();
    setUpOfficeChair();
    setUpConferenceChair();
  }
}

void setUpCategoryWorkingTable() {
  getIt
    ..registerLazySingleton<CategoryWorkingTableDatasource>(
        () => DataSourceWorkingTableImplementation())
    ..registerLazySingleton<CategoryWorkingTableRepository>(() =>
        CategoryWorkingtableRepositoryImplementation(
            dataSourceWorkingTable: getIt()))
    ..registerFactory<CategoryWorkingTableCubit>(() =>
        CategoryWorkingTableCubit(getIt(), repositoryWorkingTable: getIt()));
}

void setUpOfficeChair() {
  getIt
    ..registerLazySingleton<DataSourceBuerostuehle>(
        () => DataSourceBuerostuehleImplementation(FirebaseFirestore.instance))
    ..registerLazySingleton<RepositoryBuerodrehstuehle>(() =>
        RepositoryBuerodrehstuehleImplementation(
            dataSourceBuerostuehle: getIt()))
    ..registerSingleton(CubitChooseOfficeChair())
    ..registerFactory<CubitOfficeChair>(
        () => CubitOfficeChair(
              getIt(),
              repositoryOfficeChair: getIt(),
            ),
        instanceName: EnumSelectOfficeChairCategory.normal.name)
    ..registerFactory<CubitOfficeChair>(
        () => CubitOfficeChair(
              getIt(),
              repositoryOfficeChair: getIt(),
            ),
        instanceName: EnumSelectOfficeChairCategory.hochlehner.name);
}

void setUpConferenceChair() {
  getIt
    ..registerLazySingleton<DataSourceConferenceChair>(
      () => DataSourceConferenceChairImplementation(),
    )
    ..registerLazySingleton<RepositoryConferenceChair>(
      () => RepositoryConferenceChairImplementation(
        dataSourceConferenceChair: getIt(),
      ),
    )
    ..registerFactory<CubitConferenceChair>(
      () => CubitConferenceChair(
        getIt(),
        repositoryConferenceChair: getIt(),
      ),
    );
}
