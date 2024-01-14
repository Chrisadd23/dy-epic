import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/domain/entity/entity_buerodrehstuehle.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

abstract class DataSourceBuerostuehle {
  Future<Either<Failure, List<EntityBuerodrehstuehle>>> getBuerodrehstuehle(
      {String? officeChairCategory});
}

class DataSourceBuerostuehleImplementation extends DataSourceBuerostuehle {
  DataSourceBuerostuehleImplementation();

  @override
  Future<Either<Failure, List<EntityBuerodrehstuehle>>> getBuerodrehstuehle(
      {String? officeChairCategory}) async {
    debugPrint('start datassource request');
    try {
      Failure? failure;
      List<EntityProduct> officeChairs = [];
      await FirebaseFirestore.instance
          .collection('Product')
          .doc('kbLDlq3ItPF7onHoQnYL')
          .collection('officeChair')
          .doc('lkO66P0vFh9C2kEaS2dR')
          .collection(officeChairCategory!)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.map((document) async {
          final Map<String, dynamic> data =
              document.data() as Map<String, dynamic>;
          debugPrint("index =>  document ==> $data");
          officeChairs.add(EntityProduct(
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
              picturePath: 'product_${data['productNumber']}'));
        }).toList();
      }, onError: (error) {
        debugPrint('dataSource error ===> ${error.toString()}');
        failure = FailureState.databaseError(error.toString());
        return failure;
      });

      if (failure != null) {
        return Left(failure!);
      } else {
        debugPrint("return list officeChairs ${officeChairs.toString()}");
        return Right([
          EntityBuerodrehstuehle(
              categoryName: 'Bürodrehstühle', listProduct: officeChairs)
        ]);
      }
    } catch (e) {
      return const Left(
          FailureState.message('Sortiment konnte nicht geladen werden'));
    }
  }
}

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
