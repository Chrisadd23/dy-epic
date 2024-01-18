import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/cubit_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

abstract class ShoppingBasketDependencies {
  static setUp() {
    getIt.registerLazySingleton<BlocShoppingBasket>(() => BlocShoppingBasket());
  }
}
