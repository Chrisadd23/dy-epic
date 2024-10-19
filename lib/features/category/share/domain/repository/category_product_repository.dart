import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/data/datasource/category_remote_data_source.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/data/model/category_product_model.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

class CategoryProductRepository {
  CategoryProductRepository(this._categoryRemoteDataSource);

  final CategoryRemoteDataSource _categoryRemoteDataSource;

  List<CategoryProductModel> _listCategoryProductModel = [];

  List<CategoryProductModel> get listCategoryProductModel =>
      _listCategoryProductModel;

  Future<Either<Failure, List<CategoryEntity>>> getListCategory() async {
    if (_listCategoryProductModel.isEmpty) {
      return _categoryRemoteDataSource.getProductData().fold(
        (left) => Left(left),
        (listCategoryModel) {
          _listCategoryProductModel = listCategoryModel;
          return Right(
            listCategoryModel.map((model) => model.toEntity()).toList(),
          );
        },
      );
    } else {
      debugPrint('_listCategoryProductModel is not empty');
      return Right(
        listCategoryProductModel
            .map(
              (model) => model.toEntity(),
            )
            .toList(),
      );
    }
  }

  List<CategoryEntity> changeCategoryProduct(
      {required CategoryProductModel categoryModel}) {
    final index = _listCategoryProductModel.indexWhere((categoryProduct) =>
        categoryProduct.productNumber == categoryModel.productNumber);
    _listCategoryProductModel.replaceRange(index, index + 1, [categoryModel]);

    return listCategoryProductModel
        .map((product) => product.toEntity())
        .toList();
  }

  Future<Either<Failure, List<CategoryEntity>>> deleteProduct(
      {required String productNumber}) async {
    final productId = listCategoryProductModel
        .where(
            (productCategory) => productCategory.productNumber == productNumber)
        .first
        .id;
    return _categoryRemoteDataSource
        .deleteProduct(productId: productId)
        .fold((failure) => Left(failure), (success) {
      _listCategoryProductModel
          .removeWhere((product) => product.productNumber == productNumber);
      return Right(listCategoryProductModel
          .map((product) => product.toEntity())
          .toList());
    });
  }
}
