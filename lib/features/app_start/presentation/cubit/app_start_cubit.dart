import 'package:app_flutter_produkt_bestellen/features/app_start/presentation/cubit/app_start_state.dart';
import 'package:bloc/bloc.dart';

class AppStartCubit extends Cubit<AppStartState> {
  AppStartCubit() : super(const AppStartState.initialize());

  Future<void> start() async {
    Future.delayed(
        const Duration(seconds: 2), () => emit(const AppStartState.success()));
  }
}
