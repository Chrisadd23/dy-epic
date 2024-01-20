import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/cubit_workingtable_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/widget/product_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PageWorkingTableProduct extends HookWidget {
  const PageWorkingTableProduct({super.key, this.product, this.color});

  final EnumCategoryWorkingTable? product;
  final Map<String, String>? color;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocShoppingBasket>.value(
        value: getIt<BlocShoppingBasket>(),
        child: _BlocProviderWorkingTable(product: product, color: color));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<EnumCategoryWorkingTable?>('product', product));
    properties.add(DiagnosticsProperty<Map<String, String>?>('color', color));
  }
}

class _BlocProviderWorkingTable extends StatelessWidget {
  const _BlocProviderWorkingTable({
    required this.product,
    required this.color,
  });

  final EnumCategoryWorkingTable? product;
  final Map<String, String>? color;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: BlocProvider<CubitWorkingTableProduct>(
        create: (context) =>
            getIt<CubitWorkingTableProduct>()..load(product, color),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: const ProductWidget(),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<EnumCategoryWorkingTable?>('product', product));
    properties.add(DiagnosticsProperty<Map<String, String>?>('color', color));
  }
}
