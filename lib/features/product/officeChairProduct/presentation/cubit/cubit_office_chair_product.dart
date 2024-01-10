import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/repository/repository_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/presentation/cubit/state_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

class CubitOfficeChairProduct
    extends CubitProduct<CubitOfficeChairProduct, StateOfficeChairProduct> {
  CubitOfficeChairProduct({required this.repositoryOfficeChairProduct});

  final RepositoryOfficeChairProduct repositoryOfficeChairProduct;

  @override
  Future<void> load({required dynamic product}) async {
    await repositoryOfficeChairProduct
        .getOfficeChairProduct(product: product)
        .fold((failure) {}, (officeChair) {
      debugPrint('officeChair => $officeChair');
      final characteristics = {
        EnumOfficeChairProduct.name: officeChair.name,
        EnumOfficeChairProduct.picturePath: officeChair.picturePath,
      };
      emit(
        StateProduct.success(
          product: StateOfficeChairProduct(
              name: officeChair.name, attributes: officeChair.attributes),
          selectedCharacteristics: characteristics,
        ),
      );
    });
  }
}
