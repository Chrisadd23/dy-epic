import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/entity/entity_product_workingtable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

abstract class DataSourceProductWorkingTable {
  Future<Either<Failure, EntityWorkingTableProduct>> loadData(
      String? productNumber);
}

class DataSourceProductWorkingtableImplementation
    extends DataSourceProductWorkingTable {
  DataSourceProductWorkingtableImplementation();

  @override
  Future<Either<Failure, EntityWorkingTableProduct>> loadData(
      String? productNumber) async {
    try {
      debugPrint("productNumber datasource ==> $productNumber");
      if (productNumber != null) {
        final entityWorkingTableProduct = await FirebaseFirestore.instance
            .collection('Product')
            .doc('kbLDlq3ItPF7onHoQnYL')
            .collection('workingTable')
            .where('productNumber', isEqualTo: productNumber)
            .get()
            .timeout(const Duration(seconds: 10))
            .then((querySnapshot) {
          final selectedWorkingTable = querySnapshot.docs.firstOrNull?.data();

          if (selectedWorkingTable != null) {
            return EntityWorkingTableProduct(
              name: selectedWorkingTable['productTitle'].toString(),
              productNumber: productNumber,
              attributes:
                  _getListAttributes(selectedWorkingTable['attributes']),
              breiteXTiefe: _getWidthAndHeight(
                selectedWorkingTable['pricePerSize'],
              ),
              frameColors: _getFrameColor(selectedWorkingTable['frameColors']),
            );
          }
          return null;
        });

        if (entityWorkingTableProduct != null) {
          return Right(entityWorkingTableProduct);
        }
      }
      return const Left(Failure.databaseError('Konnte nicht geladen werden'));
    } catch (error) {
      return Left(
          Failure.databaseError('Database Error { ${error.toString()} }'));
    }
  }

  List<EntityBreiteUndTiefe>? _getWidthAndHeight(
      Map<String, dynamic> selectedWorkingTable) {
    debugPrint("pricePerSize ==> $selectedWorkingTable");
    return selectedWorkingTable.values
        .map(
          (pricePerSize) => EntityBreiteUndTiefe(
            breite: pricePerSize['width'].toString(),
            tiefe: pricePerSize['height'].toString(),
            price: double.parse(pricePerSize['price'].toString()),
          ),
        )
        .toList();
  }

  List<String> _getListAttributes(List<dynamic> selectedWorkingTable) {
    debugPrint("selectedWorkingtable attributes => $selectedWorkingTable");
    return selectedWorkingTable
        .map((attribute) => attribute.toString())
        .toList();
  }

  List<EntityGestell>? _getFrameColor(
      Map<String, dynamic> selectedWorkingTable) {
    return selectedWorkingTable.keys
        .map((key) => EntityGestell(
              color: Color(int.parse(selectedWorkingTable[key])),
              material: key,
              name: key,
            ))
        .toList();
  }
}
