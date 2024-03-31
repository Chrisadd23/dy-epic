import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/entity/entity_product_workingtable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';

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
              name: selectedWorkingTable['productTitle'],
              productNumber: productNumber,
              attributes: selectedWorkingTable['attributes'],
              breiteXTiefe: _getWidthAndHeight(
                selectedWorkingTable['pricePerSize'],
              ),
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
            breite: selectedWorkingTable['width'],
            tiefe: selectedWorkingTable['height'],
            price: selectedWorkingTable['price'].toString(),
          ),
        )
        .toList();
  }
}
