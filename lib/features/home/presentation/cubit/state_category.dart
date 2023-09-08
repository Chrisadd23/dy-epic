import 'package:freezed_annotation/freezed_annotation.dart';

import '../widget/category_widget.dart';

part 'state_category.freezed.dart';

@freezed
abstract class StateCategory with _$StateCategory {
  const StateCategory._();

  const factory StateCategory.loading() = _Loading;

  const factory StateCategory.success(List<CategoryWidget> listCategory) =
      _Succes;

  const factory StateCategory.failure() = _Failure;
}
