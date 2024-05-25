import 'package:app_flutter_produkt_bestellen/features/shopping_basket/data/datasource/shopping_basket_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/data/repository/shopping_basket_repository_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/repository/shopping_basket_ropository.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class ShoppingBasketDependencies {
  static setUp() {
    getIt
      ..registerLazySingleton<ShoppingBasketDataSource>(
        () =>
            ShoppingBasketDataSourceImplementation(FirebaseFirestore.instance),
      )
      ..registerLazySingleton<ShoppingBasketRepository>(
        () => ShoppingBasketRepositoryImplementation(
          shoppingBasketDataSource: getIt(),
        ),
      )
      ..registerLazySingleton<BlocShoppingBasket>(
        () => BlocShoppingBasket(
          getIt(),
        ),
      );
  }
}
