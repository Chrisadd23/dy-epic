import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:either_dart/either.dart';

abstract class ProductIntegrationRepository {
  Future<Either<Failure, bool>> uploadProductInfo({
    required Map<String, dynamic> json,
    required String category,
  });

  Future<Either<Failure, Uint8List>> getLocalImage();

  void clear();

  Future<Either<Failure, bool>> uploadProductImage(
      {required String productNumber});
}
