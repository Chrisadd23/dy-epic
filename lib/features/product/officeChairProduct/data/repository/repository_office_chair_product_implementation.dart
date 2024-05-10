import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/data/datasource/datasource_office_chaire_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/entity/entity_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/repository/repository_office_chair_product.dart';
import 'package:either_dart/either.dart';

class RepositoryOfficeChairProductImplementation
    extends RepositoryOfficeChairProduct {
  RepositoryOfficeChairProductImplementation(
      {required this.dataSourceOfficeChairProduct});

  final DataSourceOfficeChairProduct dataSourceOfficeChairProduct;
  final List<EntityOfficeChairProduct> _listOfficeChair = [];

  @override
  Future<Either<Failure, EntityOfficeChairProduct>> getOfficeChairProduct(
      {required String productNumber}) async {
    if (_listOfficeChair.isEmpty ||
        !_listOfficeChair
            .any((element) => element.productNumber == productNumber)) {
      return dataSourceOfficeChairProduct
          .getOfficeChairProduct(productNumber: productNumber)
          .fold((left) => Left(left), (entityOfficeChair) {
        _listOfficeChair.add(entityOfficeChair);

        return Right(entityOfficeChair);
      });
    } else {
      return Right(_listOfficeChair
          .where((element) => element.productNumber == productNumber)
          .first);
    }
  }

  @override
  List<EntityOfficeChairProduct> get listOfficeChairProduct => _listOfficeChair;
}
