import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/domain/repository/category_workingtable_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryWorkingTableCubit extends Cubit<StateCategory> {
  CategoryWorkingTableCubit({required this.repositoryWorkingTable})
      : super(const StateCategory.loading());

  final CategoryWorkingTableRepository repositoryWorkingTable;

  Future<void> load() async {
    if (state != const StateCategory.loading()) {
      emit(const StateCategory.loading());
    }
    await repositoryWorkingTable
        .getWorkingTable()
        .fold((failure) => emit(StateCategory.failure(failure: failure)),
            (workingTableList) {
      final productCategory = ProductCategory(
          categoryName: workingTableList.categoryName,
          listProduct: workingTableList.listProduct
              .map((workingTable) => Product(
                  productType: workingTable.categoryProductEntity.productType,
                  price: workingTable.categoryProductEntity.price,
                  picturePath: workingTable.categoryProductEntity.picturePath,
                  name: workingTable.categoryProductEntity.name))
              .toList());

      emit(StateCategory.success(productCategory: productCategory));
    });
  }
}
