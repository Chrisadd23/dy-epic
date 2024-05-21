import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/failure_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/request_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/widget/no_order_exist_information_container.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/widget/order_information.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>.value(
      value: getIt<LoginCubit>(),
      child: const _RequestBlocProvider(),
    );
  }
}

class _RequestBlocProvider extends HookWidget {
  const _RequestBlocProvider();

  @override
  Widget build(BuildContext context) {
    final searchTextEditingController = useTextEditingController();
    return BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) => state.maybeMap(
              orElse: () => const LoadingWidget(
                firstWidth: 0,
              ),
              failure: (failureState) => FailureWidget(
                  failure: failureState.failure.getFailureMessage),
              loggedIn: (loggedInState) => BlocProvider<RequestCubit>(
                create: (context) => getIt<RequestCubit>()
                  ..load(
                      customerNumber:
                          loggedInState.entityLoginCustomer.customerNumber),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: _DropdownButton2(
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
              ),
            ));
  }
}

class _DropdownButton2 extends StatelessWidget {
  const _DropdownButton2({required this.searchTextEditingController});

  final TextEditingController searchTextEditingController;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<RequestCubit, OrderCustomerState,
            EnumSortProductOrder?>(
        selector: (state) => state.currentSortType,
        builder: (context, sortType) {
          final dropDownComponents = EnumSortProductOrder.values.toList()
            ..removeWhere((element) =>
                element == EnumSortProductOrder.sortFinished ||
                element == EnumSortProductOrder.search ||
                element == EnumSortProductOrder.none);
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
                        searchTextEditingController:
                            searchTextEditingController),
                  )
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
            context.read<RequestCubit>().searchOrder(input: input);
          },
        ),
      ),
    );
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
          if (context.read<RequestCubit>().state.areAllHiddenOrDoNotExist) {
            context
                .read<RequestCubit>()
                .sortOrder(sortType: EnumSortProductOrder.sortDate);
          } else {
            sortType != EnumSortProductOrder.search
                ? context
                    .read<RequestCubit>()
                    .sortOrder(sortType: EnumSortProductOrder.search)
                : context
                    .read<RequestCubit>()
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
          context.read<RequestCubit>().sortOrder(sortType: sortType);
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
                padding: const EdgeInsets.only(left: 45.0),
                child: FittedBox(
                  child: Text(
                    'Anfragen',
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
    return BlocBuilder<RequestCubit, OrderCustomerState>(
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
          success: (successState) => successState.orderList == null ||
                  successState.orderList!.isEmpty
              ? const NoOrderExistInformationContainer(
                  informationText: 'Es sind keine Anfragen vorhanden.')
              : successState.areAllHiddenOrDoNotExist
                  ? const NoOrderExistInformationContainer(
                      informationText:
                          'Es sind keine Bestellung dieser Art vorhanden.')
                  : Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30, bottom: 40),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(30)),
                        child: ListView.builder(
                            itemCount: successState.orderList?.length ?? 0,
                            itemBuilder: (context, index) =>
                                successState.orderList![index].hide
                                    ? const SizedBox.shrink()
                                    : InkWell(
                                        // onTap: () => context.goNamed(
                                        //     AppGoRouter
                                        //         .detailedRequestInformation.name,
                                        //     extra: successState.orderList![index]),
                                        child: OrderInformation(
                                            productOrder:
                                                successState.orderList![index],
                                            category: 'Anfrage'),
                                      )),
                      ),
                    )),
    );
  }
}
