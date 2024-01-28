import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:either_dart/either.dart';

abstract class ShoppingBasketRepository {
  Future<Either<Failure, bool>> sendOrder({
    required Map<String, dynamic> order,
  });
}
