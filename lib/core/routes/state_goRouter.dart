import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'state_goRouter.freezed.dart';

@freezed
class StateGoRouter with _$StateGoRouter {
  const factory StateGoRouter({
    required GoRouter goRouter,
    required String location,
  }) = _StateGoRouter;
}
