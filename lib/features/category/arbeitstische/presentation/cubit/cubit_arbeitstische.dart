import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/repository/repository_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitWorkTables extends Cubit<StateCategory> {
  CubitWorkTables({required this.repositoryArbeitstische})
      : super(const StateCategory());

  final RepositoryArbeitstische repositoryArbeitstische;

  Future<void> load() async {
    await repositoryArbeitstische.getArbeitstische().fold((failure) {},
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
