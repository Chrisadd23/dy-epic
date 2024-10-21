import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_process_state.freezed.dart';

@freezed
class OrderProcessState with _$OrderProcessState {
  const factory OrderProcessState({
    required EnumOrderProcess orderProcess,
    required bool isInProcess,
    Failure? failure,
  }) = _OrderProcessState;
}
