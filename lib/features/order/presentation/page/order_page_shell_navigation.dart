import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OrderPageShellNavigation extends StatelessWidget {
  const OrderPageShellNavigation({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: BlocProvider<BlocShoppingBasket>(
          create: (context) => getIt<BlocShoppingBasket>(),
          child: navigationShell),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: AppColors.orangeF6A440,
        animationDuration: const Duration(milliseconds: 300),
        index: navigationShell.currentIndex,
        backgroundColor: AppColors.greyCACACA,
        items: const [
          Icon(
            Icons.shopping_basket_outlined,
            color: Colors.black,
          ),
          Icon(
            Icons.question_answer_outlined,
            color: Colors.black,
          ),
        ],
        onTap: (index) => navigationShell.goBranch(index),
      ),
      showMenuBar: true,
    );
  }
}
