import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/flavor.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/entity/entity_conference_chair_product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';

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
      final product = await FirebaseFirestore.instance
          .collection('Product')
          .doc(AppConfig.productDocumentId)
          .collection('conferenceChair')
          .where('productNumber', isEqualTo: productNumber)
          .get()
          .timeout(const Duration(seconds: 10))
          .then((querySnapshot) {
        final Map<String, dynamic>? data =
            querySnapshot.docs.firstOrNull?.data();

        if (data != null && data['price'] != null) {
          return EntityConferenceChairProduct(
              name: data['productTitle'].toString(),
              price: double.parse(data['price'].toString()),
              picturePath: data['productNumber'] ?? '',
              attributes: List.from(data['attributes']),
              productNumber: data['productNumber'].toString());
        }
      });

      if (product != null) {
        return Right(product);
      } else {
        return const Left(Failure.databaseError());
      }
    } catch (e) {
      return Left(Failure.databaseError(e.toString()));
    }
  }
}
