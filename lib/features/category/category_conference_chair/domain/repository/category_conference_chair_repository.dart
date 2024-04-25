import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:either_dart/either.dart';

import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/domain/entity/entity_konferenzstuehle.dart';

abstract class RepositoryConferenceChair {
  Future<Either<Failure, EntityConferenceChair>> getConferencChaire(
      {String? conferenceChairCategory});
}
