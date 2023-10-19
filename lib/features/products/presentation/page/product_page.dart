import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/products/presentation/widget/product_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProductPage extends HookWidget {
  const ProductPage({super.key, this.product});

  final String? product;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
        appBarContext: context, body: ProductWidget(product: product));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('product', product));
  }
}
