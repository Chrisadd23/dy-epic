import 'package:app_flutter_produkt_bestellen/features/category/share/domain/repository/repository_category.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:bloc/bloc.dart';

abstract class CubitCategoryGeneric<T> extends Cubit<StateCategoryGeneric> {
  CubitCategoryGeneric({
    initialState,
    required this.repositoryCategory,
  }) : super(initialState);

  final RepositoryCategory repositoryCategory;

  Future<void> load() async {
    final categoryData = repositoryCategory.load();
  }
}
