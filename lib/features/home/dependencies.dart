import 'package:app_flutter_produkt_bestellen/features/home/presentation/cubit/home_cubit_category.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

abstract class HomeDependencies {
  static setUp() {
    //cubit
    getIt.registerFactory<HomeCategoryCubit>(() => HomeCategoryCubit());
  }
}
