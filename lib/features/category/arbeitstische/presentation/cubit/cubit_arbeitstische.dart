import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/repository/repository_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/cubit/state_arbeitstische.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitWorkTables extends Cubit<StateWorkTable> {
  CubitWorkTables({required this.repositoryArbeitstische})
      : super(const StateWorkTable());

  final RepositoryArbeitstische repositoryArbeitstische;

  Future<void> load() async {
    repositoryArbeitstische.getArbeitstische().fold((failure) {},
        (listArbeitsTische) {
      final products = listArbeitsTische
          .map((arbeitsTische) => {
                arbeitsTische.categoryName: arbeitsTische.listProduct
                    .map((arbeitstisch) => Product(
                        productType: arbeitstisch.productType,
                        price: arbeitstisch.price,
                        picturePath: arbeitstisch.picturePath))
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
