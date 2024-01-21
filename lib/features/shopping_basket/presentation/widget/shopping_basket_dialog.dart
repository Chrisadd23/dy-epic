import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_offer_list.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class DialogShoppingBasket extends StatelessWidget {
  const DialogShoppingBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocShoppingBasket, StateShoppingBasket>(
      builder: (context, state) => state.listChosenProduct.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return const _ShoppingBasketStack();
                    }),
                  ),
                  onTap: () async {
                    debugPrint("onTap");
                    final result =
                        await _ShoppingBasketDialog.show(context: context);
                    if (context.mounted && result != null) {
                      context.read<CubitProduct>().changeProduct(
                          order: result.order, index: result.index);
                    }
                  },
                ),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}

class _ShoppingBasketStack extends StatelessWidget {
  const _ShoppingBasketStack();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: SvgPicture.asset(Assets.appComponents.svg.shoppingBasket),
            )),
        Align(
            alignment: Alignment.bottomCenter,
            child: FittedBox(
              fit: BoxFit.fill,
              child: BlocBuilder<BlocShoppingBasket, StateShoppingBasket>(
                  builder: (context, state) {
                return Text(
                  state.listChosenProduct.length.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      shadows: [
                        BoxShadow(offset: Offset(0, 1)),
                        BoxShadow(offset: Offset(0, -1)),
                        BoxShadow(offset: Offset(1, 0)),
                        BoxShadow(offset: Offset(-1, 0)),
                      ],
                      color: Colors.white),
                );
              }),
            ))
      ],
    );
  }
}

//Start with Bloc logic
class _ShoppingBasketDialog extends StatelessWidget {
  const _ShoppingBasketDialog._();

  static show({required BuildContext context}) => showDialog(
      context: context, builder: (_) => const _ShoppingBasketDialog._());

  @override
  Widget build(BuildContext previosContext) {
    return BlocProvider<BlocShoppingBasket>.value(
        value: getIt<BlocShoppingBasket>(),
        child: const _ShoppingBasketWidget());
  }
}

class _ShoppingBasketWidget extends StatelessWidget {
  const _ShoppingBasketWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.1,
          vertical: MediaQuery.sizeOf(context).height * 0.1),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
            color: AppColors.greyCACACA),
        child: const ShoppingBasketOfferList(),
      ),
    );
  }
}
