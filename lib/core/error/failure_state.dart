import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_state.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.message([String? message]) = _FailureMessage;

  const factory Failure.databaseError([String? databaseMessage]) =
      _DatabaseError;
}
