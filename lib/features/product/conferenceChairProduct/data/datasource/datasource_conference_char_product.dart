import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/entity/entity_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceConferenceChairProduct {
  Future<Either<Failure, EntityConferenceChairProduct>>
      getConferenceChairProduct({required String product});
}

class DataSourceConferenceChairProductImplementation
    extends DataSourceConferenceChairProduct {
  @override
  Future<Either<Failure, EntityConferenceChairProduct>>
      getConferenceChairProduct({required String product}) async {
    // TODO: implement getConferenceChairProduct
    try {
      return Right(_dummyListProductConferenceChair[0]);
    } catch (e) {
      return Left('datasource failure' as Failure);
    }
  }
}

final _dummyListProductConferenceChair = [
  EntityConferenceChairProduct(
      name: 'CAMIRO Freischwinger Netz',
      attributes: [
        'Rücken Netz - Sitz Polster'
            'Rücken Stoff Comf Style 4341 schwarz'
            'Armlehnen fest mit Kunststoffarmauflage'
            'Sitz Stoff Just 60999 schwarz'
            'Label OS'
            'Gestell Ausführung: stapelbar verchromt'
            'Filzgleiter für harte Böden'
      ],
      price: 329.00,
      picturePath:
          Assets.products.konferenzstuehle.camiroFreischwingerNetz.path)
];
