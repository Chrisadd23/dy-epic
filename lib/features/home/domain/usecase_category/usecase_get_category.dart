import '../../presentation/widget/category_widget.dart';
import '../repository/repository_category.dart';

class UseCaseGetCategory {
  const UseCaseGetCategory({required this.repositoryCategory});

  final RepositoryCategory repositoryCategory;

  List<CategoryWidget> call() => repositoryCategory.getCategory();
}
