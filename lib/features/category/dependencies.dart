import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/data/datasource/datasource_buerostuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/data/repository/repository_buerodrehstuehle_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/domain/repository/repository_buerostuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/presentation/cubit/cubit_buerostuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/presentation/cubit/cubit_choose_office_chair.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/data/datasource/category_workingtable_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/data/repository/category_workingtable_repository_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/domain/repository/category_workingtable_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/presentation/cubit/category_workingtable_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/data/datasource/datasource_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/data/repository/repository_konferenzstuehle_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/domain/repository/repository_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/presentation/cubit/cubit_conference_chair.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class CategoryDependencies {
  static setUp() {
    setUpArbeitstische();
    setUpOfficeChair();
    setUpConferenceChair();
  }
}

void setUpArbeitstische() {
  getIt.registerLazySingleton<CategoryWorkingTableDatasource>(
      () => DataSourceWorkingTableImplementation());

  getIt.registerLazySingleton<CategoryWorkingtableRepository>(() =>
      CategoryWorkingtableRepositoryImplementation(
          dataSourceArbeitstische: getIt()));

  getIt.registerFactory<CategoryWorkingTableCubit>(
      () => CategoryWorkingTableCubit(repositoryWorkingTable: getIt()));
}

void setUpOfficeChair() {
  getIt.registerLazySingleton<DataSourceBuerostuehle>(
      () => DataSourceBuerostuehleImplementation(FirebaseFirestore.instance));

  getIt.registerLazySingleton<RepositoryBuerodrehstuehle>(() =>
      RepositoryBuerodrehstuehleImplementation(
          dataSourceBuerostuehle: getIt()));

  getIt.registerSingleton(CubitChooseOfficeChair());

  getIt.registerFactory<CubitOfficeChair>(
      () => CubitOfficeChair(
            repositoryOfficeChair: getIt(),
          ),
      instanceName: EnumSelectOfficeChairCategory.normal.name);

  getIt.registerFactory<CubitOfficeChair>(
      () => CubitOfficeChair(
            repositoryOfficeChair: getIt(),
          ),
      instanceName: EnumSelectOfficeChairCategory.hochlehner.name);
}

void setUpConferenceChair() {
  getIt.registerLazySingleton<DataSourceConferenceChair>(
    () => DataSourceConferenceChairImplementation(),
  );

  getIt.registerLazySingleton<RepositoryConferenceChair>(
    () => RepositoryConferenceChairImplementation(
      dataSourceConferenceChair: getIt(),
    ),
  );

  getIt.registerFactory<CubitConferenceChair>(
    () => CubitConferenceChair(
      repositoryConferenceChair: getIt(),
    ),
  );
}
