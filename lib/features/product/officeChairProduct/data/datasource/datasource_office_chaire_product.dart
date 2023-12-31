import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/entity/entity_office_chair_product.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceOfficeChairProduct {
  Future<Either<Failure, EntityOfficeChairProduct>> getOfficeChairProduct();
}

class DataSourceOfficeChairProductImplementation
    extends DataSourceOfficeChairProduct {
  @override
  Future<Either<Failure, EntityOfficeChairProduct>>
      getOfficeChairProduct() async {
    // TODO: implement getOfficeChairProduct
    try {
      return Right(_dummyListProductConferenceChair[0]);
    } catch (e) {
      return Left('Datasourceabfrage failed' as Failure);
    }
  }
}

final _dummyListProductConferenceChair = [
  const EntityOfficeChairProduct(name: 'name', attributes: ['---'])
];
