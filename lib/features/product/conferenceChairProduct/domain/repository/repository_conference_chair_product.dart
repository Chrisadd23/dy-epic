import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/entity/entity_conference_chair_product.dart';
import 'package:either_dart/either.dart';

abstract class RepositoryConferenceChairProduct {
  Future<Either<Failure, EntityConferenceChairProduct>>
      getConferenceChairProduct({required String product});
}
