library office_chair_product;

import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/presentation/cubit/cubit_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/presentation/cubit/state_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part '../widget/widget_product_counter.dart';

class PageOfficeChairProduct extends StatelessWidget {
  const PageOfficeChairProduct({super.key, required this.product});

  final String product;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: MultiBlocProvider(
        providers: [
          BlocProvider<CubitProduct>.value(
              value: getIt<CubitOfficeChairProduct>()..load(product: product)),
          BlocProvider<CubitOfficeChairProduct>.value(
              value: getIt<CubitOfficeChairProduct>()),
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
        success: (_) => SizedBox(
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
    return const Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              ProductTitle(),
              _ProductPicture(),
              CounterOfficeChairWidget(),
            ],
          ),
        ),
      ],
    );
  }
}

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.05,
        width: MediaQuery.sizeOf(context).width * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.grey8D8D8E.withOpacity(0.4)),
        child: BlocSelector<CubitProduct, StateProduct, String?>(
            selector: (state) => state.maybeMap(
                orElse: () => null,
                success: (product) => product.product?.name),
            builder: (context, productName) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: productName == null
                      ? const LoadingWidget()
                      : Text(
                          productName,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    color: Colors.black, offset: Offset(1, 1)),
                                Shadow(
                                    color: Colors.black, offset: Offset(-1, 1)),
                                Shadow(
                                    color: Colors.black,
                                    offset: Offset(-1, -1)),
                                Shadow(
                                    color: Colors.black, offset: Offset(1, -1)),
                              ]),
                        ),
                ),
              );
            }),
      ),
    );
  }
}

class _ProductPicture extends StatelessWidget {
  const _ProductPicture();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CubitProduct, StateProduct, String?>(
        selector: (state) => state.maybeMap(
            orElse: () {
              return;
            },
            success: (product) => product
                .selectedCharacteristics[EnumOfficeChairProduct.picturePath]),
        builder: (context, picturePath) {
          return _PictureWidget(picturePath: picturePath);
        });
  }
}

class _PictureWidget extends StatelessWidget {
  const _PictureWidget({
    required this.picturePath,
  });

  final String? picturePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: MediaQuery.sizeOf(context).height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      child: picturePath == null
          ? LoadingWidget(
              firstWidth: MediaQuery.of(context).size.width * 0.5,
              secondWidth: MediaQuery.of(context).size.width * 0.3,
            )
          : Image.asset(
              picturePath!,
              fit: BoxFit.fitHeight,
            ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);

    properties.add(StringProperty('picturePath', picturePath));
  }
}
