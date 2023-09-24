import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/cubit/state_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitWorkTables extends Cubit<StateWorkTable> {
  CubitWorkTables() : super(const StateWorkTable());

  Future<void> load() async {
    final listProduct = [
      Product(
          productName: 'Slavonische Eiche',
          price: 0.0,
          picturePath:
              Assets.products.arbeitstische.slavonischeEicheSchwarz.path),
      Product(
          productName: 'Ahorn',
          price: 0.0,
          picturePath: Assets.products.arbeitstische.ahornSchwarz.path),
      Product(
          productName: 'Buche',
          price: 0.0,
          picturePath: Assets.products.arbeitstische.bucheSchwarz.path),
      Product(
          productName: 'lSchwarz',
          price: 0.0,
          picturePath: Assets.products.arbeitstische.lSchwarz.path),
      Product(
          productName: 'wSchwarz',
          price: 0.0,
          picturePath: Assets.products.arbeitstische.wSchwarz.path)
    ];
    emit(state.copyWith(
        productCategory: ProductCategory(
            listProduct: listProduct, categoryName: 'Arbeitstische')));
  }
}
