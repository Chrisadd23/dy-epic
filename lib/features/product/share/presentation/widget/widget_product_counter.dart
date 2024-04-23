import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class WidgetProductCounter extends HookWidget {
  const WidgetProductCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.04),
        child: Container(
          decoration: const BoxDecoration(
              color: AppColors.greyC1C1C1,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              )),
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black),
                    color: AppColors.greyD7D7D7,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.greyA7A7A7,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: SvgPicture.asset(
                                  Assets.appComponents.svg.iconMinus),
                            ),
                          ),
                          onTapDown: (details) {
                            context.read<CubitProduct>().decrement();
                          },
                          onTapUp: (details) =>
                              context.read<CubitProduct>().stopCounting(),
                          onTapCancel: () =>
                              context.read<CubitProduct>().stopCounting(),
                        ),
                        InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(87, 87, 87, 0.4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: SvgPicture.asset(
                                  Assets.appComponents.svg.iconPlus),
                            ),
                          ),
                          onTapDown: (details) {
                            context.read<CubitProduct>().increment();
                          },
                          onTapUp: (details) =>
                              context.read<CubitProduct>().stopCounting(),
                          onTapCancel: () =>
                              context.read<CubitProduct>().stopCounting(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(87, 87, 87, 0.4),
                          ),
                          child: Center(
                              child:
                                  BlocSelector<CubitProduct, StateProduct, int>(
                                      selector: (state) =>
                                          state.productOrderCount,
                                      builder: (context, productCount) {
                                        debugPrint(
                                            "productCount ===>  $productCount");
                                        return FittedBox(
                                          fit: BoxFit.fill,
                                          child: Text(productCount.toString(),
                                              style: _counterTextStyle),
                                        );
                                      })),
                        ),
                      ])),
              BlocSelector<CubitProduct, StateProduct,
                  ({int count, double price})?>(
                selector: (state) => (
                  count: state.productOrderCount,
                  price: state.productEntity?.price ?? 0
                ),
                builder: (context, state) =>
                    state?.count == null || state!.count == 0
                        ? const SizedBox.shrink()
                        : Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                )),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Text(
                                  NumberFormat.currency(
                                          locale: 'de_DE',
                                          symbol: '€',
                                          decimalDigits: 2)
                                      .format(state.count * state.price)
                                      .toString(),
                                  textAlign: TextAlign.center,
                                  style: _counterTextStyle,
                                ),
                              ),
                            ),
                          ),
              )
            ],
          ),
        ));
  }

  TextStyle get _counterTextStyle => const TextStyle(
          color: Colors.black,
          fontSize: 35,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(color: Colors.white, offset: Offset(1, 1)),
            Shadow(color: Colors.white, offset: Offset(-1, 1)),
            Shadow(color: Colors.white, offset: Offset(-1, -1)),
            Shadow(color: Colors.white, offset: Offset(1, -1)),
          ]);
}
