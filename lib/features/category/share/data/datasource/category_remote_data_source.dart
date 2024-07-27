import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/flavor.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/data/model/category_product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

abstract class CategoryRemoteDataSource {
  Future<Either<Failure, List<CategoryProductModel>>> getProductData() async {
    try {
      final categoryProductModelList = await collection.get().then(
            (querySnapshot) => querySnapshot.docs
                .where((documentSnapshot) {
                  return documentSnapshot.id != 'additionalAttributes';
                })
                .map(
                  (product) => CategoryProductModel.fromJson(
                    product.data(),
                  ),
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
  CollectionReference<Map<String, dynamic>> get collection =>
      FirebaseFirestore.instance
          .collection('Product')
          .doc(AppConfig.productDocumentId)
          .collection(categoryCollectionName);

  String get categoryCollectionName;
}
