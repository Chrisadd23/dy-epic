import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/failure_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/widget/no_order_exist_information_container.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/widget/order_information.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>.value(
        value: getIt<LoginCubit>(), child: const _OrderBlocProvider());
  }
}

class _OrderBlocProvider extends HookWidget {
  const _OrderBlocProvider();

  @override
  Widget build(BuildContext context) {
    final searchTextEditingController = useTextEditingController();
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: _DropDownButton2(
                                  searchTextEditingController:
                                      searchTextEditingController),
                            ),
                            const Expanded(child: _OrderInfoWidget()),
                          ],
                        ),
                      ),
                      const DialogShoppingBasket(),
                    ],
                  ),
                )));
  }
}

class _DropDownButton2 extends StatelessWidget {
  const _DropDownButton2({required this.searchTextEditingController});

  final TextEditingController searchTextEditingController;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<OrderCubit, OrderCustomerState, EnumSortProductOrder?>(
        selector: (state) => state.currentSortType,
        builder: (context, sortType) {
          final dropDownComponents = EnumSortProductOrder.values.toList()
            ..removeWhere((element) =>
                element == EnumSortProductOrder.search ||
                element == EnumSortProductOrder.none);
          debugPrint("widgetSortType => $sortType");
          return Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
              right: 30,
            ),
            child: Row(
              children: [
                const Spacer(),
                if (sortType != EnumSortProductOrder.search) ...[
                  _DropDownButton2Container(
                      dropDownComponents: dropDownComponents),
                  Expanded(
                      child: _SearchIconContainer(
                    sortType: sortType,
                    searchTextEditingController: searchTextEditingController,
                  )),
                ] else ...[
                  _TextFieldContainer(
                      searchTextEditingController: searchTextEditingController),
                  const Spacer(),
                  _SearchIconContainer(
                      sortType: sortType,
                      searchTextEditingController: searchTextEditingController)
                ]
              ],
            ),
          );
        });
  }
}

class _SearchIconContainer extends StatelessWidget {
  const _SearchIconContainer({
    this.sortType,
    required this.searchTextEditingController,
  });

  final EnumSortProductOrder? sortType;
  final TextEditingController searchTextEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {
          searchTextEditingController.clear();
          if (context.read<OrderCubit>().state.areAllHiddenOrDoNotExist) {
            context
                .read<OrderCubit>()
                .sortOrder(sortType: EnumSortProductOrder.sortDate);
          } else {
            sortType != EnumSortProductOrder.search
                ? context
                    .read<OrderCubit>()
                    .sortOrder(sortType: EnumSortProductOrder.search)
                : context
                    .read<OrderCubit>()
                    .sortOrder(sortType: EnumSortProductOrder.none);
          }
        },
        child: Icon(
          sortType != EnumSortProductOrder.search
              ? Icons.search
              : Icons.search_off_outlined,
          size: MediaQuery.sizeOf(context).height * 0.04,
        ),
      ),
    );
  }
}

class _TextFieldContainer extends StatelessWidget {
  const _TextFieldContainer({
    required this.searchTextEditingController,
  });

  final TextEditingController searchTextEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.04,
      width: MediaQuery.sizeOf(context).width * 0.7,
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: TextField(
          maxLength: 20,
          maxLines: 1,
          controller: searchTextEditingController,
          decoration: const InputDecoration(
              border: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              contentPadding: EdgeInsets.symmetric(vertical: 1.0)),
          style: const TextStyle(letterSpacing: 1.5),
          onChanged: (input) {
            context.read<OrderCubit>().searchOrder(input: input);
          },
        ),
      ),
    );
  }
}

class _DropDownButton2Container extends StatelessWidget {
  const _DropDownButton2Container({
    required this.dropDownComponents,
  });

  final List<EnumSortProductOrder> dropDownComponents;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: DropdownButton2(
        items: [
          ...dropDownComponents.map(
            (sortOrder) => DropdownMenuItem(
              value: sortOrder,
              child: Container(
                decoration: dropDownComponents.last != sortOrder
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
        initialise: (initialiseState) => const LoadingWidget(
          firstWidth: 0,
        ),
        loading: (loadingState) => const LoadingWidget(
          firstWidth: 0,
        ),
        success: (successState) {
          debugPrint(
              "successState areAllHiddenOrDoNotExist ==> ${successState.areAllHiddenOrDoNotExist}");
          return successState.orderList == null ||
                  successState.orderList!.isEmpty
              ? const NoOrderExistInformationContainer(
                  informationText: 'Es sind keine Bestellungen vorhanden.')
              : successState.areAllHiddenOrDoNotExist
                  ? const NoOrderExistInformationContainer(
                      informationText:
                          'Es sind keine Bestellungen dieser Art vorhanden.')
                  : Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30, bottom: 40),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(30)),
                        child: ListView.builder(
                          itemCount: successState.orderList?.length ?? 0,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: successState.orderList![index].hide
                                ? const SizedBox.shrink()
                                : InkWell(
                                    // onTap: () => context.goNamed(
                                    //     AppGoRouter
                                    //         .detailedOrderInformation.name,
                                    //     extra: successState.orderList![index]),
                                    child: OrderInformation(
                                      productOrder:
                                          successState.orderList![index],
                                      category: 'Bestellung',
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    );
        },
      ),
    );
  }
}
