import 'dart:async';
import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/domain/repository/repository_buerostuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class CubitOfficeChair extends Cubit<StateCategory> {
  CubitOfficeChair({required this.repositoryOfficeChair})
      : super(const StateCategory.loading());

  final RepositoryBuerodrehstuehle repositoryOfficeChair;
  StreamSubscription<StateCategory>? _streamSubscription;

  Future<void> load(String instanceName) async {
    if (state != const StateCategory.loading()) {
      emit(const StateCategory.loading());
    }
    _streamSubscription?.resume();
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

      final listProduct = successState.productCategory?.listProduct
              .map((e) => e.picturePath)
              .toList() ??
          [];
      final st = await Future.wait<Map<String, Uint8List?>>(listProduct
          .map((filename) => FirebaseConfiguration.getImagePath(filename)));

      successState = successState.copyWith(
          productCategory: successState.productCategory?.copyWith(
              listProduct: successState.productCategory!.listProduct
                  .map((product) => product.copyWith(
                      pictureByte: st
                          .where((positionMap) =>
                              positionMap.keys.first == product.picturePath)
                          .first
                          .values
                          .first))
                  .toList()));

      emit(successState);

      return;
    });
  }
}
