import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderPageShellNavigation extends StatelessWidget {
  const OrderPageShellNavigation({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket_outlined,
                color: Colors.black,
              ),
              label: 'Bestellungen'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.question_answer_outlined,
                color: Colors.black,
              ),
              label: 'Anfragen'),
        ],
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => _onTap(context, index),
      ),
      showMenuBar: true,
    );
  }

  _onTap(BuildContext context, int index) {
    debugPrint("index ==> $index");
    navigationShell.goBranch(index);
  }
}
