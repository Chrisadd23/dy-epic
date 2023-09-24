import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/data/datasource/datasource_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/data/repository/repository_arbeitstische_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/repository/repository_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/cubit/cubit_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

void setUp() {
  setUpArbeitstische();
}

void setUpArbeitstische() {
  getIt.registerLazySingleton<DataSourceArbeitstische>(
      () => DataSourceArbeitstischeImplementation());

  getIt.registerLazySingleton<RepositoryArbeitstische>(() =>
      RepositoryArbeitstischeImplementation(dataSourceArbeitstische: getIt()));

  getIt.registerFactory<CubitWorkTables>(() => CubitWorkTables());
}
