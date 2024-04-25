import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/data/datasource/category_conference_chair_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/domain/entity/entity_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/domain/repository/category_conference_chair_repository.dart';
import 'package:either_dart/either.dart';

class RepositoryConferenceChairImplementation
    extends RepositoryConferenceChair {
  RepositoryConferenceChairImplementation(
      {required this.dataSourceConferenceChair});

  final DataSourceConferenceChair dataSourceConferenceChair;

  @override
  Future<Either<Failure, EntityConferenceChair>> getConferencChaire(
      {String? conferenceChairCategory}) async {
    // TODO: implement getConferencChaire
    return dataSourceConferenceChair.getConferenceChair();
  }
}
