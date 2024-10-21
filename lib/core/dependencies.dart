import 'package:app_flutter_produkt_bestellen/core/data/data_source/data_source_core.dart';
import 'package:app_flutter_produkt_bestellen/core/data/repository/repository_implementation_core.dart';
import 'package:app_flutter_produkt_bestellen/core/domain/repository/repository_core.dart';
import 'package:app_flutter_produkt_bestellen/core/domain/use_case/use_case_get_local_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/domain/use_case/use_case_get_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/domain/use_case/use_case_get_single_image.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/presentation/cubit/cubit_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:go_router/go_router.dart';

abstract class CoreDependencies {
  static setUp() {
    getIt
      ..registerLazySingleton<DataSourceCore>(
          () => DataSourceImplementationCore())
      ..registerLazySingleton<RepositoryCore>(
          () => RepositoryImplementationCore(getIt()))
      ..registerLazySingleton<UseCaseGetPicture>(
        () => UseCaseGetPicture(
          getIt(),
        ),
      )
      ..registerLazySingleton(
        () => UseCaseGetLocalPictures(
          getIt(),
        ),
      )
      ..registerLazySingleton<UseCaseGetSingleLocalImage>(
        () => UseCaseGetSingleLocalImage(
          getIt(),
        ),
      )
      ..registerLazySingleton<CubitPictures>(() => CubitPictures())
      ..registerLazySingleton<GoRouter>(() => AppGoRouter.router)
      ..registerFactory<CubitCorePictures>(
        () => CubitCorePictures(
          getIt(),
          getIt(),
        ),
      );
  }
}
