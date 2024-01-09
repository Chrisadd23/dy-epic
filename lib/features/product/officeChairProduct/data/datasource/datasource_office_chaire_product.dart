import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/entity/entity_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceOfficeChairProduct {
  Future<Either<Failure, EntityOfficeChairProduct>> getOfficeChairProduct(
      {required String product});
}

class DataSourceOfficeChairProductImplementation
    extends DataSourceOfficeChairProduct {
  @override
  Future<Either<Failure, EntityOfficeChairProduct>> getOfficeChairProduct(
      {required String product}) async {
    // TODO: implement getOfficeChairProduct
    try {
      return Right(_dummyListProductConferenceChair[0]);
    } catch (e) {
      return Left('Datasourceabfrage failed' as Failure);
    }
  }
}

final _dummyListProductConferenceChair = [
  EntityOfficeChairProduct(
      name: 'Xenon Net Bürodrehstuhl',
      attributes: [
        'Höhen- und Tiefenverstellbare Lumbalstütze'
            'Schiebesitz'
            'Netzrückenlehne und Synchronmechanik'
            'flexible atmungsaktive Rückenlehne'
            'Widerstand der Rückenlehne einstellbar'
            'Fußkreuz Kunststoff schwarz'
            'Gasfeder schwarz'
            'Bezugsfarbe schwarz'
      ],
      price: 329.00,
      picturePath: Assets.products.buerodrehstuehle.xenonNet.path)
];
