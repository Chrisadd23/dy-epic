import 'package:app_flutter_produkt_bestellen/features/product/data/datasource/product_integration_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/product/data/repository/product_integration_repository_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/product/domain/repository/product_integration_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/product/domain/use_case/get_image_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/product/domain/use_case/upload_product_image_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/product/domain/use_case/upload_product_info_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/cubit/product_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/cubit/product_integration_cubit.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

abstract class ProductDependencies {
  static setUp() {
    getIt
      ..registerLazySingleton<ProductIntegrationDataSource>(
          () => ProductIntegrationDataSourceImplementation())
      ..registerLazySingleton<ProductIntegrationRepository>(() =>
          ProductIntegrationRepositoryImplementation(
              uploadProductDataSource: getIt()))
      ..registerLazySingleton<GetImageUseCase>(
          () => GetImageUseCase(uploadProductRepository: getIt()))
      ..registerLazySingleton<UploadProductInfoUseCase>(
          () => UploadProductInfoUseCase(uploadProductRepository: getIt()))
      ..registerLazySingleton<UploadProductImageUseCase>(
          () => UploadProductImageUseCase(getIt()))
      ..registerFactory<ProductCubit>(() => ProductCubit(getIt()))
      ..registerFactory<ProductIntegrationCubit>(() => ProductIntegrationCubit(
            getIt(),
            getIt(),
            getIt(),
            getIt(),
          ));
  }
}
