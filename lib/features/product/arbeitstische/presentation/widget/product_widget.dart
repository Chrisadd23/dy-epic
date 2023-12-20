library my_product_widget;

import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/cubit_workingtable_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/state_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'color_product_widget.dart';
part 'counter_product_widget.dart';
part 'order_product_widget.dart';
part 'size_product_widget.dart';

class ProductWidget extends HookWidget {
  const ProductWidget({super.key, this.product});

  final String? product;

  @override
  Widget build(BuildContext context) {
    final expandMenu = useState((color: false, txb: false));

    return GestureDetector(
      onTap: () => expandMenu.value = (color: false, txb: false),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.75,
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      const ProductTitle(),
                      const SizedBox(
                        height: 10,
                      ),
                      const ProductPicture(),
                      const SizedBox(
                        height: 15,
                      ),
                      const CounterProductWidget(),
                      const SizedBox(
                        height: 15,
                      ),
                      ColorProductWidget(expandMenu: expandMenu),
                      const SizedBox(
                        height: 15,
                      ),
                      SizeProductWidget(expandMenu: expandMenu),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
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
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CubitWorkingTableProduct,
            StateProduct<ArbeitsTischeProduct>, String?>(
        selector: (state) => state.maybeMap(
            orElse: () {
              return;
            },
            success: (product) => product.selectedCharacteristics[
                TableChangeableCharacteristics.picturePath]),
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
        child: BlocSelector<CubitWorkingTableProduct,
                StateProduct<ArbeitsTischeProduct>, String?>(
            selector: (state) => state.maybeMap(
                orElse: () => null,
                success: (product) => product.product?.name),
            builder: (context, productName) {
              return FittedBox(
                fit: BoxFit.fitHeight,
                child: productName == null
                    ? const LoadingWidget()
                    : Text(
                        productName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(color: Colors.black, offset: Offset(1, 1)),
                              Shadow(
                                  color: Colors.black, offset: Offset(-1, 1)),
                              Shadow(
                                  color: Colors.black, offset: Offset(-1, -1)),
                              Shadow(
                                  color: Colors.black, offset: Offset(1, -1)),
                            ]),
                      ),
              );
            }),
      ),
    );
  }
}

// ==========> change BreiteXTiefe from Dialog
class BreiteXTiefeWidget extends StatelessWidget {
  const BreiteXTiefeWidget({super.key, required this.breiteXTiefe, this.onTap});

  final BreiteXTiefe? breiteXTiefe;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
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
            border: Border.all(color: Colors.black, width: 2),
            color: AppColors.greyA7A7A7,
          ),
          child: FittedBox(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                  text: breiteXTiefe?.breite,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.black, offset: Offset(0.5, 0.5)),
                      Shadow(color: Colors.black, offset: Offset(-0.5, 0.5)),
                      Shadow(color: Colors.black, offset: Offset(-0.5, -0.5)),
                      Shadow(color: Colors.black, offset: Offset(0.5, -0.5)),
                    ],
                  ),
                ),
                const TextSpan(text: '\n x \n'),
                TextSpan(
                  text: breiteXTiefe?.tiefe,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.black, offset: Offset(0.5, 0.5)),
                      Shadow(color: Colors.black, offset: Offset(-0.5, 0.5)),
                      Shadow(color: Colors.black, offset: Offset(-0.5, -0.5)),
                      Shadow(color: Colors.black, offset: Offset(0.5, -0.5)),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<BreiteXTiefe>('breiteXTiefe', breiteXTiefe));
    properties.add(ObjectFlagProperty<VoidCallback>.has('onTap', onTap));
  }
}

// ===========> change Color from Dialog
class ColorWidget extends StatelessWidget {
  const ColorWidget({super.key, required this.color, this.onTap});

  final Color? color;
  final VoidCallback? onTap;

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
    properties.add(ObjectFlagProperty<VoidCallback>.has('onTap', onTap));
  }
}
