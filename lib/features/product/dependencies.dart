import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/cubit_workingtable_product.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

setUp() {
  //Cubit
  getIt.registerFactory<CubitWorkingTableProduct>(
      () => CubitWorkingTableProduct());
}
