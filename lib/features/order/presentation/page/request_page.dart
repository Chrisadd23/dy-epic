import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/failure_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_request_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_state.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>.value(
      value: getIt<LoginCubit>(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return _RequestBlocProvider(
              customerNumber: state.mapOrNull(
                  loggedIn: (loggedIn) =>
                      loggedIn.entityLoginCustomer.customerNumber));
        },
      ),
    );
  }
}

class _RequestBlocProvider extends StatelessWidget {
  const _RequestBlocProvider({
    this.customerNumber,
  });

  final String? customerNumber;

  @override
  Widget build(BuildContext context) {
    debugPrint("contains BlocProvider");
    return BlocProvider<OrderRequestCubit>(
        create: (context) =>
            getIt<OrderRequestCubit>()..load(customerNumber: customerNumber),
        child: BlocBuilder<OrderRequestCubit, OrderCustomerState>(
          builder: (context, state) => state.map(
              loading: (loading) => const LoadingWidget(),
              success: (success) => Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Container(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.orangeF6A440),
                                child: FittedBox(
                                  child: Text(
                                    "Anfragen",
                                    style: AppTextStyle
                                        .colorWhiteSize20ShadowBlack,
                                  ),
                                ),
                              ),
                            ),
                            const SingleChildScrollView(
                              child: Column(
                                children: [Text("test")],
                              ),
                            )
                          ],
                        ),
                      ),
                      const DialogShoppingBasket()
                    ],
                  ),
              failure: (failure) => FailureWidget(
                  failure: failure.failure.when(
                      message: (message) => message ?? '',
                      databaseError: (databaseError) => databaseError ?? ''))),
        ));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('customerNumber', customerNumber));
  }
}
