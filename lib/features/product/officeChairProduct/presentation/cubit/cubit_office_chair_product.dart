import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/presentation/cubit/cubit_choose_office_chair.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/repository/repository_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/presentation/cubit/state_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

class CubitOfficeChairProduct
    extends CubitProduct<CubitOfficeChairProduct, EntityProduct> {
  CubitOfficeChairProduct({required this.repositoryOfficeChairProduct});

  final RepositoryOfficeChairProduct repositoryOfficeChairProduct;

  @override
  Future<void> load({required String product}) async {
    debugPrint("start with OfficeChairCubit");
    debugPrint(
        "officeChairType state ${getIt<CubitChooseOfficeChair>().state.name}");
    await repositoryOfficeChairProduct
        .getOfficeChairProduct(productNumber: product)
        .fold((failure) {
      debugPrint("officeChairProductfailure ==> ${failure.toString()}");
      emit(StateProduct.failure(failure: failure));
    }, (officeChair) {
      debugPrint('officeChair => $officeChair');
      final characteristics = {
        EnumOfficeChairProduct.name: officeChair.name,
        EnumOfficeChairProduct.picturePath: officeChair.picturePath,
      };
      var newState = StateProduct<EntityProduct>.success(
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
        debugPrint("End officeChairCubit load method");
        emit(successState);
      });
      //if-abfrage getIt<CubitPictures>().state.containsKey(product)
    });
  }
}
