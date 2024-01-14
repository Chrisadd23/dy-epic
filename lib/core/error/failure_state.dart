import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_state.freezed.dart';

@freezed
class FailureState extends Failure with _$FailureState {
  const FailureState._();

  @override
  // TODO: implement props
  List<Object?> get props =>
      [const FailureState.message(), const FailureState.databaseError()];

  const factory FailureState.message([String? message]) = FailureMessage;

  const factory FailureState.databaseError([String? message]) = DatabaseError;
}
