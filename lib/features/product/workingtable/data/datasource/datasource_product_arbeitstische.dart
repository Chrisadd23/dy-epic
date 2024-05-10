import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/flavor.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/entity/entity_product_workingtable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

abstract class DataSourceProductWorkingTable {
  Future<Either<Failure, EntityWorkingTableProduct>> loadData(
      String? productNumber);

  Future<Either<Failure, List<AdditionalAttributes>>> getAdditionalAttributes();
}

class DataSourceProductWorkingtableImplementation
    extends DataSourceProductWorkingTable {
  DataSourceProductWorkingtableImplementation();

  @override
  Future<Either<Failure, EntityWorkingTableProduct>> loadData(
      String? productNumber) async {
    try {
      if (productNumber != null) {
        final entityWorkingTableProduct = await FirebaseFirestore.instance
            .collection('Product')
            .doc(AppConfig.productDocumentId)
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

  @override
  Future<Either<Failure, List<AdditionalAttributes>>>
      getAdditionalAttributes() async {
    try {
      final additionalAttributes = await FirebaseFirestore.instance
          .collection('Product')
          .doc(AppConfig.productDocumentId)
          .collection('workingTable')
          .doc('additionalAttributes')
          .get()
          .timeout(const Duration(seconds: 10))
          .then((querySnapshot) async {
        final queryAdditionalAttributes = querySnapshot.data();

        if (queryAdditionalAttributes != null) {
          final List<AdditionalAttributes> attributes =
              _getListAdditionalAttributes(
                  queryAdditionalAttributes:
                      queryAdditionalAttributes['additionalAttributes']);
          return attributes;
        }
        return null;
      });

      if (additionalAttributes != null) {
        return Right(additionalAttributes);
      } else {
        return const Left(Failure.databaseError(
            "Es sind keine zusätzlichen Attribute vorhanden"));
      }
    } catch (error) {
      return Left(
          Failure.databaseError('Database Error { ${error.toString()} }'));
    }
  }

  List<AdditionalAttributes> _getListAdditionalAttributes(
      {required List queryAdditionalAttributes}) {
    return queryAdditionalAttributes.map((attribute) {
      return AdditionalAttributes(
          name: attribute['name'],
          amount: double.parse(attribute['price'].toString()));
    }).toList();
  }
}
