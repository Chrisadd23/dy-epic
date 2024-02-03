import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/presentation/cubit/cubit_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_order_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_picture_area.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_product_counter.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_product_info.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_product_title.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageConferenceChairProduct extends StatelessWidget {
  const PageConferenceChairProduct({super.key, this.product, this.recordOrder});

  final String? product;
  final ({ChosenProduct chosenProduct, int index})? recordOrder;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocShoppingBasket>.value(
        value: getIt<BlocShoppingBasket>(),
        child: _BlocProviderConferenceChair(
          product: product,
          recordOrder: recordOrder,
        ));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('product', product));
    properties.add(
        DiagnosticsProperty<({ChosenProduct chosenProduct, int index})?>(
            'recordOrder', recordOrder));
  }
}

class _BlocProviderConferenceChair extends StatelessWidget {
  const _BlocProviderConferenceChair({this.product, this.recordOrder});

  final String? product;
  final ({ChosenProduct chosenProduct, int index})? recordOrder;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: MultiBlocProvider(providers: [
        BlocProvider<CubitProduct>.value(
          value: getIt<CubitConferenceChairProduct>()
            ..load(product: product, recordOrder: recordOrder),
        ),
      ], child: const _ConferenceChairBlocBuilder()),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('product', product));
    properties.add(
        DiagnosticsProperty<({ChosenProduct chosenProduct, int index})?>(
            'recordOrder', recordOrder));
  }
}

class _ConferenceChairBlocBuilder extends StatelessWidget {
  const _ConferenceChairBlocBuilder();

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
                    debugPrint("productAttributes => $state");
                    return WidgetProductInfo(
                      productInfo: state.product?.attributes,
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
        const WidgetOrderProduct(),
        const DialogShoppingBasket(),
      ],
    );
  }
}

class _ProductPicture extends StatelessWidget {
  const _ProductPicture();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitProduct, StateProduct>(builder: (context, state) {
      return WidgetPictureArea(pictureBytes: state.product?.pictureBytes);
    });
  }
}
