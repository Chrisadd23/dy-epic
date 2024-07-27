import 'package:app_flutter_produkt_bestellen/features/category/share/data/datasource/category_remote_data_source.dart';

class CategoryWorkingTableDataSource extends CategoryRemoteDataSource {
  @override
  String get categoryCollectionName => 'workingTable';
}
