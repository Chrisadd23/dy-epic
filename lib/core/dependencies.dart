import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:go_router/go_router.dart';

abstract class CoreDependencies {
  static setUp() {
    getIt
      ..registerLazySingleton<CubitPictures>(() => CubitPictures())
      ..registerLazySingleton<GoRouter>(() => AppGoRouter.router);
  }
}
