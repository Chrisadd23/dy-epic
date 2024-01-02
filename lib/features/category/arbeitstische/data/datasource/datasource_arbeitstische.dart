import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/entity/entity_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceArbeitstische {
  Future<Either<Failure, List<EntityArbeitstische>>> getArbeitstischeData();
}

class DataSourceArbeitstischeImplementation extends DataSourceArbeitstische {
  @override
  Future<Either<Failure, List<EntityArbeitstische>>>
      getArbeitstischeData() async {
    // TODO: implement getArbeitstischeData
    try {
      return Right(_listProductSortiment);
    } catch (e) {
      return Left('Sortiment konnte nicht geladen werden' as Failure);
    }
  }
}

final _listProductSortiment = [
  EntityArbeitstische(categoryName: 'E-Smart', listProduct: [
    EntityProduct(
        name: ' ',
        indexNumber: 0,
        productType: EnumCategoryWorkingTable.slavonischeEiche,
        price: 0.0,
        picturePath:
            Assets.products.arbeitstische.slavonischeEicheSchwarz.path),
    EntityProduct(
        name: ' ',
        indexNumber: 1,
        productType: EnumCategoryWorkingTable.ahorn,
        price: 0.0,
        picturePath: Assets.products.arbeitstische.ahornSchwarz.path),
    EntityProduct(
        name: ' ',
        indexNumber: 2,
        productType: EnumCategoryWorkingTable.buche,
        price: 0.0,
        picturePath: Assets.products.arbeitstische.bucheSchwarz.path),
    EntityProduct(
      name: ' ',
      indexNumber: 3,
      productType: EnumCategoryWorkingTable.lSchwarz,
      price: 0.0,
      picturePath: Assets.products.arbeitstische.lSchwarz.path,
    ),
    EntityProduct(
        name: ' ',
        indexNumber: 4,
        productType: EnumCategoryWorkingTable.wSchwarz,
        price: 0.0,
        picturePath: Assets.products.arbeitstische.wSchwarz.path)
  ])
];
