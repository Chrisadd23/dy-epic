import 'package:app_flutter_produkt_bestellen/features/shopping_basket/data/datasource/shopping_basket_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/repository/shopping_basket_ropository.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';

class ShoppingBasketRepositoryImplementation extends ShoppingBasketRepository {
  final ShoppingBasketDataSource shoppingBasketDataSource;

  ShoppingBasketRepositoryImplementation(
      {required this.shoppingBasketDataSource});

  @override
  Future<void> sendOrder(
      {required List<ChosenProduct> chosenProductList,
      required DateTime dateTime,
      required double amount}) async {
    // TODO: implement sendOrder
    shoppingBasketDataSource.sendOrder(
        chosenProductList: chosenProductList,
        dateTime: dateTime,
        amount: amount);
  }
}
