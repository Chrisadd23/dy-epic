import 'package:app_flutter_produkt_bestellen/features/category/presentation/widget/category_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'state_category.freezed.dart';

@freezed
abstract class StateCategory with _$StateCategory {
  const StateCategory._();
  const factory StateCategory.loading() = _Loading;
  const factory StateCategory.success(List<CategoryWidget> listCategory) = _Succes;
  const factory StateCategory.failure() = _Failure;

}