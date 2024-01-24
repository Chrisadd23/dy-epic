import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/entity/entity_conference_chair_product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

abstract class DataSourceConferenceChairProduct {
  Future<Either<Failure, EntityConferenceChairProduct>>
      getConferenceChairProduct({required String productNumber});
}

class DataSourceConferenceChairProductImplementation
    extends DataSourceConferenceChairProduct {
  @override
  Future<Either<Failure, EntityConferenceChairProduct>>
      getConferenceChairProduct({required String productNumber}) async {
    // TODO: implement getConferenceChairProduct

    try {
      debugPrint(
          "productNumber ===> ${productNumber.split('_')[1].split('.')[0]}");
      final product = await FirebaseFirestore.instance
          .collection('Product')
          .doc('kbLDlq3ItPF7onHoQnYL')
          .collection('conferenceChair')
          .where('productNumber',
              isEqualTo: productNumber.split('_')[1].split('.')[0])
          .get()
          .timeout(const Duration(seconds: 10))
          .then((querySnapshot) {
        final Map<String, dynamic>? data =
            querySnapshot.docs.firstOrNull?.data();
        debugPrint("data ===> ${data.toString()}");
        if (data != null && data['price'] != null) {
          return EntityConferenceChairProduct(
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
        return const Left(Failure.databaseError());
      }
    } catch (e) {
      return Left(Failure.databaseError(e.toString()));
    }
  }
}
/*
final _dummyListProductConferenceChair = [
  EntityConferenceChairProduct(
      name: 'CAMIRO Freischwinger Netz',
      attributes: [
        'Rücken Netz - Sitz Polster',
        'Rücken Stoff Comf Style 4341 schwarz',
        'Armlehnen fest mit Kunststoffarmauflage',
        'Sitz Stoff Just 60999 schwarz',
        'Label OS',
        'Gestell Ausführung: stapelbar verchromt',
        'Filzgleiter für harte Böden',
      ],
      price: 329.00,
      picturePath:
          Assets.products.konferenzstuehle.camiroFreischwingerNetz.path)
];*/
