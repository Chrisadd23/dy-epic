import 'package:app_flutter_produkt_bestellen/core/extension/date_time_extension.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/entity/order_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

abstract class OrderCustomerCubit extends Cubit<OrderCustomerState> {
  OrderCustomerCubit() : super(const OrderCustomerState.initialise());

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

  //-- need to separate between created and inWork that the customer seas which order and request is inWork and which is only created yet
  void sortOrder({EnumSortProductOrder? sortType}) {
    state.mapOrNull(success: (successState) {
      if (sortType != null) {
        var newList = getSortedOrderEntity(
            listOrderEntity:
                List<OrderEntity>.from(successState.orderList ?? []),
            sortType: sortType);
        emit(successState.copyWith(orderList: newList, sortType: sortType));
      }
    });
  }

  void searchOrder({required String input}) {
    state.mapOrNull(success: (successState) {
      var newList = List<OrderEntity>.from(successState.orderList ?? []);
      newList = newList
          .map(
            (e) => e.copyWith(
              hide: !(e.id.contains(input) ||
                  NumberFormat.currency(
                          locale: 'de_DE', symbol: '€', decimalDigits: 2)
                      .format(e.completeAmount)
                      .contains(input) ||
                  DateTime.fromMillisecondsSinceEpoch(e.sendDate)
                      .onlyDateInString
                      .toString()
                      .contains(input)),
            ),
          )
          .toList();

      emit(successState.copyWith(orderList: newList));
    });
  }

  @protected
  List<OrderEntity> getSortedOrderEntity(
      {required List<OrderEntity> listOrderEntity,
      required EnumSortProductOrder sortType}) {
    debugPrint("sortType ==> $sortType");
    switch (sortType) {
      case EnumSortProductOrder.sortDate:
        listOrderEntity.sort((a, b) => b.sendDate.compareTo(a.sendDate));
        listOrderEntity =
            listOrderEntity.map((e) => e.copyWith(hide: false)).toList();
        return listOrderEntity;
      case EnumSortProductOrder.sortPrice:
        listOrderEntity.sort((a, b) {
          int compare = b.status.compareTo(a.status);
          if (compare != 0) {
            return compare;
          }
          return b.completeAmount.compareTo(a.completeAmount);
        });
        listOrderEntity =
            listOrderEntity.map((e) => e.copyWith(hide: false)).toList();
        return listOrderEntity;

      case EnumSortProductOrder.sortInWork:
        listOrderEntity.sort((a, b) {
          final equal = b.status.compareTo(a.status);
          if (equal != 0) {
            return equal;
          }
          final dateEqual = b.sendDate.compareTo(a.sendDate);
          if (dateEqual != 0) {
            return dateEqual;
          }
          return b.completeAmount.compareTo(a.completeAmount);
        });

        //
        listOrderEntity = listOrderEntity
            .map((e) =>
                e.copyWith(hide: e.status != EnumOrderProcess.inWork.sortIndex))
            .toList();
        return listOrderEntity;
      case EnumSortProductOrder.sortFinished:
        listOrderEntity.sort((a, b) {
          final dateEqual = b.sendDate.compareTo(a.sendDate);
          if (dateEqual != 0) {
            return dateEqual;
          }
          return b.completeAmount.compareTo(a.completeAmount);
        });
        listOrderEntity = listOrderEntity
            .map((e) => e.copyWith(
                hide: e.status != EnumOrderProcess.finished.sortIndex))
            .toList();
        return listOrderEntity;
      case EnumSortProductOrder.sortCanceled:
        listOrderEntity.sort((a, b) {
          final equal = b.status.compareTo(a.status);
          if (equal != 0) {
            return equal;
          }
          final dateEqual = b.sendDate.compareTo(a.sendDate);
          if (dateEqual != 0) {
            return dateEqual;
          }
          return b.completeAmount.compareTo(a.completeAmount);
        });
        listOrderEntity = listOrderEntity
            .map((e) => e.copyWith(
                hide: !(e.status ==
                        EnumOrderProcess.canceledByAdmin.sortIndex ||
                    e.status == EnumOrderProcess.canceledByCustomer.sortIndex)))
            .toList();
        return listOrderEntity;
      case EnumSortProductOrder.search:
        return listOrderEntity;
      case EnumSortProductOrder.none:
        return listOrderEntity;
    }
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
