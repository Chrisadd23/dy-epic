import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/repository/repository_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/presentation/cubit/state_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class CubitConferenceChairProduct extends CubitProduct<
    CubitConferenceChairProduct, StateConferenceChairProduct> {
  CubitConferenceChairProduct({required this.repositoryConferenceChairProduct});

  final RepositoryConferenceChairProduct repositoryConferenceChairProduct;

  @override
  Future<void> load({required String product}) async {
    await repositoryConferenceChairProduct
        .getConferenceChairProduct(product: product)
        .fold((failure) {
      debugPrint("failure ===> ${failure.toString()}");
      emit(StateProduct.failure(failure: failure));
    }, (conferenceChaire) {
      final characteristics = {
        EnumConferenceChairProduct.name: conferenceChaire.name,
        EnumConferenceChairProduct.picturePath: conferenceChaire.picturePath,
      };
      var newState = StateProduct.success(
          product: StateConferenceChairProduct(
              productNumber: conferenceChaire.productNumber,
              pictureBytes: conferenceChaire.pictureBytes,
              name: conferenceChaire.name,
              attributes: conferenceChaire.attributes),
          selectedCharacteristics: characteristics,
          price: conferenceChaire.price);

      debugPrint(
          "product parameter ===> $product, picturelocal keys =>${getIt<CubitPictures>().state.keys}");
      newState.mapOrNull(success: (successState) {
        final containsPictureLocal =
            getIt<CubitPictures>().state.containsKey(product) &&
                getIt<CubitPictures>().state[product] != null;

        debugPrint("containsPictureLocal Product ==> $containsPictureLocal");
        if (containsPictureLocal) {
          successState = successState.copyWith(
              product: successState.product?.copyWith(
                  pictureBytes: getIt<CubitPictures>().state[product]));
        }
        emit(successState);
      });
      //if-abfrage getIt<CubitPictures>().state.containsKey(product)
    });
  }
}
