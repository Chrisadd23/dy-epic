import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/repository/repository_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitWorkTables extends Cubit<StateCategory> {
  CubitWorkTables({required this.repositoryArbeitstische})
      : super(const StateCategory.loading());

  final RepositoryArbeitstische repositoryArbeitstische;

  Future<void> load() async {
    if (state != const StateCategory.loading()) {
      emit(const StateCategory.loading());
    }
    await repositoryArbeitstische.getArbeitstische().fold((failure) {},
        (listArbeitsTische) {
      final productCategory = ProductCategory(
          categoryName: listArbeitsTische.categoryName,
          listProduct: listArbeitsTische.listProduct
              .map((arbeitstisch) => Product(
                  productType: arbeitstisch.productType,
                  price: arbeitstisch.price,
                  picturePath: arbeitstisch.picturePath,
                  name: arbeitstisch.name))
              .toList());

      emit(StateCategory.success(productCategory: productCategory));
    });
  }
}
