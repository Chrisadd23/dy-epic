import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/domain/repository/category_conference_chair_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitConferenceChair extends Cubit<StateCategory> {
  CubitConferenceChair({required this.repositoryConferenceChair})
      : super(const StateCategory.loading());

  final RepositoryConferenceChair repositoryConferenceChair;

  Future<void> load([String? conferenceChairCategory]) async {
    if (state != const StateCategory.loading()) {
      emit(const StateCategory.loading());
    }
    debugPrint('instanceName ==> $conferenceChairCategory');
    var newState = state;
    List<Map<String, Uint8List?>> st = [];
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
      try {
        st = await Future.wait<Map<String, Uint8List?>>(
            listProduct.map((filename) async {
          final containsPictureLocal =
              getIt<CubitPictures>().state.containsKey(filename) &&
                  getIt<CubitPictures>().state[filename] != null;
          debugPrint("containsPictureLocal ==> $containsPictureLocal");
          if (containsPictureLocal) {
            return {filename: getIt<CubitPictures>().state[filename]};
          } else {
            final imageBytes =
                await FirebaseConfiguration.getImageBytes(filename)
                    .timeout(const Duration(seconds: 5));
            getIt<CubitPictures>().addPicture(
                key: imageBytes.keys.first,
                value: imageBytes.values.firstOrNull);
            return imageBytes;
          }
        }));
      } catch (e) {
        debugPrint("catch ==> ${e.toString()}");
      }

      successState = successState.copyWith(
          productCategory: successState.productCategory?.copyWith(
              listProduct: successState.productCategory!.listProduct
                  .map((product) => product.copyWith(
                      pictureByte: st
                          .where((positionMap) =>
                              positionMap.keys.first == product.picturePath)
                          .firstOrNull
                          ?.values
                          .firstOrNull))
                  .toList()));

      debugPrint("successState ==> ${successState.toString()}");
      emit(successState);

      return;
    });
  }
}
