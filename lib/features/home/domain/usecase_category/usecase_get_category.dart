import 'package:app_flutter_produkt_bestellen/features/home/domain/repository/repository_category.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/widget/category_widget.dart';

class UseCaseGetCategory {
  const UseCaseGetCategory({required this.repositoryCategory});

  final RepositoryCategory repositoryCategory;

  List<CategoryWidget> call() => repositoryCategory.getCategory();
}
