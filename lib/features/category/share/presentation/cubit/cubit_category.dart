import 'package:app_flutter_produkt_bestellen/core/domain/use_case/use_case_get_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/use_case_get_category_product/use_case_get_category_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCategory extends Cubit<StateCategory> {
  CubitCategory(
    this._useCaseGetCategoryProduct,
    this._useCaseGetPictures,
  ) : super(const StateCategory.loading());

  final UseCaseGetCategoryProduct _useCaseGetCategoryProduct;
  final UseCaseGetPictures _useCaseGetPictures;

  Future<void> load() async {
    if (state != const StateCategory.loading()) {
      emit(const StateCategory.loading());
    }

    final getCategoryProduct = await _useCaseGetCategoryProduct();

    getCategoryProduct.fold((failure) {
      debugPrint(failure.toString());
      emit(StateCategory.failure(failure: failure));
    }, (categoryEntityList) async {
      debugPrint(categoryEntityList.toString());
      categoryEntityList = categoryEntityList.map((entity) {
        return entity.pricePerSize == null
            ? entity
            : entity.copyWith(
                pricePerSize: List.of(entity.pricePerSize!)
                  ..sort((a, b) =>
                      double.parse(a.price).compareTo(double.parse(b.price))));
      }).toList();

      try {
        final categoryEntityPicturePath = getCategoryEntityPicturePath(
            categoryEntityList: categoryEntityList);
        await _useCaseGetPictures(fileNames: categoryEntityPicturePath);
      } catch (error) {
        debugPrint(
            "pictures couldn't be loaded | error ==> ${error.toString()}");
      }

      emit(
        StateCategory.success(categoryEntityList: categoryEntityList),
      );
    });
  }

  @protected
  List<String> getCategoryEntityPicturePath(
      {required List<CategoryEntity> categoryEntityList}) {
    return categoryEntityList.fold(<String>[],
        (previousElement, currentElement) {
      previousElement.add(
        "product_${currentElement.productNumber}.png",
      );
      return previousElement;
    });
  }
}
