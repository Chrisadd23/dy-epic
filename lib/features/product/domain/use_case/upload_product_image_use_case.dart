import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/domain/repository/product_integration_repository.dart';
import 'package:either_dart/either.dart';

class UploadProductImageUseCase {
  UploadProductImageUseCase(this._productIntegrationRepository);

  Future<Either<Failure, bool>> call({required String productNumber}) =>
      _productIntegrationRepository.uploadProductImage(
          productNumber: productNumber);

  final ProductIntegrationRepository _productIntegrationRepository;
}
