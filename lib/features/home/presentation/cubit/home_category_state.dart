import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/home/data/model/home_category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_category_state.freezed.dart';

@freezed
abstract class HomeCategoryState with _$HomeCategoryState {
  const HomeCategoryState._();

  const factory HomeCategoryState.loading() = _Loading;

  const factory HomeCategoryState.success(
      {required List<HomeCategoryModel> homeCategoryList}) = _Success;

  const factory HomeCategoryState.failure(Failure failure) = _Failure;
}
