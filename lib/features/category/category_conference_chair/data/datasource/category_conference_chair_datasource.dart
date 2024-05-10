import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/flavor.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/domain/entity/entity_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_product_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceConferenceChair {
  Future<Either<Failure, EntityConferenceChair>> getConferenceChair(
      {String? conferenceChairCategory});
}

class DataSourceConferenceChairImplementation
    extends DataSourceConferenceChair {
  @override
  Future<Either<Failure, EntityConferenceChair>> getConferenceChair(
      {String? conferenceChairCategory}) async {
    try {
      Failure? failure;
      List<CategoryProductEntity> officeChairs = [];

      await FirebaseFirestore.instance
          .collection('Product')
          .doc(AppConfig.productDocumentId)
          .collection('conferenceChair')
          .get()
          .timeout(const Duration(seconds: 10))
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.map((document) async {
          final Map<String, dynamic> data =
              document.data() as Map<String, dynamic>;

          officeChairs.add(CategoryProductEntity(
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
        failure = Failure.databaseError(error.toString());
        return failure;
      }).timeout(const Duration(seconds: 10));

      if (failure != null) {
        return Left(failure!);
      } else {
        return Right(EntityConferenceChair(
            categoryName: 'Bürodrehstühle', listProduct: officeChairs));
      }
    } catch (e) {
      return const Left(
          Failure.message('Sortiment konnte nicht geladen werden'));
    }
  }
}
