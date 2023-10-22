import 'dart:async';

import 'package:app_flutter_produkt_bestellen/features/products/presentation/cubit/state_product.dart';
import 'package:bloc/bloc.dart';

class CubitProduct extends Cubit<StateProduct> {
  CubitProduct(super.initialState);

  Timer? _timer;

  void increment() async {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      emit(state.copyWith(productOrderCount: state.productOrderCount + 1));
    });
  }

  void decrement() async {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      emit(state.copyWith(
          productOrderCount: state.productOrderCount > 0
              ? state.productOrderCount - 1
              : state.productOrderCount));
    });
  }

  void stopCounting() => _timer?.cancel();

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
