import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/data/datasource/datasource_conference_char_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/entity/entity_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/repository/repository_conference_chair_product.dart';
import 'package:either_dart/either.dart';

class RepositoryConferenceChairProductImplementation
    extends RepositoryConferenceChairProduct {
  RepositoryConferenceChairProductImplementation(
      {required this.dataSourceConferenceChairProduct});

  final DataSourceConferenceChairProduct dataSourceConferenceChairProduct;

  @override
  Future<Either<Failure, EntityConferenceChairProduct>>
      getConferenceChairProduct() async {
    // TODO: implement getConferenceChairProduct
    return dataSourceConferenceChairProduct.getConferenceChairProduct();
  }
}
