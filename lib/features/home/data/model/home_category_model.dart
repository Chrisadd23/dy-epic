import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_category_model.freezed.dart';

@freezed
abstract class HomeCategoryModel with _$HomeCategoryModel {
  const factory HomeCategoryModel(
      {required String title,
      required String imgPath,
      required String navigation,
      required int indexPositon}) = _HomeCategoryModel;
}
