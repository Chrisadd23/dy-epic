import 'package:app_flutter_produkt_bestellen/features/category/domain/usecase_category/usecase_get_category.dart';
import 'package:app_flutter_produkt_bestellen/features/category/presentation/cubit/state_category.dart';
import 'package:bloc/bloc.dart';

class CubitCategory extends Cubit<StateCategory>
{
  CubitCategory( this._useCaseGetCategory) : super(const StateCategory.loading());
  final UseCaseGetCategory _useCaseGetCategory;

  Future<void> load()async {
    if(state != const StateCategory.loading())
      {
        emit(const StateCategory.loading());
      }

    await Future.delayed(const Duration(seconds: 2));

    final category = _useCaseGetCategory();

    category.isNotEmpty ? emit(StateCategory.success(category)) : emit(const StateCategory.failure());
  }
}