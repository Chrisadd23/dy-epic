import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/domain/repository/category_workingtable_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryWorkingTableCubit extends Cubit<StateCategory> {
  CategoryWorkingTableCubit({required this.repositoryWorkingTable})
      : super(const StateCategory.loading());

  final CategoryWorkingTableRepository repositoryWorkingTable;

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
                  name: workingTable.categoryProductEntity.name))
              .toList());

      newState = StateCategory.success(productCategory: productCategory);
    });

    newState.mapOrNull(success: (successState) async {
      debugPrint("loadPicturePath ==== continue");

      final listProduct = successState.productCategory?.listProduct
              .map((e) => e.picturePath)
              .toList() ??
          [];
      try {
        await listProduct
            .map((filename) async {
              final containsPictureLocal =
                  getIt<CubitPictures>().state.containsKey(filename) &&
                      getIt<CubitPictures>().state[filename] != null;
              debugPrint("containsPictureLocal ==> $containsPictureLocal");
              if (containsPictureLocal) {
                return {filename: getIt<CubitPictures>().state[filename]};
              } else {
                final imageBytes =
                    await FirebaseConfiguration.getImageBytes(filename);
                getIt<CubitPictures>().addPicture(
                    key: imageBytes.keys.first, value: imageBytes.values.first);
                debugPrint("Image Bytes ==> $imageBytes");
                return imageBytes;
              }
            })
            .wait
            .then((pictures) {
              successState = successState.copyWith(
                  productCategory: successState.productCategory?.copyWith(
                      listProduct: successState.productCategory!.listProduct
                          .map((product) => product.copyWith(
                              pictureByte: pictures
                                  .where((positionMap) =>
                                      positionMap.keys.first ==
                                      product.picturePath)
                                  .first
                                  .values
                                  .firstOrNull))
                          .toList()));
            });
      } catch (error) {
        debugPrint(error.toString());
      }

      emit(successState);

      return;
    });
  }
}
