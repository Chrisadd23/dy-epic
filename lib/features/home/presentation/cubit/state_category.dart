import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/widget/category_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_category.freezed.dart';

@freezed
abstract class StateCategory with _$StateCategory {
  const StateCategory._();

  const factory StateCategory.loading() = _Loading;

  const factory StateCategory.success(List<CategoryWidget> listCategory) =
      _Success;

  const factory StateCategory.failure(Failure failure) = _Failure;
}
