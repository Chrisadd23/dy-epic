import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/data/datasource/datasource_product_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/data/repository/repoitory_product_workingtable_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/repository/repostiory_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/cubit_workingtable_product.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

setUp() {
  //datasource
  getIt.registerLazySingleton<DataSourceProductWorkingTable>(
      () => DataSourceProductWorkingtableImplementation());

  //repository
  getIt.registerLazySingleton<RepositoryWorkingTable>(() =>
      RepositoryProductWorkingtableImplementation(
          dataSourceArbeitstische: getIt()));

  //Cubit
  getIt.registerFactory<CubitWorkingTableProduct>(
      () => CubitWorkingTableProduct(repositoryProductArbeitstische: getIt()));
}
