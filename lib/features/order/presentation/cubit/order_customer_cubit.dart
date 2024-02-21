import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class OrderCustomerCubit extends Cubit<OrderCustomerState> {
  OrderCustomerCubit() : super(const OrderCustomerState.loading());

  Future<void> load({String? customerNumber});

  List<ProductInformation> getListProductInformation(orderMap) {
    final List<ProductInformation> orderList =
        orderMap.map<ProductInformation>((order) {
      return ProductInformation(
          count: int.parse(order['count'].toString()),
          price: double.parse(order['price'].toString()),
          productNumber: order['productNumber'],
          productTitle: order['productName']);
    }).toList();
    return orderList;
  }

  void sortOrder({EnumSortProductOrder? sortType}) {
    state.mapOrNull(success: (successState) {
      var newList = List<ProductOrder>.from(successState.orderList ?? []);
      switch (sortType) {
        case null:
        case EnumSortProductOrder.sortDate:
          newList.sort((a, b) => b.date.compareTo(a.date));
          newList = newList.map((e) => e.copyWith(hide: false)).toList();
          return emit(successState.copyWith(orderList: newList));
        case EnumSortProductOrder.sortPrice:
          newList.sort((a, b) {
            int compare = a.enumOrderProcess.sortIndex
                .compareTo(b.enumOrderProcess.index);
            if (compare != 0) {
              return compare;
            }
            return a.amount.compareTo(b.amount);
          });
          newList = newList.map((e) => e.copyWith(hide: false)).toList();
          return emit(successState.copyWith(orderList: newList));

        case EnumSortProductOrder.sortInWork:
          newList.sort((a, b) {
            final equal = b.enumOrderProcess.sortIndex
                .compareTo(a.enumOrderProcess.sortIndex);
            if (equal != 0) {
              return equal;
            }
            final dateEqual = b.date.compareTo(a.date);
            if (dateEqual != 0) {
              return dateEqual;
            }
            return b.amount.compareTo(a.amount);
          });
          newList = newList
              .map((e) => e.copyWith(
                  hide: e.enumOrderProcess != EnumOrderProcess.inWork))
              .toList();
        case EnumSortProductOrder.sortFinished:
          newList.sort((a, b) {
            final equal = b.enumOrderProcess.sortIndex
                .compareTo(a.enumOrderProcess.sortIndex);
            if (equal != 0) {
              return equal;
            }
            final dateEqual = b.date.compareTo(a.date);
            if (dateEqual != 0) {
              return dateEqual;
            }
            return b.amount.compareTo(a.amount);
          });
          newList = newList
              .map((e) => e.copyWith(
                  hide: e.enumOrderProcess != EnumOrderProcess.finished))
              .toList();
        case EnumSortProductOrder.sortCanceled:
          newList.sort((a, b) {
            final equal = b.enumOrderProcess.sortIndex
                .compareTo(a.enumOrderProcess.sortIndex);
            if (equal != 0) {
              return equal;
            }
            final dateEqual = b.date.compareTo(a.date);
            if (dateEqual != 0) {
              return dateEqual;
            }
            return b.amount.compareTo(a.amount);
          });
          newList = newList
              .map((e) => e.copyWith(
                  hide: !(e.enumOrderProcess ==
                          EnumOrderProcess.canceledByAdmin ||
                      e.enumOrderProcess ==
                          EnumOrderProcess.canceledByCustomer)))
              .toList();
          break;
      }
      emit(successState.copyWith(orderList: newList));
    });
  }

  EnumOrderProcess getEnumOrderProcess({required Map<String, dynamic> data}) {
    if (data['inWork']) {
      return EnumOrderProcess.inWork;
    }
    if (data['finished']) {
      return EnumOrderProcess.finished;
    }
    if (data['canceledByAdmin']) {
      return EnumOrderProcess.canceledByAdmin;
    } else {
      return EnumOrderProcess.canceledByCustomer;
    }
  }
}
