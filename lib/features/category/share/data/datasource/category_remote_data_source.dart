import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/flavor.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/data/model/category_product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

abstract class CategoryRemoteDataSource {
  Future<Either<Failure, List<CategoryProductModel>>> getProductData() async {
    try {
      final categoryProductModelList = await _collection.get().then(
            (querySnapshot) => querySnapshot.docs
                .where((documentSnapshot) {
                  return documentSnapshot.id != 'additionalAttributes';
                })
                .map(
                  (product) => CategoryProductModel.fromJson(
                    product.data(),
                  ).copyWith(id: product.id),
                )
                .toList(),
          );

      debugPrint(
          'categoryProductModelList ==> ${categoryProductModelList.toString()}');

      return Right(categoryProductModelList);
    } catch (error) {
      return Left(Failure.databaseError(error.toString()));
    }
  }

  @protected
  CollectionReference<Map<String, dynamic>> get _collection =>
      FirebaseFirestore.instance
          .collection('Product')
          .doc(AppConfig.productDocumentId)
          .collection(categoryCollectionName);

  String get categoryCollectionName;

  Future<Either<Failure, bool>> deleteProduct(
      {required String? productId}) async {
    try {
      debugPrint('doc id => $productId');
      await _collection.doc(productId).delete();
      return const Right(true);
    } catch (failure) {
      return Left(Failure.databaseError(failure.toString()));
    }
  }
}
