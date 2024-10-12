import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/domain/repository/product_integration_repository.dart';
import 'package:either_dart/either.dart';

class GetImageUseCase {
  GetImageUseCase({required this.uploadProductRepository});

  final ProductIntegrationRepository uploadProductRepository;

  Future<Either<Failure, Uint8List>> call() =>
      uploadProductRepository.getLocalImage();
}
