library office_chair_product;

import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/presentation/cubit/cubit_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_order_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_picture_area.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_product_counter.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_product_info.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_product_title.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/cubit_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageOfficeChairProduct extends StatelessWidget {
  const PageOfficeChairProduct({super.key, required this.product});

  final String product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocShoppingBasket>.value(
        value: getIt<BlocShoppingBasket>(),
        child: _BlocProviderOfficeChairProduct(product: product));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('product', product));
  }
}

class _BlocProviderOfficeChairProduct extends StatelessWidget {
  const _BlocProviderOfficeChairProduct({
    required this.product,
  });

  final String product;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: MultiBlocProvider(
        providers: [
          BlocProvider<CubitProduct>.value(
              value: getIt<CubitOfficeChairProduct>()..load(product: product)),
        ],
        child: const _OfficeChairBlocBuilder(),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('product', product));
  }
}

class _OfficeChairBlocBuilder extends StatelessWidget {
  const _OfficeChairBlocBuilder();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitProduct, StateProduct>(
      builder: (context, state) => state.maybeMap(
        orElse: () => const LoadingWidget(
          firstWidth: 110,
          secondWidth: 60,
        ),
        success: (product) => SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: const _ProductWidget(),
        ),
      ),
    );
  }
}

class _ProductWidget extends StatelessWidget {
  const _ProductWidget();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  const WidgetProductTitle(),
                  const _ProductPicture(),
                  const WidgetProductCounter(),
                  BlocSelector<CubitProduct, StateProduct, List<String>?>(
                      selector: (state) => state.mapOrNull(
                          success: (successState) =>
                              successState.product?.attributes),
                      builder: (context, productAttributes) {
                        debugPrint("productAttributes => $productAttributes");
                        return WidgetProductInfo(
                          productInfo: productAttributes,
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
        const WidgetOrderProduct(),
        BlocBuilder<BlocShoppingBasket, StateShoppingBasket>(
            builder: (context, state) {
          return const DialogShoppingBasket();
        })
      ],
    );
  }
}

class _ProductPicture extends StatelessWidget {
  const _ProductPicture();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CubitProduct, StateProduct, Uint8List?>(
        selector: (state) => state.maybeMap(
            orElse: () {
              return;
            },
            success: (product) => product.product?.pictureBytes),
        builder: (context, pictureBytes) {
          return WidgetPictureArea(pictureBytes: pictureBytes);
        });
  }
}
