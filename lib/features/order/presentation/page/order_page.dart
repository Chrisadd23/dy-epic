import 'package:app_flutter_produkt_bestellen/core/extension/date_time_extension.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/failure_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_state.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: _DropDownButton2(),
                            ),
                            BlocBuilder<OrderCubit, OrderCustomerState>(
                              builder: (context, state) => state.map(
                                  failure: (failureState) => FailureWidget(
                                      failure: failureState.failure.when(
                                          message: (message) => message ?? '',
                                          databaseError: (databaseError) =>
                                              databaseError ?? '')),
                                  loading: (loadingState) =>
                                      const LoadingWidget(),
                                  success: (successState) => Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30.0,
                                              right: 30,
                                              bottom: 40),
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.vertical(
                                                    bottom:
                                                        Radius.circular(30)),
                                            child: ListView.builder(
                                                itemCount: successState
                                                        .orderList?.length ??
                                                    0,
                                                itemBuilder: (context, index) =>
                                                    successState.orderList ==
                                                            null
                                                        ? const SizedBox
                                                            .shrink()
                                                        : _OrderInfoWidget(
                                                            index: index,
                                                            productOrder:
                                                                successState
                                                                        .orderList![
                                                                    index],
                                                          )),
                                          ),
                                        ),
                                      )),
                            )
                          ],
                        ),
                      ),
                      const DialogShoppingBasket()
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
  const _OrderInfoWidget({
    required this.index,
    required this.productOrder,
  });

  final int index;
  final ProductOrder productOrder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all()),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: FittedBox(
                child: Text(
                  productOrder.orderNumber,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border:
                          const Border(bottom: BorderSide(), top: BorderSide()),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        productOrder.date.onlyDateInString,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ShaderMask(
                    shaderCallback: (rect) {
                      return const LinearGradient(
                              colors: [Colors.black, Colors.grey],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)
                          .createShader(Rect.fromLTRB(
                              rect.left, rect.top, rect.right, rect.bottom));
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: const Border(
                            bottom: BorderSide(), top: BorderSide()),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'de_DE',
                                  symbol: '€',
                                  decimalDigits: 2)
                              .format(productOrder.amount),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: FittedBox(
                child: Text(
                  'Bestellung ${productOrder.enumOrderProcess.information}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('index', index));
    properties
        .add(DiagnosticsProperty<ProductOrder>('productOrder', productOrder));
  }
}
