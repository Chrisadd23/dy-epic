import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/domain/repository/category_conference_chair_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
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
        debugPrint("error => ${error.toString()}");
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

      return;
    });
  }
}
