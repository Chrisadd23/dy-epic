import 'package:app_flutter_produkt_bestellen/features/product/presentation/cubit/product_cubit.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

abstract class ProductDependencies {
  static setUp() {
    getIt.registerFactory<ProductCubit>(() => ProductCubit(getIt()));
  }
}
