import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/flavor.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/domain/entity/entity_buerodrehstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_product_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceBuerostuehle {
  Future<Either<Failure, EntityBuerodrehstuehle>> getBuerodrehstuehle(
      {String? officeChairCategory});
}

class DataSourceBuerostuehleImplementation extends DataSourceBuerostuehle {
  DataSourceBuerostuehleImplementation(
    this._firebaseFirestore,
  );

  final FirebaseFirestore _firebaseFirestore;

  @override
  Future<Either<Failure, EntityBuerodrehstuehle>> getBuerodrehstuehle(
      {String? officeChairCategory}) async {
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
        failure = Failure.databaseError(error.toString());
        return failure;
      });

      if (failure != null) {
        return Left(failure!);
      } else {
        return Right(EntityBuerodrehstuehle(
            categoryName: 'Bürodrehstühle', listProduct: officeChairs));
      }
    } catch (e) {
      return const Left(
          Failure.message('Sortiment konnte nicht geladen werden'));
    }
  }
}
