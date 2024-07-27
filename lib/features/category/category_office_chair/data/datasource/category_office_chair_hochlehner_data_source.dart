import 'package:app_flutter_produkt_bestellen/core/fix_values/flavor.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/data/datasource/category_remote_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryOfficeChairHochlehnerDataSource extends CategoryRemoteDataSource {
  CategoryOfficeChairHochlehnerDataSource();

  @override
  // TODO: implement categoryCollectionName
  String get categoryCollectionName => 'officeChair';

  @override
  // TODO: implement collection
  CollectionReference<Map<String, dynamic>> get collection =>
      FirebaseFirestore.instance
          .collection('Product')
          .doc(AppConfig.productDocumentId)
          .collection(categoryCollectionName)
          .doc(AppConfig.officeChairDocumentId)
          .collection('hochlehner');
}
