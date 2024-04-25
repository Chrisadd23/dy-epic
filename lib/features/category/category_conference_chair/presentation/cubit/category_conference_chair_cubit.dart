import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/domain/repository/category_conference_chair_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitConferenceChair extends Cubit<StateCategory> {
  CubitConferenceChair(this._cubitPictures,
      {required this.repositoryConferenceChair})
      : super(const StateCategory.loading());

  final RepositoryConferenceChair repositoryConferenceChair;
  final CubitPictures _cubitPictures;

  Future<void> load([String? conferenceChairCategory]) async {
    if (state != const StateCategory.loading()) {
      emit(const StateCategory.loading());
    }
    debugPrint('instanceName ==> $conferenceChairCategory');
    var newState = state;
    await repositoryConferenceChair
        .getConferencChaire(conferenceChairCategory: conferenceChairCategory)
        .fold((failure) => emit(StateCategory.failure(failure: failure)),
            (listOfficeChair) {
      final productCategory = ProductCategory(
          categoryName: listOfficeChair.categoryName,
          listProduct: listOfficeChair.listProduct
              .map((chair) => Product(
                  productType: chair.productType,
                  price: chair.price,
                  picturePath: chair.picturePath,
                  name: chair.name,
                  productNumber: chair.productNumber))
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
            debugPrint("picturePath ==> $picturePath");
            if (!(_cubitPictures.state.containsKey(picturePath) &&
                _cubitPictures.state[picturePath] != null)) {
              final imageBytes =
                  await FirebaseConfiguration.getImageBytes(picturePath);
              _cubitPictures.addPicture(
                  key: imageBytes.keys.first, value: imageBytes.values.first);
            }
          }).wait;
        }
      } catch (e) {
        debugPrint("catch ==> ${e.toString()}");
      }

      successState = successState.copyWith(
        productCategory: successState.productCategory?.copyWith(
          listProduct: successState.productCategory!.listProduct
              .map((product) => product.copyWith(
                  pictureByte: _cubitPictures.state[product.picturePath]))
              .toList(),
        ),
      );

      debugPrint("successState ==> ${successState.toString()}");
      emit(successState);

      return;
    });
  }
}
