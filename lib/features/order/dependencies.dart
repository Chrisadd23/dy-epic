import 'package:app_flutter_produkt_bestellen/features/order/data/datasource/order_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/order/data/repository/order_repository_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/repository/order_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/use_case/get_customer_order_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/use_case/get_owner_order_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/use_case/get_request_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/use_case/update_order_status_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_information_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_process_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/request_cubit.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

abstract class OrderDependencies {
  static void setUp() {
    getIt
      ..registerLazySingleton<OrderDatasource>(
          () => OrderDatasourceImplementation())
      ..registerLazySingleton<OrderRepository>(
          () => OrderRepositoryImplementation(getIt()))
      ..registerLazySingleton<GetRequestUseCase>(
          () => GetRequestUseCase(getIt()))
      ..registerLazySingleton<GetCustomerOrderUseCase>(
          () => GetCustomerOrderUseCase(getIt()))
      ..registerLazySingleton<GetOwnerOrderUseCase>(
          () => GetOwnerOrderUseCase(getIt()))
      ..registerLazySingleton<UpdateOrderStatusUseCase>(
          () => UpdateOrderStatusUseCase(getIt()))
      ..registerFactory<OrderProcessCubit>(() => OrderProcessCubit(getIt()))
      ..registerLazySingleton<OrderCubit>(
        () => OrderCubit(
          getIt(),
          getIt(),
          getIt(),
        ),
      )
      ..registerFactory<OrderInformationCubit>(
          () => OrderInformationCubit(getIt(), getIt()))
      ..registerFactory<RequestCubit>(() => RequestCubit(getIt(), getIt()));
  }
}
