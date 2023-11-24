library my_product_widget;

import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/functions/global_functions.dart';
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
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          const ProductTitle(),
          const ProductPicture(),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.04),
                child: const CounterProductWidget(),
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
          child: picturePath == null
              ? LoadingWidget(
                  firstWidth: MediaQuery.of(context).size.width * 0.5,
                  secondWidth: MediaQuery.of(context).size.width * 0.3,
                )
              : Image.asset(
                  picturePath!,
                  fit: BoxFit.fitHeight,
                ),
        ),
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
                );
              }),
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
                      ColorProductWidget(scrollConstraints: scrollConstraints),
                      SizeProductWidget(scrollConstraints: scrollConstraints),
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
