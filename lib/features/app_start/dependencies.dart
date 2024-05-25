import 'package:app_flutter_produkt_bestellen/features/app_start/presentation/cubit/app_start_cubit.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

abstract class AppStartDependencies{
  static void setUp(){
    getIt.registerLazySingleton<AppStartCubit>(() => AppStartCubit());
  }
}