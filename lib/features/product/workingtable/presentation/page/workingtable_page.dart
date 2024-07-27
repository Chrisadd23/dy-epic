import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/presentation/cubit/cubit_workingtable_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/presentation/widget/working_table_product_components.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PageWorkingTableProduct extends HookWidget {
  const PageWorkingTableProduct(
      {super.key, this.color, this.recordOrder, this.product});

  final String? color;
  final ({ShoppingBasketProduct chosenProduct, int index})? recordOrder;
  final CategoryEntity? product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocShoppingBasket>.value(
        value: getIt<BlocShoppingBasket>(),
        child: _BlocProviderWorkingTable(
          product: product,
          color: color,
          recordOrder: recordOrder,
        ));
  }
}

class _BlocProviderWorkingTable extends StatelessWidget {
  const _BlocProviderWorkingTable({
    this.product,
    this.color,
    this.recordOrder,
  });

  final CategoryEntity? product;
  final String? color;
  final ({ShoppingBasketProduct chosenProduct, int index})? recordOrder;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: MultiBlocProvider(
        providers: [
          BlocProvider<CubitProduct>(
              create: (context) => getIt<CubitWorkingTableProduct>()
                ..load(
                    product: product, color: color, recordOrder: recordOrder)),
        ],
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
}
