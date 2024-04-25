import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:either_dart/either.dart';

import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/domain/entity/entity_buerodrehstuehle.dart';

abstract class RepositoryBuerodrehstuehle {
  Future<Either<Failure, EntityBuerodrehstuehle>> getBuerodrehstuehle(
      {String? officeChairCategory});

  Future<Either<Failure, Uint8List?>> getPicturePath(
      {required List<String> productTypes});
}
