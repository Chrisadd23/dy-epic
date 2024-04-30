import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/page/login_page.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/event_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

class ShoppingBasketOfferList extends StatelessWidget {
  const ShoppingBasketOfferList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocShoppingBasket, StateShoppingBasket>(
      builder: (context, state) => LayoutBuilder(
        builder: (context, constraints) => Builder(builder: (context) {
          return BlocListener<BlocShoppingBasket, StateShoppingBasket>(
              listenWhen: (_, cState) =>
                  cState.listChosenProduct.isEmpty || cState.failure != null,
              listener: (context, state) {
                if (state.failure != null) {
                  ShowFailureDialog.present(
                      context: context,
                      failure: state.failure?.when(
                              message: (message) => message ?? '',
                              databaseError: (databaseError) =>
                                  databaseError ?? '') ??
                          '');
                  if (context.mounted) {
                    context
                        .read<BlocShoppingBasket>()
                        .add(const EventShoppingBasket.deleteFailureMessage());
                  }
                } else {
                  context.pop(null);
                }
              },
              child: Column(
                children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.85,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(30)),
                      child: ListView.builder(
                        itemCount: state.listChosenProduct.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: constraints.maxWidth * 0.05,
                                vertical: constraints.maxHeight * 0.02),
                            child: _ShoppingBasketOffer(
                                constraints: constraints,
                                index: index,
                                item: state.listChosenProduct[index]),
                          );
                        },
                      ),
                    ),
                  ),
                  SendOrderButton(constraints: constraints)
                ],
              ));
        }),
      ),
    );
  }
}

class SendOrderButton extends StatelessWidget {
  const SendOrderButton({
    super.key,
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) => state.maybeMap(
        orElse: () => const SizedBox.shrink(),
        loggedIn: (loggedInState) {
          return Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth * 0.05,
                  vertical: constraints.maxHeight * 0.02),
              child: InkWell(
                onTap: () async {
                  context.read<BlocShoppingBasket>().add(
                      EventShoppingBasket.send(
                          customerNumber: loggedInState
                              .entityLoginCustomer.customerNumber));
                },
                child: Container(
                  height: constraints.maxHeight * 0.15,
                  width: constraints.maxWidth,
                  decoration: BoxDecoration(
                      color: AppColors.orangeF6A440,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all()),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Center(
                        child: Text(
                      'absenden',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
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

class _ShoppingBasketOffer extends HookWidget {
  const _ShoppingBasketOffer({
    required this.constraints,
    required this.index,
    required this.item,
  });

  final int index;
  final BoxConstraints constraints;
  final ChosenProduct item;

  @override
  Widget build(BuildContext context) {
    final expand = useState<bool>(false);
    return Stack(
      children: [
        InkWell(
          onTap: () => expand.value = !expand.value,
          child: SwipeableTile.swipeToTriggerCard(
              borderRadius: 20,
              key: Key(DateTime.now().toString()),
              direction: SwipeDirection.horizontal,
              backgroundBuilder: (context, direction, progress) {
                return direction == SwipeDirection.startToEnd
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: constraints.maxHeight * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(),
                            color: Colors.green,
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Icon(
                              Icons.create,
                              size: 40,
                            ),
                          ),
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: constraints.maxHeight * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(),
                            color: Colors.red,
                          ),
                          alignment: Alignment.centerRight,
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Icon(
                              Icons.delete,
                              size: 40,
                            ),
                          ),
                        ),
                      );
              },
              color: Colors.white,
              onSwiped: (direction) {
                if (direction == SwipeDirection.startToEnd) {
                  context
                      .read<BlocShoppingBasket>()
                      .add(EventShoppingBasket.change(position: index));
                }
                if (direction == SwipeDirection.endToStart) {
                  context
                      .read<BlocShoppingBasket>()
                      .add(EventShoppingBasket.remove(position: index));
                }
              },
              horizontalPadding: 0,
              verticalPadding: 0,
              shadow: BoxShadow(
                color: Colors.black.withOpacity(0.35),
                blurRadius: 2,
                offset: const Offset(2, 4),
              ),
              swipeThreshold: 0.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: constraints.maxHeight * 0.2,
                        child: _Offer(item: item, index: index),
                      ),
                      expand.value
                          ? _OfferInfo(item: item, constraints: constraints)
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              )),
        )
      ],
    );
  }
}

class _OfferInfo extends StatelessWidget {
  const _OfferInfo({
    required this.constraints,
    required this.item,
  });

  final BoxConstraints constraints;
  final ChosenProduct item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: [
              const Text(
                'Anzahl: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Text(
                  item.count.toString(),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: [
              const Text(
                'Preis: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Text(
                  NumberFormat.currency(
                          locale: 'de_DE', symbol: '€', decimalDigits: 2)
                      .format(item.entityProduct.price),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: [
              const Text(
                'Produktnr: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Text(
                  item.productNumber,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text(
            item.orderType.name.toUpperCase(),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class _Offer extends StatelessWidget {
  const _Offer({required this.item, required this.index});

  final ChosenProduct item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.memory(getIt<CubitPictures>()
                .state
                .entries
                .where((element) => element.key.contains(item.productNumber))
                .firstOrNull!
                .value!),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: constraints.maxHeight * 0.12,
                      horizontal: constraints.maxWidth * 0.02),
                  child: Text(
                    item.name,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
                Expanded(
                  child: Text(
                    NumberFormat.currency(
                            locale: 'de_DE', symbol: '€', decimalDigits: 2)
                        .format(item.entityProduct.price * item.count),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ],
      );
    });
  }
}
