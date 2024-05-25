

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_start_state.freezed.dart';

@freezed
class AppStartState with _$AppStartState
{
  const factory AppStartState.initialize() = _Initialize;
  const factory AppStartState.success() = _Success;
  const factory AppStartState.failure({required Failure failure}) = _Failure;

}