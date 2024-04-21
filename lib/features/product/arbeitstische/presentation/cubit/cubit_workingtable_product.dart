import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/entity/entity_product_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/repository/repostiory_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class CubitWorkingTableProduct
    extends CubitProduct<CubitWorkingTableProduct, EntityWorkingTableProduct> {
  CubitWorkingTableProduct(this._cubitPictures,
      {required this.repositoryProductArbeitstische});

  final RepositoryWorkingTable repositoryProductArbeitstische;
  final CubitPictures _cubitPictures;

  @override
  Future<void> load(
      {String? productNumber,
      ({ChosenProduct chosenProduct, int index})? recordOrder,
      String? color}) async {
    // TODO: implement load
    debugPrint("load product ==> $productNumber");
    if (recordOrder == null) {
      await repositoryProductArbeitstische
          .getWorkingTableProduct(productNumber)
          .fold((failure) {
        debugPrint("Failure ==> $failure");
        emit(const StateProduct());
      }, (product) async {
        var state =
            StateProduct<EntityWorkingTableProduct>(productEntity: product);
        debugPrint("product ==> $product");

        final listPicturePath = product.frameColors
                ?.map((e) => 'product_${product.productNumber}_${e.name}.png')
                .toList() ??
            [];

        debugPrint('listPicture Path => $listPicturePath');

        try {
          if (listPicturePath.isNotEmpty) {
            listPicturePath.map((picture) async {
              if (!(_cubitPictures.state.containsKey(picture) &&
                  _cubitPictures.state[picture] != null)) {
                final imageBytes =
                    await FirebaseConfiguration.getImageBytes(picture);
                debugPrint("imageBytes ==> $imageBytes");
                _cubitPictures.addPicture(
                    key: imageBytes.keys.first, value: imageBytes.values.first);
              }
            }).toList();

            debugPrint('PictureCubit State ==> ${_cubitPictures.state.keys}');
            final frameColors = state.productEntity?.frameColors
                ?.map((frameColor) => frameColor.copyWith(
                    pictureBytes: _cubitPictures.state[
                        'product_${product.productNumber}_${frameColor.name}.png']))
                .toList();

            debugPrint("frameColors ==> $frameColors");

            state = state.copyWith(
              productEntity: state.productEntity?.copyWith(
                  frameColors: frameColors,
                  selectedEntityGestell: frameColors?.firstOrNull,
                  selectedWidthAndHeight:
                      state.productEntity?.breiteXTiefe?.firstOrNull),
            );

            return emit(state);
          }
        } catch (error) {
          debugPrint(error.toString());
        }
        return emit(state);
      });
    }
  }

  void changeColor(EntityGestell entityGestell) async {
    debugPrint('change entityGestell --< $entityGestell');

    emit(state.copyWith(
        productEntity: state.productEntity
            ?.copyWith(selectedEntityGestell: entityGestell)));
  }

  void changeBreiteXTiefe(EntityBreiteUndTiefe chosenBreiteXTiefe) {
    debugPrint('change chosenBreiteXTiefe --< $chosenBreiteXTiefe');

    emit(
      state.copyWith(
        productEntity: state.productEntity
            ?.copyWith(selectedWidthAndHeight: chosenBreiteXTiefe),
      ),
    );
  }
}
