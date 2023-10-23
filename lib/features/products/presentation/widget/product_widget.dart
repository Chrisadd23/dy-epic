import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/features/products/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/products/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProductWidget extends HookWidget {
  const ProductWidget({super.key, this.product});

  final String? product;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Flexible(
              child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.3,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: Colors.white,
                    image: product == null
                        ? null
                        : DecorationImage(
                            image: AssetImage(product!),
                          )),
                child: product == null
                    ? const SizedBox.shrink()
                    : Image.asset(
                        product!,
                        fit: BoxFit.fitHeight,
                      ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            Container(
              height: constraints.maxHeight * 0.07,
              width: constraints.maxWidth * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.grey8D8D8E.withOpacity(0.4)),
              child: const Center(
                child: Text(
                  'Produkt',
                  style: TextStyle(
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
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            Container(
              width: constraints.maxWidth * 0.9,
              height: constraints.maxHeight * 0.15,
              decoration: BoxDecoration(
                  color: AppColors.grey8D8D8E.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20)),
              child: LayoutBuilder(builder: (context, currentConstraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: Container(
                        height: currentConstraints.maxHeight * 0.4,
                        width: currentConstraints.maxWidth * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2),
                            color: AppColors.grey8D8D8E.withOpacity(0.4)),
                        child: const Center(
                            child: Text(
                          'Farben',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
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
                        )),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: currentConstraints.maxHeight * 0.9,
                        width: currentConstraints.maxWidth * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2),
                            color: AppColors.whiteD6D6D7),
                      ),
                    ),
                  ],
                );
              }),
            ),
            const SizedBox(
              height: 30,
            ),
            const Flexible(child: ProductCountWidget()),
          ],
        ),
      );
    });
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('product', product));
  }
}

class ProductCountWidget extends HookWidget {
  const ProductCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
          width: constraints.maxWidth * 0.8,
          height: constraints.maxHeight * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(87, 87, 87, 0.1),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Flexible(
                  child: InkWell(
                    child: Container(
                      width: constraints.maxWidth * 0.15,
                      height: constraints.maxHeight * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(87, 87, 87, 0.4),
                        image: DecorationImage(
                          image: AssetImage(
                              Assets.appComponents.png.vectorMinus.path),
                        ),
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
                ),
                Flexible(
                  child: InkWell(
                    child: Container(
                      width: constraints.maxWidth * 0.15,
                      height: constraints.maxHeight * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(87, 87, 87, 0.4),
                        image: DecorationImage(
                          image: AssetImage(
                              Assets.appComponents.png.vectorPlus.path),
                        ),
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
                ),
                BlocBuilder<CubitProduct, StateProduct>(
                    builder: (context, state) {
                  return Container(
                    width: constraints.maxWidth * 0.35,
                    height: constraints.maxHeight * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(87, 87, 87, 0.4),
                    ),
                    child: Center(
                        child: Text(
                      state.productOrderCount.toString(),
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
                    )),
                  );
                }),
              ]));
    });
  }
}
