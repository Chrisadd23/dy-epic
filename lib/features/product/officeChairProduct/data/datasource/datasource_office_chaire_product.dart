import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/presentation/cubit/cubit_choose_office_chair.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/entity/entity_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

abstract class DataSourceOfficeChairProduct {
  Future<Either<Failure, EntityOfficeChairProduct>> getOfficeChairProduct(
      {required String productNumber});
}

class DataSourceOfficeChairProductImplementation
    extends DataSourceOfficeChairProduct {
  @override
  Future<Either<Failure, EntityOfficeChairProduct>> getOfficeChairProduct(
      {required String productNumber}) async {
    try {
      final category = getIt<CubitChooseOfficeChair>().state.name;
      debugPrint("categoryName ==> $category");
      debugPrint("productNumber ===> $productNumber");
      final product = await FirebaseFirestore.instance
          .collection('Product')
          .doc('kbLDlq3ItPF7onHoQnYL')
          .collection('officeChair')
          .doc('lkO66P0vFh9C2kEaS2dR')
          .collection(category.trim())
          .where('productNumber',
              isEqualTo: productNumber.split('_')[1].split('.')[0])
          .get()
          .timeout(const Duration(seconds: 10))
          .then((querySnapshot) {
        final Map<String, dynamic>? data =
            querySnapshot.docs.firstOrNull?.data();
        debugPrint("data ===> ${data.toString()}");
        if (data != null && data['price'] != null) {
          return EntityOfficeChairProduct(
              productCategory: category == 'normal'
                  ? EnumCategoryProduct.officeChairNormal
                  : EnumCategoryProduct.officeChairHochlehner,
              name: data['productTitle'].toString(),
              price: double.parse(data['price'].toString()),
              picturePath: data['productNumber'] ?? '',
              attributes: List.from(data['attributes']),
              productNumber: data['productNumber'].toString());
        }
      });
      debugPrint("dataProduct ===> ${product.toString()}");

      if (product != null) {
        debugPrint("dataProduct success ===> ${product.toString()}");
        return Right(product);
      } else {
        return const Left(FailureState.databaseError());
      }
    } catch (e) {
      return Left(FailureState.databaseError(e.toString()));
    }
  }
}
/*

final _dummyListProductConferenceChair = [
  EntityOfficeChairProduct(
      name: 'Xenon Net Bürodrehstuhl',
      attributes: [
        'Höhen- und Tiefenverstellbare Lumbalstütze',
        'Schiebesitz',
        'Netzrückenlehne und Synchronmechanik',
        'flexible atmungsaktive Rückenlehne',
        'Widerstand der Rückenlehne einstellbar',
        'Fußkreuz Kunststoff schwarz',
        'Gasfeder schwarz',
        'Bezugsfarbe schwarz',
      ],
      price: 329.00,
      picturePath: Assets.products.buerodrehstuehle.xenonNet.path)
];
*/
