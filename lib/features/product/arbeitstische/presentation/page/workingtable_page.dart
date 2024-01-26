import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/cubit_workingtable_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/widget/product_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PageWorkingTableProduct extends HookWidget {
  const PageWorkingTableProduct(
      {super.key, this.product, this.color, this.recordOrder});

  final String? product;
  final String? color;
  final ({ChosenProduct chosenProduct, int index})? recordOrder;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocShoppingBasket>.value(
        value: getIt<BlocShoppingBasket>(),
        child: _BlocProviderWorkingTable(product: product, color: color));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('product', product));
    properties.add(StringProperty('color', color));
    properties.add(DiagnosticsProperty<({ChosenProduct chosenProduct, int index})?>('recordOrder', recordOrder));
  }
}

class _BlocProviderWorkingTable extends StatelessWidget {
  const _BlocProviderWorkingTable({this.product, this.color});

  final String? product;
  final String? color;
  final ({ChosenProduct chosenProduct, int index})? recordOrder;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: BlocProvider<CubitProduct>.value(
        value: getIt<CubitWorkingTableProduct>()
          ..load(product: product, color: color, recordOrder: recordOrder),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: WorkingTableProductComponents(
            product: product,
            color: color,
            recordOrder: recordOrder,
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('product', product));
    properties.add(
        DiagnosticsProperty<({ChosenProduct chosenProduct, int index})?>(
            'recordOrder', recordOrder));
    properties.add(StringProperty('color', color));
  }
}
