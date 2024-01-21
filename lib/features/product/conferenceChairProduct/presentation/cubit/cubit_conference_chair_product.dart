import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/repository/repository_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/presentation/cubit/state_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class CubitConferenceChairProduct
    extends CubitProduct<CubitConferenceChairProduct, EntityProduct> {
  CubitConferenceChairProduct({required this.repositoryConferenceChairProduct});

  final RepositoryConferenceChairProduct repositoryConferenceChairProduct;

  @override
  Future<void> load(
      {String? product,
      ({ChosenProduct chosenProduct, int index})? recordOrder}) async {
    if (product != null) {
      await repositoryConferenceChairProduct
          .getConferenceChairProduct(product: product)
          .fold((failure) {
        debugPrint("failure ===> ${failure.toString()}");
      }, (conferenceChaire) {
        final characteristics = {
          EnumConferenceChairProduct.name: conferenceChaire.name,
          EnumConferenceChairProduct.picturePath: conferenceChaire.picturePath,
        };
        var newState = StateProduct<EntityProduct>(
            product: EntityProduct(
              productNumber: conferenceChaire.productNumber,
              pictureBytes: conferenceChaire.pictureBytes,
              name: conferenceChaire.name,
              attributes: conferenceChaire.attributes,
              price: conferenceChaire.price,
              productCategory: EnumCategoryProduct.conferenceChair,
            ),
            selectedCharacteristics: characteristics,
            price: conferenceChaire.price);

        debugPrint(
            "product parameter ===> $product, picturelocal keys =>${getIt<CubitPictures>().state.keys}");

        final containsPictureLocal =
            getIt<CubitPictures>().state.containsKey(product) &&
                getIt<CubitPictures>().state[product] != null;

        debugPrint("containsPictureLocal Product ==> $containsPictureLocal");
        if (containsPictureLocal) {
          newState = newState.copyWith(
              product: newState.product?.copyWith(
                  pictureBytes: getIt<CubitPictures>().state[product]));
        }
        emit(newState);
      });
    } else if (recordOrder != null) {
      changeProduct(order: recordOrder.chosenProduct, index: recordOrder.index);
    }
    //if-abfrage getIt<CubitPictures>().state.containsKey(product)
  }
}
