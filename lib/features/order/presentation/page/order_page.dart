import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Center(
          child: Text("Bestellung"),
        ),
        DialogShoppingBasket()
      ],
    );
  }
}
