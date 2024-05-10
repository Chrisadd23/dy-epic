library office_chair_product;

import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/presentation/cubit/cubit_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_order_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_picture_area.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_product_counter.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_product_info.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_product_title.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageOfficeChairProduct extends StatelessWidget {
  const PageOfficeChairProduct(
      {super.key, required this.product, this.recordOrder});

  final String? product;
  final ({ShoppingBasketProduct chosenProduct, int index})? recordOrder;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocShoppingBasket>.value(
        value: getIt<BlocShoppingBasket>(),
        child: _BlocProviderOfficeChairProduct(
            product: product, recordOrder: recordOrder));
  }
}

class _BlocProviderOfficeChairProduct extends StatelessWidget {
  const _BlocProviderOfficeChairProduct({
    this.product,
    this.recordOrder,
  });

  final String? product;
  final ({ShoppingBasketProduct chosenProduct, int index})? recordOrder;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: MultiBlocProvider(
        providers: [
          BlocProvider<CubitProduct>.value(
              value: getIt<CubitOfficeChairProduct>()
                ..load(productNumber: product, recordOrder: recordOrder)),
        ],
        child: const _OfficeChairBlocBuilder(),
      ),
    );
  }
}

class _OfficeChairBlocBuilder extends StatelessWidget {
  const _OfficeChairBlocBuilder();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: const _ProductWidget(),
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
                  BlocBuilder<CubitProduct, StateProduct>(
                      builder: (context, state) {
                    return WidgetProductInfo(
                      productInfo: state.productEntity?.attributes,
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
        const WidgetOrderProduct(),
        const DialogShoppingBasket()
      ],
    );
  }
}

class _ProductPicture extends StatelessWidget {
  const _ProductPicture();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CubitProduct, StateProduct, Uint8List?>(
        selector: (state) => state.productEntity?.pictureBytes,
        builder: (context, pictureBytes) {
          return WidgetPictureArea(pictureBytes: pictureBytes);
        });
  }
}
