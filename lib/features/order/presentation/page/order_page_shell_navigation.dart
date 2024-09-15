import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_scaffold.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/global_curved_navigation_bar.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class OrderPageShellNavigation extends StatelessWidget {
  const OrderPageShellNavigation(
      {super.key, required this.navigationShell, required this.goRouterState});

  final StatefulNavigationShell navigationShell;
  final GoRouterState goRouterState;

  @override
  Widget build(BuildContext context) {
    debugPrint(
        "navigationShell.currentIndex ==> ${navigationShell.currentIndex}");
    debugPrint("goRouterState.location  ==> ${goRouterState.location}");

    return GlobalScaffold(
      appBarContext: context,
      showMenuBar: true,
      body: BlocProvider<BlocShoppingBasket>.value(
          value: getIt<BlocShoppingBasket>(), child: navigationShell),
      bottomNavigationBar: GlobalCurvedNavigationBar(
        buttonBackgroundColor: AppColors.whiteD6D6D7,
        animationDuration: const Duration(milliseconds: 300),
        index: navigationShell.currentIndex,
        backgroundColor: Colors.transparent,
        items: [
          SvgPicture.asset(
            Assets.appComponents.svg.orderBasket,
            width: 35,
            height: 35,
          ),
          SvgPicture.asset(
            Assets.appComponents.svg.orderRequest,
            width: 35,
            height: 35,
          ),
        ],
        onTap: (index) => navigationShell.goBranch(index),
      ),
    );
  }
}
