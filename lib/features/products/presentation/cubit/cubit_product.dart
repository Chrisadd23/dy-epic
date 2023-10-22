import 'dart:async';

import 'package:app_flutter_produkt_bestellen/features/products/presentation/cubit/state_product.dart';
import 'package:bloc/bloc.dart';

class CubitProduct extends Cubit<StateProduct> {
  CubitProduct(super.initialState);

  Timer? _timer;

  Future<void> increment() async =>
      emit(state.copyWith(productOrderCount: state.productOrderCount + 1));

  Future<void> decrement() async => emit(state.copyWith(
      productOrderCount: state.productOrderCount > 0
          ? state.productOrderCount - 1
          : state.productOrderCount));

  Future<void> continueIncrementCount() async {
    _timer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
      emit(state.copyWith(productOrderCount: state.productOrderCount + 1));
    });
  }

  Future<void> continueDecrementCount() async {
    _timer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
      emit(state.copyWith(
          productOrderCount: state.productOrderCount > 0
              ? state.productOrderCount - 1
              : state.productOrderCount));
    });
  }

  void ableToChangeCount() async => _timer?.cancel();

  @override
  Future<void> close() {
    // TODO: implement close
    _timer?.cancel();
    return super.close();
  }
}
