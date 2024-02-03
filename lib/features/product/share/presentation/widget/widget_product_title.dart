import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WidgetProductTitle extends StatelessWidget {
  const WidgetProductTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.015,
          bottom: MediaQuery.sizeOf(context).height * 0.015),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.05,
        width: MediaQuery.sizeOf(context).width * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.grey8D8D8E.withOpacity(0.4)),
        child:
            BlocBuilder<CubitProduct, StateProduct>(builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              fit: state.product?.name == null ? BoxFit.fitHeight : BoxFit.fill,
              child: state.product?.name == null
                  ? const LoadingWidget(
                      firstWidth: 0,
                    )
                  : Text(
                      state.product!.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(color: Colors.black, offset: Offset(1, 1)),
                            Shadow(color: Colors.black, offset: Offset(-1, 1)),
                            Shadow(color: Colors.black, offset: Offset(-1, -1)),
                            Shadow(color: Colors.black, offset: Offset(1, -1)),
                          ]),
                    ),
            ),
          );
        }),
      ),
    );
  }
}
