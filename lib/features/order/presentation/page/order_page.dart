import 'package:app_flutter_produkt_bestellen/core/extension/date_time_extension.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_state.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dateTime = DateTime.now();
    return BlocProvider(
      create: (context) => getIt<OrderCubit>(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.orangeF6A440),
                    child: FittedBox(
                      child: Text(
                        'Bestellungen',
                        style: AppTextStyle.colorWhiteSize20ShadowBlack,
                      ),
                    ),
                  ),
                ),
                BlocSelector<OrderCubit, OrderCustomerState, int>(
                    selector: (state) => state.orderList.length,
                    builder: (context, state) {
                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, right: 30, bottom: 40),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(30)),
                            child: ListView.builder(
                                itemCount: state,
                                itemBuilder: (context, index) =>
                                    _OrderInfoWidget(
                                      dateTime: dateTime,
                                      index: index,
                                    )),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
          const DialogShoppingBasket()
        ],
      ),
    );
  }
}

class _OrderInfoWidget extends StatelessWidget {
  const _OrderInfoWidget({
    required this.index,
    required this.dateTime,
  });

  final int index;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<OrderCubit, OrderCustomerState, Order>(
        selector: (state) => state.orderList[index],
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all()),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: FittedBox(
                      child: Text(
                        "Bestellnummer",
                        style: TextStyle(
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
                            border: const Border(
                                bottom: BorderSide(), top: BorderSide()),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              dateTime.onlyDateInString,
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
                                .createShader(Rect.fromLTRB(rect.left, rect.top,
                                    rect.right, rect.bottom));
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: const Border(
                                  bottom: BorderSide(), top: BorderSide()),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                'Gesamtpreis',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: FittedBox(
                      child: Text(
                        "Bestellung wird bearbeitet",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<DateTime>('dateTime', dateTime));
    properties.add(IntProperty('index', index));
  }
}
