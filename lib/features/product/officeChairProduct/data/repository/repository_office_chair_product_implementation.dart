import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/data/datasource/datasource_office_chaire_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/entity/entity_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/repository/repository_office_chair_product.dart';
import 'package:either_dart/either.dart';

class RepositoryOfficeChairProductImplementation
    extends RepositoryOfficeChairProduct {
  RepositoryOfficeChairProductImplementation(
      {required this.dataSourceOfficeChairProduct});

  final DataSourceOfficeChairProduct dataSourceOfficeChairProduct;

  @override
  Future<Either<Failure, EntityOfficeChairProduct>> getOfficeChairProduct(
      {required String product}) async {
    // TODO: implement getOfficeChairProduct
    return dataSourceOfficeChairProduct.getOfficeChairProduct(product: product);
  }
}
