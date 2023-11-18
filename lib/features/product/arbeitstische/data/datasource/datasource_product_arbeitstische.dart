import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/entity/entity_product_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

abstract class DataSourceProductWorkingTable {
  Future<Either<Failure, List<EntityArbeitsTischeProduct>>> loadData(
      EnumCategoryWorkingTable? product);
}

class DataSourceProductWorkingtableImplementation
    extends DataSourceProductWorkingTable {
  @override
  Future<Either<Failure, List<EntityArbeitsTischeProduct>>> loadData(
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

final Map<EnumCategoryWorkingTable, List<EntityArbeitsTischeProduct>>
    dummyListProductArbeitstische = {
  EnumCategoryWorkingTable.slavonischeEiche: [
    EntityArbeitsTischeProduct(
      frameColors: const Gestell(
        color: AppColors.whiteD6D6D7,
        material: '',
      ),
      picturePath: Assets.products.arbeitstische.slavonischeEicheWeiss.path,
    ),
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(color: AppColors.greyC1C1C1, material: ''),
        picturePath: Assets.products.arbeitstische.slavonischeEicheSilber.path),
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(color: AppColors.black080808, material: ''),
        picturePath:
            Assets.products.arbeitstische.slavonischeEicheSchwarz.path),

    //------
    /*
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(
          color: AppColors.whiteD6D6D7,
          material: '',
        ),
        picturePath: Assets.products.arbeitstische.slavonischeEicheWeiss.path),
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(color: AppColors.greyC1C1C1, material: ''),
        picturePath: Assets.products.arbeitstische.slavonischeEicheSilber.path),
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(color: AppColors.black080808, material: ''),
        picturePath:
            Assets.products.arbeitstische.slavonischeEicheSchwarz.path),
    //----
    */
  ],
  EnumCategoryWorkingTable.ahorn: [
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(
          color: AppColors.whiteD6D6D7,
          material: '',
        ),
        picturePath: Assets.products.arbeitstische.ahornWeiss.path),
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(color: AppColors.greyC1C1C1, material: ''),
        picturePath: Assets.products.arbeitstische.ahornSilber.path),
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(color: AppColors.black080808, material: ''),
        picturePath: Assets.products.arbeitstische.ahornSchwarz.path),
  ],
  EnumCategoryWorkingTable.buche: [
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(
          color: AppColors.whiteD6D6D7,
          material: '',
        ),
        picturePath: Assets.products.arbeitstische.bucheWeiss.path),
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(color: AppColors.greyC1C1C1, material: ''),
        picturePath: Assets.products.arbeitstische.bucheSilber.path),
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(color: AppColors.black080808, material: ''),
        picturePath: Assets.products.arbeitstische.bucheSchwarz.path),
  ],
  EnumCategoryWorkingTable.lSchwarz: [
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(
          color: AppColors.whiteD6D6D7,
          material: '',
        ),
        picturePath: Assets.products.arbeitstische.lWeiss.path),
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(color: AppColors.greyC1C1C1, material: ''),
        picturePath: Assets.products.arbeitstische.lSilber.path),
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(color: AppColors.black080808, material: ''),
        picturePath: Assets.products.arbeitstische.lSchwarz.path),
  ],
  EnumCategoryWorkingTable.wSchwarz: [
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(
          color: AppColors.whiteD6D6D7,
          material: '',
        ),
        picturePath: Assets.products.arbeitstische.wWeiss.path),
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(color: AppColors.greyC1C1C1, material: ''),
        picturePath: Assets.products.arbeitstische.wSilber.path),
    EntityArbeitsTischeProduct(
        frameColors: const Gestell(color: AppColors.black080808, material: ''),
        picturePath: Assets.products.arbeitstische.wSchwarz.path),
  ]
};
