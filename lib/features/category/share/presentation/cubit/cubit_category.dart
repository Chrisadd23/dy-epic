import 'package:app_flutter_produkt_bestellen/core/domain/use_case/use_case_get_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/data/model/category_product_model.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/use_case_get_category_product/change_attributes_from_product_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/use_case_get_category_product/use_case_get_category_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCategory extends Cubit<StateCategory> {
  CubitCategory(
    this._useCaseGetCategoryProduct,
    this._useCaseGetPictures,
    this._useCaseChangeAttributesFromProduct,
  ) : super(const StateCategory.loading());

  final UseCaseGetCategoryProduct _useCaseGetCategoryProduct;
  final UseCaseGetPicture _useCaseGetPictures;
  final UseCaseChangeAttributesFromProduct _useCaseChangeAttributesFromProduct;

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

      final categoryEntityPicturePath =
          getCategoryEntityPicturePath(categoryEntityList: categoryEntityList);
      await _useCaseGetPictures(fileNames: categoryEntityPicturePath);

      emit(
        StateCategory.success(categoryEntityList: categoryEntityList),
      );
    });
  }

  void replaceProductAttributes({required CategoryProductModel categoryModel}) {
    debugPrint("replaceProductAttributes");
    final newCategoryProductList =
        _useCaseChangeAttributesFromProduct(categoryModel: categoryModel);

    state.mapOrNull(
      success: (successState) {
        debugPrint("emit new state with => $newCategoryProductList");
        emit(
          successState.copyWith(categoryEntityList: newCategoryProductList),
        );
      },
    );
  }

  @protected
  List<String> getCategoryEntityPicturePath(
      {required List<CategoryEntity> categoryEntityList}) {
    return categoryEntityList.fold(<String>[],
        (previousElement, currentElement) {
      previousElement.add(
        "product_${currentElement.productNumber}",
      );
      return previousElement;
    });
  }
}
