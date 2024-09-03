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
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
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

class _OrderBlocProvider extends StatelessWidget {
  const _OrderBlocProvider();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
        builder: (context, loginState) => loginState.maybeMap(
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: _DropDownButton2(),
                            ),
                            Expanded(child: _OrderInfoWidget()),
                          ],
                        ),
                      ),
                      _ShoppingBasketHideProcess(),
                    ],
                  ),
                )));
  }
}

class _ShoppingBasketHideProcess extends StatelessWidget {
  const _ShoppingBasketHideProcess();

  @override
  Widget build(BuildContext context) {
    final currentSortType = context.watch<OrderCubit>().state.currentSortType;
    return currentSortType != null &&
            currentSortType != EnumSortProductOrder.search
        ? const DialogShoppingBasket()
        : Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.055),
            child: const DialogShoppingBasket(),
          );
  }
}

class _DropDownButton2 extends HookWidget {
  const _DropDownButton2();

  @override
  Widget build(BuildContext context) {
    final searchTextEditingController = useTextEditingController();
    return BlocSelector<OrderCubit, OrderCustomerState, EnumSortProductOrder?>(
        selector: (orderState) => orderState.currentSortType,
        builder: (context, sortType) {
          debugPrint("widgetSortType => $sortType");
          return Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
              right: 30,
            ),
            child: _ShoppingBasketBlocSelector(
                sortType: sortType,
                searchTextEditingController: searchTextEditingController),
          );
        });
  }
}

class _ShoppingBasketBlocSelector extends StatelessWidget {
  const _ShoppingBasketBlocSelector({
    required this.searchTextEditingController,
    this.sortType,
  });

  final TextEditingController searchTextEditingController;
  final EnumSortProductOrder? sortType;

  @override
  Widget build(BuildContext context) {
    final isShoppingBasketEmpty =
        context.watch<BlocShoppingBasket>().state.isEmpty;
    return Row(
      children: [
        if (sortType != EnumSortProductOrder.search)
          if (isShoppingBasketEmpty) ...[
            const Spacer(),
            const _DropDownButton2Container(),
            Expanded(
              child: _SearchIconContainer(
                isShoppingBasketEmpty: isShoppingBasketEmpty,
                sortType: sortType,
                searchTextEditingController: searchTextEditingController,
              ),
            ),
          ] else ...[
            Expanded(
              child: _SearchIconContainer(
                isShoppingBasketEmpty: isShoppingBasketEmpty,
                sortType: sortType,
                searchTextEditingController: searchTextEditingController,
              ),
            ),
            const _DropDownButton2Container(),
            const Spacer()
          ]
        else if (isShoppingBasketEmpty) ...[
          const Spacer(),
          _TextFieldContainer(
              searchTextEditingController: searchTextEditingController),
          const Spacer(),
          _SearchIconContainer(
              isShoppingBasketEmpty: isShoppingBasketEmpty,
              sortType: sortType,
              searchTextEditingController: searchTextEditingController)
        ] else ...[
          _SearchIconContainer(
              isShoppingBasketEmpty: isShoppingBasketEmpty,
              sortType: sortType,
              searchTextEditingController: searchTextEditingController),
          const Spacer(),
          _TextFieldContainer(
              searchTextEditingController: searchTextEditingController),
          const Spacer(),
        ]
      ],
    );
  }
}

class _SearchIconContainer extends StatelessWidget {
  const _SearchIconContainer({
    this.sortType,
    required this.searchTextEditingController,
    required this.isShoppingBasketEmpty,
  });

  final bool isShoppingBasketEmpty;
  final EnumSortProductOrder? sortType;
  final TextEditingController searchTextEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:
          isShoppingBasketEmpty ? Alignment.centerRight : Alignment.centerLeft,
      child: InkWell(
        onTap: () {
          searchTextEditingController.clear();
          if (context.read<OrderCubit>().state.areAllHiddenOrDoNotExist) {
            if (sortType == EnumSortProductOrder.search) {
              context
                  .read<OrderCubit>()
                  .sortOrder(sortType: EnumSortProductOrder.sortDate);
            } else {
              context
                  .read<OrderCubit>()
                  .sortOrder(sortType: EnumSortProductOrder.search);
            }
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
        color: Colors.white,
      ),
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
  const _DropDownButton2Container();

  @override
  Widget build(BuildContext context) {
    final dropDownComponents = EnumSortProductOrder.values.toList()
      ..removeWhere((element) =>
          element == EnumSortProductOrder.search ||
          element == EnumSortProductOrder.none);
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
            color: AppColors.whiteD6D6D7,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
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
      builder: (context, state) => state.maybeMap(
        orElse: () => const LoadingWidget(),
        failure: (failureState) =>
            FailureWidget(failure: failureState.failure.getFailureMessage),
        success: (successState) {
          if (successState.orderList == null ||
              successState.orderList!.isEmpty) {
            return const NoOrderExistInformationContainer(
                informationText: 'Es sind keine Bestellungen vorhanden.');
          } else if (successState.areAllHiddenOrDoNotExist) {
            return const NoOrderExistInformationContainer(
                informationText:
                    'Es sind keine Bestellungen dieser Art vorhanden.');
          } else {
            return Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
                right: 30,
              ),
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(30)),
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
                              productOrder: successState.orderList![index],
                              category: 'Bestellung',
                            ),
                          ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
