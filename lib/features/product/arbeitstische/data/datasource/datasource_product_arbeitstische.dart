import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/domain/entity/entity_product_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

abstract class DataSourceProductWorkingTable {
  Future<Either<Failure, List<EntityArbeitsTischeProduct>>> loadData(
      String? product);
}

class DataSourceProductWorkingtableImplementation
    extends DataSourceProductWorkingTable {
  @override
  Future<Either<Failure, List<EntityArbeitsTischeProduct>>> loadData(
      String? product) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      return Right(dummyListProductArbeitstische);
    } catch (e) {
      debugPrint(e.toString());
      return Left('Konnte nicht geladen werden' as Failure);
    }
  }
}

final List<EntityArbeitsTischeProduct> dummyListProductArbeitstische = [
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
      picturePath: Assets.products.arbeitstische.slavonischeEicheSchwarz.path),
];
