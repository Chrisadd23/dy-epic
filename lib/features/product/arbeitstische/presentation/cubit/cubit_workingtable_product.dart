import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/entity/entity_product_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/repository/repostiory_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class CubitWorkingTableProduct extends CubitProduct<CubitWorkingTableProduct> {
  CubitWorkingTableProduct(this._cubitPictures,
      {required this.repositoryProductWorkingTable});

  final RepositoryWorkingTable repositoryProductWorkingTable;
  final CubitPictures _cubitPictures;

  @override
  Future<void> load(
      {String? productNumber,
      ({ChosenProduct chosenProduct, int index})? recordOrder,
      String? color}) async {
    if (recordOrder == null) {
      await repositoryProductWorkingTable
          .getWorkingTableProduct(productNumber)
          .fold((failure) {
        debugPrint("Failure ==> $failure");
        emit(const StateProduct());
      }, (product) async {
        debugPrint("product ==> ${product.breiteXTiefe?.firstOrNull?.price}");
        emit(StateProduct(
            productEntity: EntityProduct(
          productCategory: EnumCategoryProduct.workingTable,
          price: product.breiteXTiefe?.firstOrNull?.price ?? 0,
          name: product.name,
          productNumber: product.productNumber,
          attributes: product.attributes,
          workingTableAdditionalAttributes:
              _getWorkingTableAdditionAttributes(product: product),
        )));
      });
    }
  }

  WorkingTableAdditionalAttributes? _getWorkingTableAdditionAttributes(
      {required EntityWorkingTableProduct product}) {
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
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    final frameColors = product.frameColors
        ?.map((frameColor) => frameColor.copyWith(
            pictureBytes: _cubitPictures.state[
                'product_${product.productNumber}_${frameColor.name}.png']))
        .toList();
    return WorkingTableAdditionalAttributes(
        listEntityGestell: frameColors ?? [],
        selectedEntityGestell: product.frameColors?.firstOrNull,
        listBreisteUndTiefe: product.breiteXTiefe ?? [],
        selectedBreiteUndTiefe: product.breiteXTiefe?.firstOrNull);
  }
}
