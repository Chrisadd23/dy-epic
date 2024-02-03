import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/domain/entity/entity_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/entity_category.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

abstract class DataSourceConferenceChair {
  Future<Either<Failure, EntityConferenceChair>> getConferenceChair(
      {String? conferenceChairCategory});
}

class DataSourceConferenceChairImplementation
    extends DataSourceConferenceChair {
  @override
  Future<Either<Failure, EntityConferenceChair>> getConferenceChair(
      {String? conferenceChairCategory}) async {
    debugPrint('start datasource request');
    try {
      Failure? failure;
      List<EntityProduct> officeChairs = [];
      // TODO: implement getConferenceChair
      await FirebaseFirestore.instance
          .collection('Product')
          .doc('kbLDlq3ItPF7onHoQnYL')
          .collection('conferenceChair')
          .get()
          .timeout(const Duration(seconds: 10))
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.map((document) async {
          final Map<String, dynamic> data =
              document.data() as Map<String, dynamic>;
          debugPrint("index =>  document ==> $data");
          officeChairs.add(EntityProduct(
              productNumber: data['productNumber'] ?? '',
              name: data['productTitle'] ?? '',
              productType: EnumCategoryConferenceChair.values
                      .where((category) =>
                          category.name.toLowerCase() ==
                          data['type'].toString().toLowerCase())
                      .firstOrNull ??
                  EnumCategoryConferenceChair.none,
              price: double.parse(data['price'].toString()),
              indexNumber: 0,
              picturePath: 'product_${data['productNumber']}.png'));
        }).toList();
      }, onError: (error) {
        debugPrint('dataSource error ===> ${error.toString()}');
        failure = Failure.databaseError(error.toString());
        return failure;
      }).timeout(const Duration(seconds: 10));

      if (failure != null) {
        return Left(failure!);
      } else {
        debugPrint("return list officeChairs ${officeChairs.toString()}");

        return Right(EntityConferenceChair(
            categoryName: 'Bürodrehstühle', listProduct: officeChairs));
      }
    } catch (e) {
      return Left(Failure.message('Sortiment konnte nicht geladen werden'));
    }
  }
}

/*
final _listProductSortiment =
    EntityConferenceChair(categoryName: 'Konferenzstühle', listProduct: [
  EntityProduct(
      name: ' ',
      productType: EnumCategoryConferenceChair.camiro,
      price: 329.00,
      indexNumber: 0,
      picturePath:
          Assets.products.konferenzstuehle.camiroFreischwingerNetz.path),
  EntityProduct(
      name: ' ',
      productType: EnumCategoryConferenceChair.camiro,
      price: 330.00,
      indexNumber: 0,
      picturePath:
          Assets.products.konferenzstuehle.camiroFreischwingerPolster.path),
]);
*/
