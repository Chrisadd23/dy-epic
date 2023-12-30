import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/entity/entity_conference_chair_product.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceConferenceChairProduct {
  Future<Either<Failure, EntityConferenceChairProduct>>
      getConferenceChairProduct();
}

class DataSourceConferenceChairProductImplementation
    extends DataSourceConferenceChairProduct {
  @override
  Future<Either<Failure, EntityConferenceChairProduct>>
      getConferenceChairProduct() async {
    // TODO: implement getConferenceChairProduct
    try {
      return Right(_dummyListProductConferenceChair[0]);
    } catch (e) {
      return Left('datasource failure' as Failure);
    }
  }
}

final _dummyListProductConferenceChair = [
  const EntityConferenceChairProduct(name: 'name', attributes: ['---'])
];
