import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/repository/repository_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket//presentation/bloc/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class CubitConferenceChairProduct
    extends CubitProduct<CubitConferenceChairProduct> {
  CubitConferenceChairProduct({required this.repositoryConferenceChairProduct});

  final RepositoryConferenceChairProduct repositoryConferenceChairProduct;

  @override
  Future<void> load(
      {String? productNumber,
      ({ChosenProduct chosenProduct, int index})? recordOrder}) async {
    if (productNumber != null) {
      await repositoryConferenceChairProduct
          .getConferenceChairProduct(product: productNumber)
          .fold((failure) {
        debugPrint("failure ===> ${failure.toString()}");
      }, (conferenceChair) {
        var newState = StateProduct(
          productEntity: EntityProduct(
            productNumber: conferenceChair.productNumber,
            pictureBytes: conferenceChair.pictureBytes,
            name: conferenceChair.name,
            attributes: conferenceChair.attributes,
            price: conferenceChair.price,
            productCategory: EnumCategoryProduct.conferenceChair,
          ),
        );

        debugPrint(
            "product parameter ===> $productNumber, picturelocal keys =>${getIt<CubitPictures>().state.keys}");

        try {
          final containsPictureLocal =
              getIt<CubitPictures>().state.containsKey(productNumber) &&
                  getIt<CubitPictures>().state[productNumber] != null;

          debugPrint("containsPictureLocal Product ==> $containsPictureLocal");
          if (containsPictureLocal) {
            newState = newState.copyWith(
                productEntity: newState.productEntity?.copyWith(
                    pictureBytes: getIt<CubitPictures>().state[productNumber]));
          }
        } catch (e) {
          debugPrint(e.toString());
        }
        emit(newState);
      });
    } else if (recordOrder != null) {
      changeProduct(order: recordOrder.chosenProduct, index: recordOrder.index);
    }
    //if-abfrage getIt<CubitPictures>().state.containsKey(product)
  }
}
