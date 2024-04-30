import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: MultiBlocProvider(providers: [
        BlocProvider<BlocShoppingBasket>.value(
            value: getIt<BlocShoppingBasket>())
      ], child: const _SettingsPageStack()),
      showMenuBar: true,
    );
  }
}

class _SettingsPageStack extends StatelessWidget {
  const _SettingsPageStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [DialogShoppingBasket()],
    );
  }
}
