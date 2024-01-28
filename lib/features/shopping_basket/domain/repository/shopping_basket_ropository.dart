

abstract class ShoppingBasketRepository {
  Future<void> sendOrder({
    required Map<String, dynamic> order,
  });
}
