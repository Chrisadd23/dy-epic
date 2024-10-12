import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/domain/repository/product_integration_repository.dart';
import 'package:either_dart/either.dart';

class UploadProductInfoUseCase {
  UploadProductInfoUseCase({required this.uploadProductRepository});

  final ProductIntegrationRepository uploadProductRepository;

  Future<Either<Failure, bool>> call(
          {required Map<String, dynamic> json, required String category}) =>
      uploadProductRepository.uploadProductInfo(json: json, category: category);
}
