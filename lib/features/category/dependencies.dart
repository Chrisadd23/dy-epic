import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/data/datasource/datasource_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/data/repository/repository_arbeitstische_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/repository/repository_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/cubit/cubit_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/data/datasource/datasource_buerostuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/data/repository/repository_buerodrehstuehle_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/domain/repository/repository_buerostuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/presentation/cubit/cubit_buerostuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/presentation/cubit/cubit_choose_office_chair.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/data/datasource/datasource_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/data/repository/repository_konferenzstuehle_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/domain/repository/repository_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/presentation/cubit/cubit_conference_chair.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void setUp() {
  setUpArbeitstische();
  setUpOfficeChair();
  setUpConferenceChair();
}

void setUpArbeitstische() {
  getIt.registerLazySingleton<DataSourceArbeitstische>(
      () => DataSourceArbeitstischeImplementation());

  getIt.registerLazySingleton<RepositoryArbeitstische>(() =>
      RepositoryArbeitstischeImplementation(dataSourceArbeitstische: getIt()));

  getIt.registerFactory<CubitWorkTables>(
      () => CubitWorkTables(repositoryArbeitstische: getIt()));
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
