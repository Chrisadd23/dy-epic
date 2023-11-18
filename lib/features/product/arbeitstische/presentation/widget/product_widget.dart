import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/cubit_workingtable_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/state_workingtable.dart';
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
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          const ProductTitle(),
          ProductPicture(product: product),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.04),
                child: const ProductCountWidget(),
              )),
          const ProductAttributes(),
          const OrderProductWidget()
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('product', product));
  }
}

class ProductPicture extends StatelessWidget {
  const ProductPicture({
    super.key,
    required this.product,
  });

  final String? product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitWorkingTableProduct, StateWorkingTable>(
        builder: (context, state) {
      return _PictureWidget(product: product, state: state);
    });
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('product', product));
  }
}

class _PictureWidget extends StatelessWidget {
  const _PictureWidget({
    required this.product,
    required this.state,
  });

  final String? product;
  final StateWorkingTable state;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: MediaQuery.sizeOf(context).height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black),
              color: Colors.white,
            ),
            child: state.maybeMap(
              orElse: () => LoadingWidget(
                firstWidth: MediaQuery.of(context).size.width * 0.5,
                secondWidth: MediaQuery.of(context).size.width * 0.3,
              ),
              success: (product) =>
                  product.selectedWorkingTable?.picturePath == null
                      ? const Center(child: LoadingWidget())
                      : Image.asset(
                          product.selectedWorkingTable!.picturePath!,
                          fit: BoxFit.fitHeight,
                        ),
            ),
          )),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<StateWorkingTable>('state', state));
    properties.add(StringProperty('product', product));
  }
}

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015),
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.05,
          width: MediaQuery.sizeOf(context).width * 0.5,
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
      ),
    );
  }
}

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.33),
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.23,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.5,
                width: MediaQuery.sizeOf(context).width * 0.8,
                child: LayoutBuilder(builder: (context, scrollConstraints) {
                  return Column(
                    children: [
                      ProductColorWidget(scrollConstraints: scrollConstraints),
                    ],
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OrderProductWidget extends StatelessWidget {
  const OrderProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.03),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
                color: AppColors.greyD7D7D7),
            child: LayoutBuilder(builder: (context, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Container(
                      height: constraints.maxHeight * 0.8,
                      width: constraints.maxWidth * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.greyA7A7A7,
                      ),
                      child: const Center(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'bestellen',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                        color: Colors.white,
                                        offset: Offset(1, 1)),
                                    Shadow(
                                        color: Colors.white,
                                        offset: Offset(-1, 1)),
                                    Shadow(
                                        color: Colors.white,
                                        offset: Offset(-1, -1)),
                                    Shadow(
                                        color: Colors.white,
                                        offset: Offset(1, -1)),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: constraints.maxHeight * 0.8,
                      width: constraints.maxWidth * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.greyA7A7A7,
                      ),
                      child: const Center(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'anfragen',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                        color: Colors.white,
                                        offset: Offset(1, 1)),
                                    Shadow(
                                        color: Colors.white,
                                        offset: Offset(-1, 1)),
                                    Shadow(
                                        color: Colors.white,
                                        offset: Offset(-1, -1)),
                                    Shadow(
                                        color: Colors.white,
                                        offset: Offset(1, -1)),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ));
  }
}

class ProductColorWidget extends StatelessWidget {
  const ProductColorWidget({
    required this.scrollConstraints,
    super.key,
  });

