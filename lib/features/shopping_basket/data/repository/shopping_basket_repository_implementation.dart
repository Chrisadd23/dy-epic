import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/data/datasource/shopping_basket_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/repository/shopping_basket_ropository.dart';
import 'package:either_dart/either.dart';

class ShoppingBasketRepositoryImplementation extends ShoppingBasketRepository {
  final ShoppingBasketDataSource shoppingBasketDataSource;

  ShoppingBasketRepositoryImplementation(
      {required this.shoppingBasketDataSource});

  @override
  Future<Either<Failure, bool>> sendOrder(
      {required ShoppingBasketEntity order,
      required ShoppingBasketEntity request}) {
    return shoppingBasketDataSource.sendOrder(order: order, request: request);
  }
}
