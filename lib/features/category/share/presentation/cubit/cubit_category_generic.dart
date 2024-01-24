import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CubitCategoryGeneric<T> extends Cubit<StateCategory> {
  CubitCategoryGeneric({
    initialState,
  }) : super(initialState);

  Future<void> load() async {
    // final categoryData = repositoryCategory.load();
  }
}
