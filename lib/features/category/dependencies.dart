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
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

void setUp() {
  setUpArbeitstische();
  setUpOfficeChair();
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
      () => DataSourceBuerostuehleImplementation());

  getIt.registerLazySingleton<RepositoryBuerodrehstuehle>(() =>
      RepositoryBuerodrehstuehleImplementation(
          dataSourceBuerostuehle: getIt()));

  getIt.registerLazySingleton<CubitChooseOfficeChair>(
      () => CubitChooseOfficeChair());

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
