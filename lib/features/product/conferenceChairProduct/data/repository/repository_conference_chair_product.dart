import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/data/datasource/datasource_conference_char_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/entity/entity_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/repository/repository_conference_chair_product.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

class RepositoryConferenceChairProductImplementation
    extends RepositoryConferenceChairProduct {
  RepositoryConferenceChairProductImplementation(
      {required this.dataSourceConferenceChairProduct});

  final DataSourceConferenceChairProduct dataSourceConferenceChairProduct;
  final List<EntityConferenceChairProduct> _localListEntityConferenceChair = [];

  @override
  Future<Either<Failure, EntityConferenceChairProduct>>
      getConferenceChairProduct({required String productNumber}) async {
    if (_localListEntityConferenceChair.isEmpty ||
        !_localListEntityConferenceChair
            .any((element) => element.productNumber == productNumber)) {
      return dataSourceConferenceChairProduct
          .getConferenceChairProduct(productNumber: productNumber)
          .fold((left) => Left(left), (entityConferenceChair) {
        _localListEntityConferenceChair.add(entityConferenceChair);
        debugPrint(
            "productNumberentity ${entityConferenceChair.productNumber}");
        return Right(entityConferenceChair);
      });
    } else {
      return Right(_localListEntityConferenceChair
          .where((element) => element.productNumber == productNumber)
          .first);
    }
  }

  @override
  List<EntityConferenceChairProduct> get listOfficeChairProduct =>
      _localListEntityConferenceChair;
}
