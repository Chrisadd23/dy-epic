import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCubit extends Cubit<OrderCustomerState> {
  OrderCubit() : super(const OrderCustomerState(orderList: []));
}
