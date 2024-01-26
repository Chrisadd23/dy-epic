import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/entity/entity_product_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

abstract class DataSourceProductWorkingTable {
  Future<Either<Failure, EntityArbeitsTischeProduct>> loadData(
      EnumCategoryWorkingTable? product);
}

class DataSourceProductWorkingtableImplementation
    extends DataSourceProductWorkingTable {
  @override
  Future<Either<Failure, EntityArbeitsTischeProduct>> loadData(
      EnumCategoryWorkingTable? product) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      return Right(dummyListProductArbeitstische[product] ??
          dummyListProductArbeitstische[
              EnumCategoryWorkingTable.slavonischeEiche]!);
    } catch (e) {
      debugPrint(e.toString());
      return Left('Konnte nicht geladen werden' as Failure);
    }
  }
}

final Map<EnumCategoryWorkingTable, EntityArbeitsTischeProduct>
    dummyListProductArbeitstische = {
  EnumCategoryWorkingTable.slavonischeEiche:
      EntityArbeitsTischeProduct(name: 'E-Smart', frameColors: [
    Gestell(
      color: AppColors.whiteD6D6D7,
      material: '',
      picturePath: Assets.products.arbeitstische.slavonischeEicheWeiss.path,
    ),
    Gestell(
        color: AppColors.grey8D8D8E,
        material: '',
        picturePath: Assets.products.arbeitstische.slavonischeEicheSilber.path),
    Gestell(
        color: AppColors.black080808,
        material: '',
        picturePath:
            Assets.products.arbeitstische.slavonischeEicheSchwarz.path),
  ], breiteXTiefe: [
    const BreiteXTiefe(breite: '1.600', tiefe: '800'),
    const BreiteXTiefe(breite: '1.800', tiefe: '800'),
    const BreiteXTiefe(breite: '2.000', tiefe: '800'),
  ]),
  EnumCategoryWorkingTable.ahorn:
      EntityArbeitsTischeProduct(name: 'E-Smart', frameColors: [
    Gestell(
      color: AppColors.whiteD6D6D7,
      material: '',
      picturePath: Assets.products.arbeitstische.ahornWeiss.path,
    ),
    Gestell(
        color: AppColors.grey8D8D8E,
        material: '',
        picturePath: Assets.products.arbeitstische.ahornSilber.path),
    Gestell(
        color: AppColors.black080808,
        material: '',
        picturePath: Assets.products.arbeitstische.ahornSchwarz.path),
  ], breiteXTiefe: [
    const BreiteXTiefe(breite: '1.600', tiefe: '800'),
    const BreiteXTiefe(breite: '1.800', tiefe: '800'),
    const BreiteXTiefe(breite: '2.000', tiefe: '800'),
  ]),
  EnumCategoryWorkingTable.buche:
      EntityArbeitsTischeProduct(name: 'E-Smart', frameColors: [
    Gestell(
      color: AppColors.whiteD6D6D7,
      material: '',
      picturePath: Assets.products.arbeitstische.bucheWeiss.path,
    ),
    Gestell(
        color: AppColors.grey8D8D8E,
        material: '',
        picturePath: Assets.products.arbeitstische.bucheSilber.path),
    Gestell(
        color: AppColors.black080808,
        material: '',
        picturePath: Assets.products.arbeitstische.bucheSchwarz.path),
  ], breiteXTiefe: [
    const BreiteXTiefe(breite: '1.600', tiefe: '800'),
    const BreiteXTiefe(breite: '1.800', tiefe: '800'),
    const BreiteXTiefe(breite: '2.000', tiefe: '800'),
  ]),
  EnumCategoryWorkingTable.lSchwarz:
      EntityArbeitsTischeProduct(name: 'E-Smart', frameColors: [
    Gestell(
      color: AppColors.whiteD6D6D7,
      material: '',
      picturePath: Assets.products.arbeitstische.lWeiss.path,
    ),
    Gestell(
        color: AppColors.grey8D8D8E,
        material: '',
        picturePath: Assets.products.arbeitstische.lSilber.path),
    Gestell(
        color: AppColors.black080808,
        material: '',
        picturePath: Assets.products.arbeitstische.lSchwarz.path),
  ], breiteXTiefe: [
    const BreiteXTiefe(breite: '1.600', tiefe: '800'),
    const BreiteXTiefe(breite: '1.800', tiefe: '800'),
    const BreiteXTiefe(breite: '2.000', tiefe: '800'),
  ]),
  EnumCategoryWorkingTable.wSchwarz:
      EntityArbeitsTischeProduct(name: 'E-Smart', frameColors: [
    Gestell(
      color: AppColors.whiteD6D6D7,
      material: '',
      picturePath: Assets.products.arbeitstische.wWeiss.path,
    ),
    Gestell(
        color: AppColors.grey8D8D8E,
        material: '',
        picturePath: Assets.products.arbeitstische.wSilber.path),
    Gestell(
        color: AppColors.black080808,
        material: '',
        picturePath: Assets.products.arbeitstische.wSchwarz.path),
  ], breiteXTiefe: [
    const BreiteXTiefe(breite: '1.600', tiefe: '800'),
    const BreiteXTiefe(breite: '1.800', tiefe: '800'),
    const BreiteXTiefe(breite: '2.000', tiefe: '800'),
  ]),
};
