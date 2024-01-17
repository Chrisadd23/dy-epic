import 'package:app_flutter_produkt_bestellen/features/home/data/repository/repository_category_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/home/domain/repository/repository_category.dart';
import 'package:app_flutter_produkt_bestellen/features/home/domain/usecase_category/usecase_get_category.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/cubit/cubit_category.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

abstract class HomeDependencies {
  static setUp() {
    //UseCase
    getIt.registerLazySingleton<UseCaseGetCategory>(
        () => UseCaseGetCategory(repositoryCategory: getIt()));

    //repository
    getIt.registerLazySingleton<RepositoryCategory>(
        () => RepositoryCategoryImplementation());

    //cubit
    getIt.registerFactory<HomePageCubit>(() => HomePageCubit(getIt()));
  }
}
