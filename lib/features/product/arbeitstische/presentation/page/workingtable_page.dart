import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/cubit_workingtable_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/widget/product_widget.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WorkingTablePage extends HookWidget {
  const WorkingTablePage({super.key, this.product});

  final String? product;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: BlocProvider(
        create: (context) => getIt<CubitWorkingTableProduct>(),
        child: ProductWidget(product: product),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('product', product));
  }
}
