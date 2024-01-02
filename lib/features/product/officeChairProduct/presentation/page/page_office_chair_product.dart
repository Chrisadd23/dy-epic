import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/presentation/cubit/cubit_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/presentation/cubit/state_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageOfficeChairProduct extends StatelessWidget {
  const PageOfficeChairProduct({super.key, required this.product});

  final String product;

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: BlocProvider<CubitOfficeChairProduct>(
        create: (BuildContext context) =>
            getIt<CubitOfficeChairProduct>()..load(product: product),
        child: BlocBuilder<CubitOfficeChairProduct, StateProduct>(
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
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('product', product));
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
        child: BlocSelector<CubitOfficeChairProduct,
                StateProduct<StateOfficeChairProduct>, String?>(
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
