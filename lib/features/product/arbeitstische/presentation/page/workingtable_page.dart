import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/cubit_workingtable_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/widget/product_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WorkingTablePage extends HookWidget {
  const WorkingTablePage({super.key, this.product, required this.color});

  final EnumCategoryWorkingTable? product;
  final Map<String, String>? color;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: BlocProvider<CubitWorkingTableProduct>(
        create: (context) =>
            getIt<CubitWorkingTableProduct>()..load(product, color),
        child: BlocBuilder<CubitWorkingTableProduct, StateProduct>(
            builder: (context, state) => state.maybeMap(
                orElse: () => const LoadingWidget(
                      firstWidth: 110,
                      secondWidth: 60,
                    ),
                success: (_) => const ProductWidget())),
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
