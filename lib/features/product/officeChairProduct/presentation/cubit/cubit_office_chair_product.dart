import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/repository/repository_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/presentation/cubit/state_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

class CubitOfficeChairProduct
    extends CubitProduct<CubitOfficeChairProduct, EntityProduct> {
  CubitOfficeChairProduct({required this.repositoryOfficeChairProduct});

  final RepositoryOfficeChairProduct repositoryOfficeChairProduct;

  @override
  Future<void> load(
      {String? product,
      ({ChosenProduct chosenProduct, int index})? recordOrder}) async {
    debugPrint("start with OfficeChairCubit");

    if (product != null) {
      await repositoryOfficeChairProduct
          .getOfficeChairProduct(productNumber: product)
          .fold((failure) {
        debugPrint("officeChairProductfailure ==> ${failure.toString()}");
      }, (officeChair) {
        debugPrint('officeChair => $officeChair');
        final characteristics = {
          EnumOfficeChairProduct.name: officeChair.name,
          EnumOfficeChairProduct.picturePath: officeChair.picturePath,
        };
        var newState = StateProduct<EntityProduct>(
            product: EntityProduct(
                productNumber: officeChair.productNumber,
                pictureBytes: officeChair.pictureBytes,
                name: officeChair.name,
                attributes: officeChair.attributes,
                productCategory: officeChair.productCategory,
                price: officeChair.price),
            selectedCharacteristics: characteristics,
            price: officeChair.price);
        debugPrint("continue OfficeChairCubit");
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
        debugPrint("End officeChairCubit load method");
        emit(newState);

        //if-abfrage getIt<CubitPictures>().state.containsKey(product)
      });
    } else if (recordOrder != null) {
      changeProduct(order: recordOrder.chosenProduct, index: recordOrder.index);
    }
  }
}
