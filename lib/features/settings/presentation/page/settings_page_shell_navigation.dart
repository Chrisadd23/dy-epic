import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SettingsPageShellNavigation extends StatelessWidget {
  const SettingsPageShellNavigation({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: MultiBlocProvider(providers: [
        BlocProvider<BlocShoppingBasket>.value(
          value: getIt<BlocShoppingBasket>(),
        ),
        BlocProvider<LoginCubit>.value(
          value: getIt<LoginCubit>(),
        ),
      ], child: navigationShell),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: AppColors.orangeF6A440,
        animationDuration: const Duration(milliseconds: 300),
        index: navigationShell.currentIndex,
        backgroundColor: Colors.transparent,
        items: const [
          Icon(
            Icons.settings,
            size: 35,
          ),
          Icon(
            Icons.person,
            size: 35,
          )
        ],
        onTap: (index) => navigationShell.goBranch(index),
      ),
      showMenuBar: true,
    );
  }
}
