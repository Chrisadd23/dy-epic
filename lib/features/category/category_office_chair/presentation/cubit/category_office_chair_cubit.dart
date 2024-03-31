import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/domain/repository/category_office_chair_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitOfficeChair extends Cubit<StateCategory> {
  CubitOfficeChair(this._cubitPictures, {required this.repositoryOfficeChair})
      : super(const StateCategory.loading());

  final RepositoryBuerodrehstuehle repositoryOfficeChair;
  final CubitPictures _cubitPictures;

  Future<void> load(String instanceName) async {
    if (state != const StateCategory.loading()) {
      emit(const StateCategory.loading());
    }

    debugPrint('instanceName ==> $instanceName');
    var newState = state;
    await repositoryOfficeChair
        .getBuerodrehstuehle(officeChairCategory: instanceName)
        .fold((failure) => emit(StateCategory.failure(failure: failure)),
            (listOfficeChair) {
      final productCategory = ProductCategory(
          categoryName: listOfficeChair.categoryName,
          listProduct: listOfficeChair.listProduct
              .map((chair) => Product(
                  productType: chair.productType,
                  price: chair.price,
                  picturePath: chair.picturePath,
                  name: chair.name))
              .toList());

      newState = StateCategory.success(productCategory: productCategory);
    });

    newState.mapOrNull(success: (successState) async {
      debugPrint("loadPicturePath ==== continue");

      final listPicturePath = successState.productCategory?.listProduct
              .map((e) => e.picturePath)
              .toList() ??
          [];
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