  final BoxConstraints scrollConstraints;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
          width: scrollConstraints.maxWidth,
          height: scrollConstraints.maxHeight * 0.23,
          decoration: BoxDecoration(
              color: AppColors.greyC1C1C1,
              borderRadius: BorderRadius.circular(20)),
          child: LayoutBuilder(builder: (context, currentConstraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BlocBuilder<CubitWorkingTableProduct, StateWorkingTable>(
                    builder: (context, state) {
                  return Flexible(
                    child: Container(
                      height: currentConstraints.maxHeight * 0.5,
                      width: currentConstraints.maxWidth * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2),
                          color: AppColors.greyA7A7A7),
                      child: InkWell(
                        onTap: state.maybeMap(
                          orElse: () => () {},
                          success: (product) => () async {
                            debugPrint('start');
                            final colors = product.workingTables
                                ?.map((product) => product.frameColors?.color)
                                .toList();
                            debugPrint('wait => $colors');
                            if (colors != null) {
                              final color =
                                  await _showColorMenu(context, colors);
                              debugPrint('chosen color $color');
                              if (context.mounted) {
                                debugPrint('continue');
                                debugPrint('chosen color $color');
                                if (color != null) {
                                  context
                                      .read<CubitWorkingTableProduct>()
                                      .changeColor(color);
                                }
                              }
                            }
                          },
                        ),
                        child: const Center(
                            child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Text(
                              'Gestellfarbe',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                        color: Colors.black,
                                        offset: Offset(1, 1)),
                                    Shadow(
                                        color: Colors.black,
                                        offset: Offset(-1, 1)),
                                    Shadow(
                                        color: Colors.black,
                                        offset: Offset(-1, -1)),
                                    Shadow(
                                        color: Colors.black,
                                        offset: Offset(1, -1)),
                                  ]),
                            ),
                          ),
                        )),
                      ),
                    ),
                  );
                }),
                BlocBuilder<CubitWorkingTableProduct, StateWorkingTable>(
                    builder: (context, state) {
                  return Flexible(
                      child: Container(
                    height: currentConstraints.maxHeight * 0.8,
                    width: currentConstraints.maxWidth * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: state.maybeMap(
                          orElse: () =>
                              Border.all(color: Colors.black, width: 2),
                          success: (product) => null,
                        )),
                    child: state.maybeMap(
                        orElse: () => const LoadingWidget(),
                        success: (product) => ColorWidget(
                              color: product
                                  .selectedWorkingTable?.frameColors?.color,
                              onTap: () {},
                            )),
                  ));
                }),
              ],
            );
          }),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<BoxConstraints>(
        'scrollConstraints', scrollConstraints));
  }

  Future<Color?> _showColorMenu(BuildContext context, List<Color?>? colors) {
    return showDialog<Color>(
        barrierColor: Colors.transparent,
        context: context,
        builder: (context) {
          debugPrint('builder');
          return Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.1),
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.11,
                width: MediaQuery.sizeOf(context).width * 0.785,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent),
                child: Row(children: [
                  ...colors!.map((color) {
                    debugPrint('map');
                    return Flexible(
                      child: Padding(
                        padding: color == colors.last
                            ? EdgeInsets.zero
                            : const EdgeInsets.only(right: 8.0),
                        child: ColorWidget(
                            color: color,
                            onTap: () => Navigator.of(context).pop(color)),
                      ),
                    );
                  }).toList(),
                ]),
              ),
            ),
          );
        });
  }
}

// ===========> change Color from Dialog
class ColorWidget extends StatelessWidget {
  const ColorWidget({super.key, required this.color, required this.onTap});

  final Color? color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    debugPrint('ColorWidget');
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: onTap,
        child: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color: color == AppColors.black080808
                      ? Colors.white
                      : Colors.black,
                  width: 2),
              color: color,
            )),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);

    properties.add(ColorProperty('color', color));
    properties.add(DiagnosticsProperty<bool?>('dontPop', dontPop));
  }
}

class ProductCountWidget extends HookWidget {
  const ProductCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
          width: constraints.maxWidth * 0.8,
          height: constraints.maxHeight * 0.12,
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
                    width: constraints.maxWidth * 0.15,
                    height: constraints.maxHeight * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.greyA7A7A7,
                      image: DecorationImage(
                        image: AssetImage(
                            Assets.appComponents.png.vectorMinus.path),
                      ),
                    ),
                  ),
                  onTapDown: (details) {
                    context.read<CubitWorkingTableProduct>().decrement();
                  },
                  onTapUp: (details) =>
                      context.read<CubitWorkingTableProduct>().stopCounting(),
                  onTapCancel: () =>
                      context.read<CubitWorkingTableProduct>().stopCounting(),
                ),
                InkWell(
                  child: Container(
                    width: constraints.maxWidth * 0.15,
                    height: constraints.maxHeight * 0.08,
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
                    context.read<CubitWorkingTableProduct>().increment();
                  },
                  onTapUp: (details) =>
                      context.read<CubitWorkingTableProduct>().stopCounting(),
                  onTapCancel: () =>
                      context.read<CubitWorkingTableProduct>().stopCounting(),
                ),
                Container(
                  width: constraints.maxWidth * 0.35,
                  height: constraints.maxHeight * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(87, 87, 87, 0.4),
                  ),
                  child: Center(
                      child: BlocSelector<CubitWorkingTableProduct,
                              StateWorkingTable, int?>(
                          selector: (state) => state.maybeMap(
                              orElse: () => null,
                              success: (product) => product.productOrderCount),
                          builder: (context, productCount) {
                            return productCount == null
                                ? const LoadingWidget()
                                : Text(
                                    productCount.toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          Shadow(
                                              color: Colors.white,
                                              offset: Offset(1, 1)),
                                          Shadow(
                                              color: Colors.white,
                                              offset: Offset(-1, 1)),
                                          Shadow(
                                              color: Colors.white,
                                              offset: Offset(-1, -1)),
                                          Shadow(
                                              color: Colors.white,
                                              offset: Offset(1, -1)),
                                        ]),
                                  );
                          })),
                ),
              ]));
    });
  }
}
