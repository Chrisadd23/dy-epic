import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/entity/entity_office_chair_product.dart';
import 'package:either_dart/either.dart';

abstract class RepositoryOfficeChairProduct {
  Future<Either<Failure, EntityOfficeChairProduct>> getOfficeChairProduct(
      {required String productNumber});
}
