import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';

abstract class ShoppingBasketDataSource {
  Future<Either<Failure, bool>> sendOrder({
    required ShoppingBasketEntity order,
  });
}

class ShoppingBasketDataSourceImplementation extends ShoppingBasketDataSource {
  ShoppingBasketDataSourceImplementation(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  @override
  Future<Either<Failure, bool>> sendOrder({
    required ShoppingBasketEntity order,
  }) async {
    Failure? failure;

    try {
      if (order.products.isNotEmpty) {
        await _firebaseFirestore.collection("Order").add(order.toJson()).then(
              (value) => true,
              onError: (error) =>
                  failure = Failure.databaseError(error.toString()),
            );
        if (failure != null) {
          return Left(failure!);
        }
      }

      return const Right(true);
    } catch (e) {
      return Left(
        Failure.databaseError(
          e.toString(),
        ),
      );
    }
  }
}
