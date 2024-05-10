import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/repository/repository_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

class CubitOfficeChairProduct extends CubitProduct<CubitOfficeChairProduct> {
  CubitOfficeChairProduct({required this.repositoryOfficeChairProduct});

  final RepositoryOfficeChairProduct repositoryOfficeChairProduct;

  @override
  Future<void> load(
      {String? productNumber,
      ({ShoppingBasketProduct chosenProduct, int index})? recordOrder}) async {
    if (productNumber != null) {
      await repositoryOfficeChairProduct
          .getOfficeChairProduct(
              productNumber: productNumber.split('_')[1].split('.')[0])
          .fold((failure) {}, (officeChair) {
        var newState = StateProduct(
          productEntity: EntityProduct(
              productNumber: officeChair.productNumber,
              pictureBytes: officeChair.pictureBytes,
              name: officeChair.name,
              attributes: officeChair.attributes,
              productCategory: officeChair.productCategory,
              price: officeChair.price),
        );

        debugPrint(
            "product parameter ===> $productNumber, picturelocal keys =>${getIt<CubitPictures>().state.keys}");

        final containsPictureLocal =
            getIt<CubitPictures>().state.containsKey(productNumber) &&
                getIt<CubitPictures>().state[productNumber] != null;

        if (containsPictureLocal) {
          newState = newState.copyWith(
              productEntity: newState.productEntity?.copyWith(
                  pictureBytes: getIt<CubitPictures>().state[productNumber]));
        }

        emit(newState);

        //if-abfrage getIt<CubitPictures>().state.containsKey(product)
      });
    } else if (recordOrder != null) {
      final product = repositoryOfficeChairProduct.listOfficeChairProduct
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
              productCategory: product.productCategory,
              price: product.price,
              name: product.name,
              productNumber: product.productNumber,
              attributes: product.attributes,
              pictureBytes: picutreBytes),
          position: recordOrder.index));
    }
  }
}
