import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/repository/repository_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
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
      ({ShoppingBasketProduct chosenProduct, int index})? recordOrder}) async {
    if (productNumber != null) {
      await repositoryConferenceChairProduct
          .getConferenceChairProduct(
              productNumber: productNumber.split('_')[1].split('.')[0])
          .fold((failure) {}, (conferenceChair) {
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

          if (containsPictureLocal) {
            newState = newState.copyWith(
                productEntity: newState.productEntity?.copyWith(
                    pictureBytes: getIt<CubitPictures>().state[productNumber]));
          }
        } catch (error) {
          debugPrint("error => ${error.toString()}");
        }
        emit(newState);
      });
    } else if (recordOrder != null) {
      final product = repositoryConferenceChairProduct.listOfficeChairProduct
          .where(
            (element) =>
                element.productNumber ==
                recordOrder.chosenProduct.productNumber,
          )
          .first;

      final picutreBytes = getIt<CubitPictures>()
          .state
          .entries
          .where((element) =>
              element.key.contains(recordOrder.chosenProduct.productNumber))
          .firstOrNull!
          .value!;

      emit(state.copyWith(
          productOrderCount: recordOrder.chosenProduct.productCount,
          productEntity: EntityProduct(
              productCategory: EnumCategoryProduct.conferenceChair,
              price: product.price,
              name: product.name,
              productNumber: product.productNumber,
              attributes: product.attributes,
              pictureBytes: picutreBytes),
          position: recordOrder.index));
    }
    //if-abfrage getIt<CubitPictures>().state.containsKey(product)
  }
}
