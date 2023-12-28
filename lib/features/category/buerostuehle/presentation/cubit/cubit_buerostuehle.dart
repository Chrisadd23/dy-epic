import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/domain/repository/repository_buerostuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class CubitOfficeChair extends Cubit<StateProduct> {
  CubitOfficeChair({required this.repositoryOfficeChair})
      : super(const StateProduct());

  final RepositoryBuerodrehstuehle repositoryOfficeChair;

  Future<void> load(String instanceName) async {
    debugPrint('instanceName ==> $instanceName');
    repositoryOfficeChair
        .getBuerodrehstuehle(officeChairCategory: instanceName)
        .fold((failure) {}, (listOfficeChair) {
      final products = listOfficeChair
          .map((officeChairs) => {
                officeChairs.categoryName: officeChairs.listProduct
                    .map((chair) => Product(
                        productType: chair.productType,
                        price: chair.price,
                        picturePath: chair.picturePath))
                    .toList()
              })
          .toList();
      emit(state.copyWith(
          productCategory: ProductCategory(
              listProduct: products[0].values.first,
              categoryName: products[0].keys.first)));
    });
  }
}
