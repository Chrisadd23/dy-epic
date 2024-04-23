import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/domain/repository/category_workingtable_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryWorkingTableCubit extends Cubit<StateCategory> {
  CategoryWorkingTableCubit(this._cubitPictures,
      {required this.repositoryWorkingTable})
      : super(const StateCategory.loading());

  final CategoryWorkingTableRepository repositoryWorkingTable;
  final CubitPictures _cubitPictures;

  Future<void> load() async {
    if (state != const StateCategory.loading()) {
      emit(const StateCategory.loading());
    }
    var newState = state;
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
                  name: workingTable.categoryProductEntity.name,
                  productNumber:
                      workingTable.categoryProductEntity.productNumber))
              .toList());

      newState = StateCategory.success(productCategory: productCategory);
    });

    newState.mapOrNull(success: (successState) async {
      debugPrint("loadPicturePath ==== continue");

      final listPicturePath = successState.productCategory?.listProduct
              .map((e) => e.picturePath)
              .toList() ??
          [];

      try {
        if (listPicturePath.isNotEmpty) {
          await listPicturePath.map((picturePath) async {
            if (!(_cubitPictures.state.containsKey(picturePath) &&
                _cubitPictures.state[picturePath] != null)) {
              final imageBytes =
                  await FirebaseConfiguration.getImageBytes(picturePath);
              _cubitPictures.addPicture(key: picturePath, value: imageBytes);
            }
          }).wait;
        }
      } catch (error) {
        debugPrint(error.toString());
      }

      successState = successState.copyWith(
        productCategory: successState.productCategory?.copyWith(
          listProduct: successState.productCategory!.listProduct
              .map((product) => product.copyWith(
                  pictureByte: _cubitPictures.state[product.picturePath]))
              .toList(),
        ),
      );

      emit(successState);
    });
  }
}
