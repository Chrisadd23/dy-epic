import 'package:app_flutter_produkt_bestellen/features/app_start/presentation/cubit/app_start_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/use_case/get_customer_with_customer_number_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/use_case/get_local_customer_number_use_case.dart';
import 'package:bloc/bloc.dart';

class AppStartCubit extends Cubit<AppStartState> {
  AppStartCubit(this._getCustomerWithCustomerNumberUseCase,
      this._getLocalCustomerNumberUseCase)
      : super(const AppStartState.initialize());

  final GetCustomerWithCustomerNumberUseCase
      _getCustomerWithCustomerNumberUseCase;

  final GetLocalCustomerNumberUseCase _getLocalCustomerNumberUseCase;

  Future<void> start() async {
    final customerNumber = _getLocalCustomerNumberUseCase();
    if (customerNumber != null) {
      await _getCustomerWithCustomerNumberUseCase(
          customerNumber: customerNumber);
    }
    Future.delayed(
        const Duration(seconds: 2), () => emit(const AppStartState.success()));
  }
}
