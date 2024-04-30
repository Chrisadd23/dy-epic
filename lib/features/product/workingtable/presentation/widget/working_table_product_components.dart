library my_product_widget;

import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_order_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_picture_area.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_product_counter.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_product_info.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/widget/widget_product_title.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/entity/entity_product_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'color_product_widget.dart';
part 'size_product_widget.dart';

class WorkingTableProductComponents extends HookWidget {
  const WorkingTableProductComponents(
      {super.key, this.product, this.color, this.recordOrder});

  final String? product;
  final String? color;
  final ({ChosenProduct chosenProduct, int index})? recordOrder;

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
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      const WidgetProductTitle(),
                      const SizedBox(
                        height: 10,
                      ),
                      const _ProductPicture(),
                      const SizedBox(
                        height: 15,
                      ),
                      const WidgetProductCounter(),
                      const SizedBox(
                        height: 15,
                      ),
                      ColorProductWidget(expandMenu: expandMenu),
                      const SizedBox(
                        height: 15,
                      ),
                      SizeProductWidget(expandMenu: expandMenu),
                      BlocSelector<CubitProduct, StateProduct, List<String>>(
                          selector: (state) =>
                              state.productEntity?.attributes ?? [],
                          builder: (context, productInfo) {
                            return WidgetProductInfo(productInfo: productInfo);
                          })
                    ],
                  ),
                ),
              ),
            ),
          ),
          const WidgetOrderProduct(),
          const DialogShoppingBasket(),
        ],
      ),
    );
  }
}

class _ProductPicture extends StatelessWidget {
  const _ProductPicture();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CubitProduct, StateProduct, EntityGestell?>(
        selector: (state) => state.productEntity
            ?.workingTableAdditionalAttributes?.selectedEntityGestell,
        builder: (context, state) {
          debugPrint("pictureByte Widget ===> $state}");
          return WidgetPictureArea(pictureBytes: state?.pictureBytes);
        });
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
            selector: (state) => state.productEntity?.name,
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

  final EntityBreiteUndTiefe? breiteXTiefe;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    debugPrint("BreiteXTiefe Widget");
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
}

// ===========> change Color from Dialog
class ColorWidget extends StatelessWidget {
  const ColorWidget({
    super.key,
    required this.color,
    this.onTap,
  });

  final Color? color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    debugPrint('ColorWidget');
    return InkWell(
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
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);

    properties.add(ColorProperty('color', color));
    properties.add(ObjectFlagProperty<VoidCallback>.has('onTap', onTap));
  }
}
