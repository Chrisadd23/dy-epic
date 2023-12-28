import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/domain/entity/entity_konferenzstuehle.dart';
import 'package:either_dart/either.dart';

abstract class RepositoryConferenceChair {
  Future<Either<Failure, List<EntityConferenceChair>>> getConferencChaire(
      {String? officeChairCategory});
}
