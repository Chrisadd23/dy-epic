import 'package:app_flutter_produkt_bestellen/features/shopping_basket/data/datasource/shopping_basket_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/data/repository/repository.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/repository/shopping_basket_ropository.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

abstract class ShoppingBasketDependencies {
  static setUp() {
    getIt.registerLazySingleton<ShoppingBasketDataSource>(
      () => ShoppingBasketDataSourceImplementation(),
    );

    getIt.registerLazySingleton<ShoppingBasketRepository>(
      () => ShoppingBasketRepositoryImplementation(
        shoppingBasketDataSource: getIt(),
      ),
    );

    getIt.registerLazySingleton<BlocShoppingBasket>(
      () => BlocShoppingBasket(
        shoppingBasketRepository: getIt(),
      ),
    );
  }
}
