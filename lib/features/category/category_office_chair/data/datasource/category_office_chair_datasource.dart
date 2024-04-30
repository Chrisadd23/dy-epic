import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/flavor.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/domain/entity/entity_buerodrehstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_product_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

abstract class DataSourceBuerostuehle {
  Future<Either<Failure, EntityBuerodrehstuehle>> getBuerodrehstuehle(
      {String? officeChairCategory});

  Future<Either<Failure, Uint8List?>> getPicturePath(
      {required List<String> productTypes});
}

class DataSourceBuerostuehleImplementation extends DataSourceBuerostuehle {
  DataSourceBuerostuehleImplementation(
    this._firebaseFirestore,
  );

  final FirebaseFirestore _firebaseFirestore;

  @override
  Future<Either<Failure, EntityBuerodrehstuehle>> getBuerodrehstuehle(
      {String? officeChairCategory}) async {
    debugPrint('start datasource request');
    try {
      Failure? failure;
      List<CategoryProductEntity> officeChairs = [];

      await _firebaseFirestore
          .collection('Product')
          .doc(AppConfig.productDocumentId)
          .collection('officeChair')
          .doc(AppConfig.officeChairDocumentId)
          .collection(officeChairCategory!)
          .get()
          .timeout(const Duration(seconds: 10))
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.map((document) async {
          final Map<String, dynamic> data =
              document.data() as Map<String, dynamic>;
          debugPrint("index =>  document ==> $data");
          officeChairs.add(CategoryProductEntity(
              productNumber: data['productNumber'] ?? '',
              name: data['productTitle'] ?? '',
              productType: EnumCategoryOfficeChair.values
                      .where((category) =>
                          category.name.toLowerCase() ==
                          data['type'].toString().toLowerCase())
                      .firstOrNull ??
                  EnumCategoryOfficeChair.none,
              price: double.parse(data['price'].toString()),
              indexNumber: 0,
              picturePath: 'product_${data['productNumber']}.png'));
        }).toList();
      }, onError: (error) {
        debugPrint('dataSource error ===> ${error.toString()}');
        failure = Failure.databaseError(error.toString());
        return failure;
      });

      if (failure != null) {
        debugPrint("database failure");
        return Left(failure!);
      } else {
        debugPrint("return list officeChairs ${officeChairs.toString()}");

        return Right(EntityBuerodrehstuehle(
            categoryName: 'Bürodrehstühle', listProduct: officeChairs));
      }
    } catch (e) {
      return const Left(
          Failure.message('Sortiment konnte nicht geladen werden'));
    }
  }

  @override
  Future<Either<Failure, Uint8List?>> getPicturePath(
      {required List<String> productTypes}) async {
    // TODO: implement getPicturePath
    Map<String, Uint8List?> mapProducts = {};

    try {
      /*final list = productTypes.map((chair) async {
        final pictureByte = await FirebaseConfiguration.getImagePath(chair);
        mapProducts[chair] = pictureByte;
        return mapProducts[chair];
      }).toList();*/

      debugPrint("mapProducts = ${mapProducts.values.toString()}");
      //debugPrint("lig = ${list.toString()}");
      return const Right(null);
    } catch (e) {
      return Left(Failure.databaseError(e.toString()));
    }
  }
}
/*

final _listProducthochlehner = [
  EntityBuerodrehstuehle(categoryName: 'Bürodrehstühle', listProduct: [
    EntityProduct(
        name: '',
        productType: EnumCategoryOfficeChair.kyra,
        price: 479.00,
        indexNumber: 0,
        picturePath: Assets.products.buerodrehstuehle.kyraHochlehner.path,
        productNumber: ''),
    EntityProduct(
        name: '',
        productType: EnumCategoryOfficeChair.camiro,
        price: 629.00,
        indexNumber: 0,
        picturePath: Assets.products.buerodrehstuehle.camiroHochlehner.path,
        productNumber: ''),
  ])
];

final _listProductSortiment = [
  EntityBuerodrehstuehle(categoryName: 'Bürodrehstühle', listProduct: [
    EntityProduct(
        name: ' ',
        productType: EnumCategoryOfficeChair.xenon,
        price: 329.00,
        indexNumber: 0,
        picturePath: Assets.products.buerodrehstuehle.xenonNet.path,
        productNumber: ''),
    EntityProduct(
        name: ' ',
        productType: EnumCategoryOfficeChair.kyra,
        price: 379.00,
        indexNumber: 0,
        picturePath: Assets.products.buerodrehstuehle.kyra.path,
        productNumber: ''),
    EntityProduct(
        name: ' ',
        productType: EnumCategoryOfficeChair.lo,
        price: 429.00,
        indexNumber: 0,
        picturePath: Assets.products.buerodrehstuehle.loPunk133.path,
        productNumber: ''),
  ])
];
*/
