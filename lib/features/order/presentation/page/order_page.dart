import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/failure_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/widget/order_information.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/widget/order_information_dialog.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>.value(
        value: getIt<LoginCubit>(), child: const _OrderBlocProvider());
  }
}

class _OrderBlocProvider extends StatelessWidget {
  const _OrderBlocProvider();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) => state.maybeMap(
            orElse: () => const LoadingWidget(),
            loggedIn: (loggedInState) => BlocProvider(
                  create: (context) => getIt<OrderCubit>()
                    ..load(
                        customerNumber:
                            loggedInState.entityLoginCustomer.customerNumber),
                  child: const Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: _DropDownButton2(),
                            ),
                            _OrderInfoWidget(),
                          ],
                        ),
                      ),
                      DialogShoppingBasket()
                    ],
                  ),
                )));
  }
}

class _DropDownButton2 extends StatelessWidget {
  const _DropDownButton2();

  @override
  Widget build(BuildContext context) {
    return DropdownButton2(
      items: [
        ...EnumSortProductOrder.values.map(
          (sortOrder) => DropdownMenuItem(
            value: sortOrder,
            child: Container(
              decoration: EnumSortProductOrder.values.last != sortOrder
                  ? const BoxDecoration(
                      border: Border(bottom: BorderSide(width: 2)),
                    )
                  : null,
              child: Center(
                child: Text(sortOrder.type),
              ),
            ),
          ),
        ),
      ],
      dropdownStyleData: DropdownStyleData(
        width: 160,
        padding: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
        ),
        offset: Offset(MediaQuery.sizeOf(context).width * 0.05, -4),
      ),
      onChanged: (sortType) {
        context.read<OrderCubit>().sortOrder(sortType: sortType);
      },
      customButton: Container(
        height: MediaQuery.sizeOf(context).height * 0.04,
        width: MediaQuery.sizeOf(context).width * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.orangeF6A440),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: FittedBox(
                child: Text(
                  'Bestellungen',
                  style: AppTextStyle.colorWhiteSize20ShadowBlack,
                ),
              ),
            ),
            const Icon(Icons.arrow_drop_down_sharp)
          ],
        ),
      ),
    );
  }
}

class _OrderInfoWidget extends StatelessWidget {
  const _OrderInfoWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderCustomerState>(
      builder: (context, state) => state.map(
          failure: (failureState) => FailureWidget(
              failure: failureState.failure.when(
                  message: (message) => message ?? '',
                  databaseError: (databaseError) => databaseError ?? '')),
          loading: (loadingState) => const LoadingWidget(),
          success: (successState) => Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30, bottom: 40),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(30)),
                    child: ListView.builder(
                        itemCount: successState.orderList?.length ?? 0,
                        itemBuilder: (context, index) {
                          debugPrint("build Widget");
                          return successState.orderList == null ||
                                  successState.orderList!.isEmpty ||
                                  successState.orderList![index].hide!
                              ? const SizedBox.shrink()
                              : Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0),
                                  child: InkWell(
                                      onTap: () => OrderInformationDialog
                                          .showOrderInformationDialog(
                                              context: context,
                                              productInformationList:
                                                  successState.orderList![index]
                                                      .productInformationList),
                                      child: OrderInformation(
                                          productOrder:
                                              successState.orderList![index],
                                          category: 'Bestellung')),
                                );
                        }),
                  ),
                ),
              )),
    );
  }
}
