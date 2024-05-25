import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket//presentation/bloc/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
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
      builder: (context, state) => !state.isEmpty
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
                  onTap: () => _ShoppingBasketDialog.show(context: context),
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
                  (state.orderChosenProductList.length +
                          state.requestChosenProductList.length)
                      .toString(),
                  style: AppTextStyle.colorWhiteSize20ShadowBlack
                      .copyWith(fontWeight: FontWeight.bold),
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
      context: context,
      builder: (_) => Dialog(
          insetPadding: EdgeInsets.symmetric(
              vertical: MediaQuery.sizeOf(context).height * 0.1,
              horizontal: MediaQuery.sizeOf(context).width * 0.1),
          child: const _ShoppingBasketDialog._()));

  @override
  Widget build(BuildContext previousContext) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BlocShoppingBasket>.value(
          value: getIt<BlocShoppingBasket>(),
        ),
        BlocProvider<LoginCubit>.value(
          value: getIt<LoginCubit>(),
        ),
      ],
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
