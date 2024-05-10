import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/entity/entity_product_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/repository/repostiory_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/use_case/get_additional_attributes/get_additional_attributes_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class CubitWorkingTableProduct extends CubitProduct<CubitWorkingTableProduct> {
  CubitWorkingTableProduct(
      this._cubitPictures, this._getAdditionalAttributesUseCase,
      {required this.repositoryProductWorkingTable});

  final RepositoryWorkingTable repositoryProductWorkingTable;
  final CubitPictures _cubitPictures;
  final GetAdditionalAttributesUseCase _getAdditionalAttributesUseCase;

  @override
  Future<void> load(
      {String? productNumber,
      ({ShoppingBasketProduct chosenProduct, int index})? recordOrder,
      String? color}) async {
    if (recordOrder == null) {
      await repositoryProductWorkingTable
          .getWorkingTableProduct(productNumber)
          .fold((failure) {
        emit(const StateProduct());
      }, (product) async {
        final workingTableAdditionalAttributes =
            await _getSizeAndColorAttributes(
                product: product, selectedColor: color);
        final additionalAttributes = await _getAdditionalAttributesUseCase();

        additionalAttributes.fold((failure) {}, (additionalAttributes) {
          emit(StateProduct(
              productEntity: EntityProduct(
            productCategory: EnumCategoryProduct.workingTable,
            price: product.breiteXTiefe?.firstOrNull?.price ?? 0,
            name: product.name,
            productNumber: product.productNumber,
            attributes: product.attributes,
            workingTableSizeAndColor: workingTableAdditionalAttributes,
            additionalAttributes: additionalAttributes,
          )));
        });
      });
    } else {
      final product = repositoryProductWorkingTable
          .localEntityWorkingTableProduct
          .where((element) =>
              element.productNumber == recordOrder.chosenProduct.productNumber)
          .first;

      final price = product.breiteXTiefe!
          .where((element) {
            return element.breite.contains(
                    recordOrder.chosenProduct.widthAndHeight!.width) &&
                element.tiefe
                    .contains(recordOrder.chosenProduct.widthAndHeight!.height);
          })
          .first
          .price;
      final sizeAndColor = await _getSizeAndColorAttributes(
          product: product,
          selectedColor: recordOrder.chosenProduct.color,
          size: recordOrder.chosenProduct.widthAndHeight);
      final additionalAttributes = await _getAdditionalAttributesUseCase()
          .fold((_) => null, (additionalAttributes) => additionalAttributes);
      emit(StateProduct(
          productEntity: EntityProduct(
              productCategory: EnumCategoryProduct.category(
                  type: recordOrder.chosenProduct.productType),
              price: price,
              name: product.name,
              productNumber: recordOrder.chosenProduct.productNumber,
              attributes: product.attributes,
              additionalAttributes: additionalAttributes,
              workingTableSizeAndColor: sizeAndColor),
          productOrderCount: recordOrder.chosenProduct.productCount,
          position: recordOrder.index));
    }
  }

  Future<WorkingTableSizeAndColor?> _getSizeAndColorAttributes(
      {required EntityWorkingTableProduct product,
      String? selectedColor,
      Size? size}) async {
    final listPicturePath = product.frameColors
            ?.map((e) => 'product_${product.productNumber}_${e.name}.png')
            .toList() ??
        [];

    try {
      if (listPicturePath.isNotEmpty) {
        await listPicturePath
            .map((picture) async {
              if (!(_cubitPictures.state.containsKey(picture) &&
                  _cubitPictures.state[picture] != null)) {
                final imageBytes =
                    await FirebaseConfiguration.getImageBytes(picture);
                _cubitPictures.addPicture(key: picture, value: imageBytes);
              }
            })
            .toList()
            .wait;
      }
    } catch (error) {
      debugPrint("error => ${error.toString()}");
    }

    final frameColors = product.frameColors
        ?.map((frameColor) => frameColor.copyWith(
            pictureBytes: _cubitPictures.state[
                'product_${product.productNumber}_${frameColor.name}.png']))
        .toList();

    final selectedEntityGestell = selectedColor == null
        ? frameColors?.firstOrNull
        : frameColors
            ?.where((element) => element.color.toString() == selectedColor)
            .firstOrNull;

    final selectedBreiteUndTiefe = size == null
        ? product.breiteXTiefe?.firstOrNull
        : product.breiteXTiefe
            ?.where((element) =>
                element.tiefe == size.height && element.breite == size.width)
            .firstOrNull;

    return WorkingTableSizeAndColor(
      listEntityGestell: frameColors ?? [],
      selectedEntityGestell: selectedEntityGestell,
      listBreisteUndTiefe: product.breiteXTiefe ?? [],
      selectedBreiteUndTiefe: selectedBreiteUndTiefe,
    );
  }
}
