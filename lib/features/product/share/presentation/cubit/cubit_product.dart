import 'dart:async';

import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CubitProduct<T> extends Cubit<StateProduct> {
  CubitProduct() : super(const StateProduct.loading());

  Future<void> load({required String product}) async {}

  Timer? _timer;

  void increment() async {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      emit(state.maybeMap(
          orElse: () => const StateProduct.loading(),
          success: (productOrderCount) => productOrderCount.copyWith(
              productOrderCount: productOrderCount.productOrderCount + 1)));
    });
  }

  void decrement() async {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      emit(state.maybeMap(
          orElse: () => const StateProduct.loading(),
          success: (productOrderCount) => productOrderCount.copyWith(
              productOrderCount: productOrderCount.productOrderCount > 0
                  ? productOrderCount.productOrderCount - 1
                  : productOrderCount.productOrderCount)));
    });
  }

  void stopCounting() => _timer?.cancel();

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
