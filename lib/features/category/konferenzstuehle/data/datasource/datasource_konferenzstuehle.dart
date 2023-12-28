import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/domain/entity/entity_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceConferenceChair {
  Future<Either<Failure, List<EntityConferenceChair>>> getConferenceChair(
      {String? officeChairCategory});
}

class DataSourceConferenceChairImplementation
    extends DataSourceConferenceChair {
  @override
  Future<Either<Failure, List<EntityConferenceChair>>> getConferenceChair(
      {String? officeChairCategory}) async {
    // TODO: implement getConferenceChair
    try {
      return Right(_listProductSortiment);
    } catch (e) {
      return Left('Sortiment konnte nicht geladen werden' as Failure);
    }
  }
}

final _listProductSortiment = [
  EntityConferenceChair(categoryName: 'Konferenzstühle', listProduct: [
    EntityProduct(
        productType: EnumCategoryConferenceChair.camiro,
        price: 329.00,
        indexNumber: 0,
        picturePath:
            Assets.products.konferenzstuehle.camiroFreischwingerNetz.path),
    EntityProduct(
        productType: EnumCategoryConferenceChair.camiro,
        price: 330.00,
        indexNumber: 0,
        picturePath:
            Assets.products.konferenzstuehle.camiroFreischwingerPolster.path),
  ])
];
