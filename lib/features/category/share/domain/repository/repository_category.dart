import 'package:app_flutter_produkt_bestellen/features/category/share/data/datasource/datasource_category.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/entity_category.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/widget/category_widget.dart';
import 'package:either_dart/either.dart';

abstract class RepositoryCategory {
  RepositoryCategory({required this.dataSourceCategory});

  final DataSourceCategory dataSourceCategory;

  List<CategoryWidget> getCategory();

  Future<Either<void, EntityCategory>> load() async {
    return dataSourceCategory
        .loadData()
        .fold((left) => Left(null), (categoryData) => Right(categoryData));
  }
}
