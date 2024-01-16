import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/data/datasource/datasource_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/domain/entity/entity_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/domain/repository/repository_konferenzstuehle.dart';
import 'package:either_dart/either.dart';

class RepositoryConferenceChairImplementation
    extends RepositoryConferenceChair {
  RepositoryConferenceChairImplementation(
      {required this.dataSourceConferenceChair});

  final DataSourceConferenceChair dataSourceConferenceChair;

  @override
  Future<Either<Failure, EntityConferenceChair>> getConferencChaire(
      {String? officeChairCategory}) async {
    // TODO: implement getConferencChaire
    return dataSourceConferenceChair.getConferenceChair();
  }
}
