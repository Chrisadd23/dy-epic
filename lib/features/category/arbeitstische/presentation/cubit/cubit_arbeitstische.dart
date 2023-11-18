import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/cubit/state_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitWorkTables extends Cubit<StateWorkTable> {
  CubitWorkTables() : super(const StateWorkTable());

  Future<void> load() async {
    final listProduct = [
      Product(
          productType: EnumCategoryWorkingTable.slavonischeEiche,
          price: 0.0,
          picturePath:
              Assets.products.arbeitstische.slavonischeEicheSchwarz.path),
      Product(
          productType: EnumCategoryWorkingTable.ahorn,
          price: 0.0,
          picturePath: Assets.products.arbeitstische.ahornSchwarz.path),
      Product(
          productType: EnumCategoryWorkingTable.buche,
          price: 0.0,
          picturePath: Assets.products.arbeitstische.bucheSchwarz.path),
      Product(
          productType: EnumCategoryWorkingTable.lSchwarz,
          price: 0.0,
          picturePath: Assets.products.arbeitstische.lSchwarz.path),
      Product(
          productType: EnumCategoryWorkingTable.wSchwarz,
          price: 0.0,
          picturePath: Assets.products.arbeitstische.wSchwarz.path)
    ];
    emit(state.copyWith(
        productCategory: ProductCategory(
            listProduct: listProduct, categoryName: 'Arbeitstische')));
  }
}
