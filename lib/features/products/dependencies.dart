import 'package:app_flutter_produkt_bestellen/features/products/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

setUp() {
  //Cubit
  getIt.registerFactory<CubitProduct>(() => CubitProduct());
}
