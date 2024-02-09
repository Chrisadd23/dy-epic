import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_request_cubit.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

abstract class OrderDependencies {
  static void setUp() {
    //Cubit
    getIt.registerFactory<OrderCubit>(() => OrderCubit());

    getIt.registerFactory<OrderRequestCubit>(() => OrderRequestCubit());
  }
}
