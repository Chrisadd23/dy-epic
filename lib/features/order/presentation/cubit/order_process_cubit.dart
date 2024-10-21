import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/use_case/update_order_status_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_process_state.dart';
import 'package:bloc/bloc.dart';

class OrderProcessCubit extends Cubit<OrderProcessState> {
  OrderProcessCubit(this._orderStatusUseCase)
      : super(const OrderProcessState(
            orderProcess: EnumOrderProcess.created, isInProcess: false));

  final UpdateOrderStatusUseCase _orderStatusUseCase;

  void setProcess({required EnumOrderProcess orderProcess}) {
    emit(state.copyWith(orderProcess: orderProcess));
  }

  Future<void> changeOrderProcess(
      {required EnumOrderProcess orderProcess, required String orderId}) async {
    emit(state.copyWith(isInProcess: true, failure: null));
    final response =
        await _orderStatusUseCase(orderProcess: orderProcess, orderID: orderId);
    response.fold(
        (failure) => emit(state.copyWith(isInProcess: false, failure: failure)),
        (success) => emit(
            state.copyWith(orderProcess: orderProcess, isInProcess: false)));
  }
}
