
import 'package:app_flutter_produkt_bestellen/features/category/share/data/repository/repository_category_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/repository/repository_category.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/usecase_category/usecase_get_category.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/cubit_category.dart';

import '../../global_dependencies.dart';

void setUp()
{
  //UseCase
  getIt.registerLazySingleton<UseCaseGetCategory>(() => UseCaseGetCategory(repositoryCategory: getIt()));

  //repository
  getIt.registerLazySingleton<RepositoryCategory>(() => RepositoryCategoryImplementation());

  //cubit
  getIt.registerFactory<CubitCategory>(() => CubitCategory(getIt()));
}