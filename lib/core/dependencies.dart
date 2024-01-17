import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:go_router/go_router.dart';

void setUp() {
  getIt.registerLazySingleton<CubitPictures>(() => CubitPictures());
  getIt.registerLazySingleton<GoRouter>(() => AppGoRouter.router);
}
