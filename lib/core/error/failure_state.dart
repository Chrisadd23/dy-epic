import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_state.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure.message([String? message]) = _FailureMessage;

  const factory Failure.databaseError([String? databaseMessage]) =
      _DatabaseError;

  String get getFailureMessage => when(
        message: (message) => message ?? '',
        databaseError: (databaseError) => databaseError ?? '',
      );
}
