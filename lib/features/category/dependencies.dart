
import 'package:app_flutter_produkt_bestellen/features/category/presentation/cubit/cubit_category.dart';

import '../../global_dependencies.dart';
import 'data/repository/repository_category_implementation.dart';
import 'domain/repository/repository_category.dart';
import 'domain/usecase_category/usecase_get_category.dart';

void setUp()
{
  //UseCase
  getIt.registerLazySingleton<UseCaseGetCategory>(() => UseCaseGetCategory(repositoryCategory: getIt()));

  //repository
  getIt.registerLazySingleton<RepositoryCategory>(() => RepositoryCategoryImplementation());

  //cubit
  getIt.registerFactory<CubitCategory>(() => CubitCategory(getIt()));
}