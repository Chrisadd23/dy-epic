import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/domain/entity/entity_buerodrehstuehle.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceBuerostuehle {
  Future<Either<Failure, List<EntityBuerodrehstuehle>>> getBuerodrehstuehle(
      {String? officeChairCategory});
}

class DataSourceBuerostuehleImplementation extends DataSourceBuerostuehle {
  @override
  Future<Either<Failure, List<EntityBuerodrehstuehle>>> getBuerodrehstuehle(
      {String? officeChairCategory}) async {
    // TODO: implement getBuerodrehstuehle
    try {
      return Right(
          officeChairCategory == EnumSelectOfficeChairCategory.normal.name
              ? _listProductSortiment
              : _listProducthochlehner);
    } catch (e) {
      return Left('Sortiment konnte nicht geladen werden' as Failure);
    }
  }
}

final _listProducthochlehner = [
  EntityBuerodrehstuehle(categoryName: 'Bürodrehstühle', listProduct: [
    EntityProduct(
        productType: EnumCategoryOfficeChair.kyra,
        price: 479.00,
        indexNumber: 0,
        picturePath: Assets.products.buerodrehstuehle.kyraHochlehner.path),
    EntityProduct(
        productType: EnumCategoryOfficeChair.camiro,
        price: 629.00,
        indexNumber: 0,
        picturePath: Assets.products.buerodrehstuehle.camiroHochlehner.path),
  ])
];

final _listProductSortiment = [
  EntityBuerodrehstuehle(categoryName: 'Bürodrehstühle', listProduct: [
    EntityProduct(
        productType: EnumCategoryOfficeChair.xenon,
        price: 329.00,
        indexNumber: 0,
        picturePath: Assets.products.buerodrehstuehle.xenonNet.path),
    EntityProduct(
        productType: EnumCategoryOfficeChair.kyra,
        price: 379.00,
        indexNumber: 0,
        picturePath: Assets.products.buerodrehstuehle.kyra.path),
    EntityProduct(
        productType: EnumCategoryOfficeChair.lo,
        price: 429.00,
        indexNumber: 0,
        picturePath: Assets.products.buerodrehstuehle.loPunk133.path),
  ])
];
