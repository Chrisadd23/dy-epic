import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCubit extends Cubit<OrderCustomerState> {
  OrderCubit()
      : super(const OrderCustomerState(orderList: [
          Order(
              orderNumber: "1234_9",
              amount: 629.00,
              inWork: true,
              finished: false,
              canceledByAdmin: false,
              canceledByCustomer: false,
              productInformationList: [
                ProductInformation(
                    request: false,
                    count: 1,
                    price: 629,
                    productNumber: "och88be13",
                    productTitle: 'CAMIRO Hochlehner Bürodrehstuhl')
              ]),
          Order(
              orderNumber: "1234_9",
              amount: 629.00,
              inWork: true,
              finished: false,
              canceledByAdmin: false,
              canceledByCustomer: false,
              productInformationList: [
                ProductInformation(
                    request: false,
                    count: 1,
                    price: 629,
                    productNumber: "och88be13",
                    productTitle: 'CAMIRO Hochlehner Bürodrehstuhl')
              ]),
          Order(
              orderNumber: "1234_9",
              amount: 629.00,
              inWork: true,
              finished: false,
              canceledByAdmin: false,
              canceledByCustomer: false,
              productInformationList: [
                ProductInformation(
                    request: false,
                    count: 1,
                    price: 629,
                    productNumber: "och88be13",
                    productTitle: 'CAMIRO Hochlehner Bürodrehstuhl')
              ]),
          Order(
              orderNumber: "1234_9",
              amount: 629.00,
              inWork: true,
              finished: false,
              canceledByAdmin: false,
              canceledByCustomer: false,
              productInformationList: [
                ProductInformation(
                    request: false,
                    count: 1,
                    price: 629,
                    productNumber: "och88be13",
                    productTitle: 'CAMIRO Hochlehner Bürodrehstuhl')
              ]),
          Order(
              orderNumber: "1234_9",
              amount: 629.00,
              inWork: true,
              finished: false,
              canceledByAdmin: false,
              canceledByCustomer: false,
              productInformationList: [
                ProductInformation(
                    request: false,
                    count: 1,
                    price: 629,
                    productNumber: "och88be13",
                    productTitle: 'CAMIRO Hochlehner Bürodrehstuhl')
              ]),
          Order(
              orderNumber: "1234_9",
              amount: 629.00,
              inWork: true,
              finished: false,
              canceledByAdmin: false,
              canceledByCustomer: false,
              productInformationList: [
                ProductInformation(
                    request: false,
                    count: 1,
                    price: 629,
                    productNumber: "och88be13",
                    productTitle: 'CAMIRO Hochlehner Bürodrehstuhl')
              ]),
        ]));
}
