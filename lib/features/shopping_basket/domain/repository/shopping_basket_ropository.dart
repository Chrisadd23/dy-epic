import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
import 'package:either_dart/either.dart';

abstract class ShoppingBasketRepository {
  Future<Either<Failure, bool>> sendOrder({
    required ShoppingBasketEntity order,
    required ShoppingBasketEntity request,
  });
}
