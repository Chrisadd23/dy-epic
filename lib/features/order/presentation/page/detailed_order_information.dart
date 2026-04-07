import 'package:app_flutter_produkt_bestellen/core/extension/double.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/show_failure_dialog.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/data/model/order_model.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/entity/order_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_information_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_information_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_process_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_process_state.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class DetailedOrderInformation extends StatelessWidget {
  const DetailedOrderInformation(
      {super.key, required this.informationTitle, required this.orderEntity});

  final String informationTitle;
  final OrderEntity orderEntity;

  @override
  Widget build(BuildContext context) {
    debugPrint("orderEntity ==> $orderEntity");
    return MultiBlocProvider(
      providers: [
        BlocProvider<OrderInformationCubit>.value(
          value: getIt<OrderInformationCubit>()
            ..load(
                productNumbers: orderEntity.listOrderEntity
                    .map((order) => order.categoryEntity.productNumber!)
                    .toList()),
        ),
        BlocProvider<LoginCubit>.value(value: getIt<LoginCubit>()),
        BlocProvider<OrderProcessCubit>(
            create: (context) => getIt<OrderProcessCubit>()
              ..setProcess(orderProcess: orderEntity.orderProcess))
      ],
      child: Stack(
        children: [
          _OrderInformationContainer(
            informationTitle: informationTitle,
            orderEntity: orderEntity,
          ),
          const DialogShoppingBasket(),
        ],
      ),
    );
  }
}

class _OrderInformationContainer extends StatelessWidget {
  const _OrderInformationContainer({
    required this.informationTitle,
    required this.orderEntity,
  });

  final String informationTitle;
  final OrderEntity orderEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      width: double.infinity,
      child: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Text(
            informationTitle,
            style: AppTextStyle.colorBlackSize20ShadowWhite
                .copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 15,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'App Bearbeitungs ID: ',
                style: AppTextStyle.bold16,
              ),
              Text(orderEntity.id, style: AppTextStyle.regular14)
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Status:", style: AppTextStyle.bold16),
              if (context.read<LoginCubit>().state.customer?.getUserType !=
                  UserType.owner)
                Text(orderEntity.orderProcess.information)
              else
                BlocConsumer<OrderProcessCubit, OrderProcessState>(
                    listener: (context, state) {
                  if (state.failure != null) {
                    ShowFailureDialog.present(
                        context: context,
                        failure: state.failure!.getFailureMessage,
                        id: 'change_order_process_failure');
                  }
                }, builder: (context, state) {
                  return DropdownButton2(
                    items: EnumOrderProcess.values
                        .map(
                          (orderProcess) => DropdownItem(
                            value: orderProcess,
                            child: Center(
                              child: Text(
                                orderProcess.information,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    dropdownStyleData: DropdownStyleData(
                      width: 160,
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      offset: const Offset(0, -4),
                    ),
                    onChanged: (orderProcess) {
                      if (orderProcess != null) {
                        context.read<OrderProcessCubit>().changeOrderProcess(
                            orderProcess: orderProcess,
                            orderId: orderEntity.id);
                      }
                    },
                    customButton: Container(
                        height: MediaQuery.sizeOf(context).height * 0.04,
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(),
                          color: AppColors.whiteD6D6D7,
                        ),
                        child: state.isInProcess
                            ? const FittedBox(
                                child: LoadingWidget(
                                color: Colors.black,
                              ))
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: FittedBox(
                                      child: Text(
                                        context
                                            .read<OrderProcessCubit>()
                                            .state
                                            .orderProcess
                                            .information,
                                        style: AppTextStyle
                                            .colorBlackSize18ShadowWhite,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 5.0),
                                    child: Icon(Icons.arrow_drop_down_sharp),
                                  )
                                ],
                              )),
                  );
                }),
            ],
          ),
          if (orderEntity.createdDate != null) ...[
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Erstellt am:", style: AppTextStyle.bold16),
                Text(
                  '${DateFormat('HH:mm').format(orderEntity.createdDate!)} Uhr ${DateFormat('dd.MM.yyyy').format(orderEntity.createdDate!)}',
                  style: AppTextStyle.regular14,
                ),
              ],
            )
          ],
          const SizedBox(
            height: 15,
          ),
          ...orderEntity.listOrderEntity
              .map((order) => _ProductOrderInformation(order: order))
              ,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Gesamtbetrag:",
                style: AppTextStyle.bold18,
              ),
              Text(
                orderEntity.completeAmount.getCurrency(),
                style: AppTextStyle.bold22,
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}

class _ProductOrderInformation extends StatelessWidget {
  const _ProductOrderInformation({required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                  height: 100,
                  child:
                      BlocBuilder<OrderInformationCubit, OrderInformationState>(
                          builder: (context, state) {
                    return state.maybeWhen(
                        orElse: () => const LoadingWidget(),
                        success: (pictures) => Image.memory(pictures
                            .where((picture) => picture.name
                                .contains(order.categoryEntity.productNumber!))
                            .first
                            .listIntForUint8List!));
                  })),
            ),
            Expanded(
              child: Column(
                children: [
                  if (order.categoryEntity.price != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Preis:",
                          style: AppTextStyle.bold16,
                        ),
                        Text(
                          order.categoryEntity.price!.getCurrency(),
                          style: AppTextStyle.regular16,
                        ),
                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Anzahl:",
                        style: AppTextStyle.bold16,
                      ),
                      Text(order.productCount.toString(),
                          style: AppTextStyle.regular16),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            order.categoryEntity.productTitle!,
            style: AppTextStyle.bold16,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        if (order.categoryEntity.attributes.isNotEmpty)
          ...order.categoryEntity.attributes.map(
            (attribute) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.black),
                    ),
                  ),
                  Expanded(child: Text(attribute)),
                ],
              ),
            ),
          ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Kompletter Betrag:',
              style: AppTextStyle.bold16,
            ),
            Text(
              order.completeAmount.getCurrency(),
              style: AppTextStyle.regular18,
            ),
          ],
        ),
        const Divider(
          color: Colors.black,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
