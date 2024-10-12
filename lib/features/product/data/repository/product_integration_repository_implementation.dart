import 'dart:io';
import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/data/datasource/product_integration_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/product/domain/repository/product_integration_repository.dart';
import 'package:either_dart/either.dart';

class ProductIntegrationRepositoryImplementation
    extends ProductIntegrationRepository {
  ProductIntegrationRepositoryImplementation(
      {required this.uploadProductDataSource});

  final ProductIntegrationDataSource uploadProductDataSource;
  File? imageFile;

  @override
  Future<Either<Failure, Uint8List>> getLocalImage() => uploadProductDataSource
          .getLocalImage()
          .fold((failure) => Left(failure), (imageFile) {
        this.imageFile = imageFile;
        return Right(this.imageFile!.readAsBytesSync());
      });

  @override
  Future<Either<Failure, bool>> uploadProductInfo(
          {required Map<String, dynamic> json, required String category}) =>
      uploadProductDataSource.uploadProductInfo(json: json, category: category);

  @override
  void clear() {
    imageFile = null;
    uploadProductDataSource.clear();
  }

  @override
  Future<Either<Failure, bool>> uploadProductImage(
          {required String productNumber}) =>
      uploadProductDataSource.uploadProductImage(
        productNumber: productNumber,
        image: imageFile,
      );
}
