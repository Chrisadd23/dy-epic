import 'package:app_flutter_produkt_bestellen/features/shopping_basket/data/datasource/shopping_basket_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/repository/shopping_basket_ropository.dart';

class ShoppingBasketRepositoryImplementation extends ShoppingBasketRepository {
  final ShoppingBasketDataSource shoppingBasketDataSource;

  ShoppingBasketRepositoryImplementation(
      {required this.shoppingBasketDataSource});

  @override
  Future<void> sendOrder({required Map<String, dynamic> order}) async {
    shoppingBasketDataSource.sendOrder(order: order);
  }
}
