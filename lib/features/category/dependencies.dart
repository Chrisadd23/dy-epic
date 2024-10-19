import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/data/datasource/category_conference_chair_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/data/datasource/category_office_chair_hochlehner_data_source.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/data/datasource/category_office_chair_normal_data_source.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/data/datasource/category_workingtable_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/data/datasource/category_remote_data_source.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/repository/category_product_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/use_case_get_category_product/change_attributes_from_product_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/use_case_get_category_product/use_case_delete_product.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/use_case_get_category_product/use_case_get_category_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/cubit_category.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

abstract class CategoryDependencies {
  static setUp() {
    _setUpWorkingTable();
    _setUpConferenceChair();
    _setUpOfficeChair();
  }

  static void _setUpWorkingTable() {
    getIt
      ..registerLazySingleton<CategoryRemoteDataSource>(
        () => CategoryWorkingTableDataSource(),
        instanceName: EnumCategoryProduct.workingTable.name,
      )
      ..registerLazySingleton<CategoryProductRepository>(
        () => CategoryProductRepository(
            getIt(instanceName: EnumCategoryProduct.workingTable.name)),
        instanceName: EnumCategoryProduct.workingTable.name,
      )
      ..registerLazySingleton<UseCaseGetCategoryProduct>(
          () => UseCaseGetCategoryProduct(
                getIt(
                  instanceName: EnumCategoryProduct.workingTable.name,
                ),
              ),
          instanceName: EnumCategoryProduct.workingTable.name)
      ..registerLazySingleton<UseCaseChangeAttributesFromProduct>(
          () => UseCaseChangeAttributesFromProduct(
              getIt(instanceName: EnumCategoryProduct.workingTable.name)),
          instanceName: EnumCategoryProduct.workingTable.name)
      ..registerLazySingleton<UseCaseDeleteProduct>(
          () => UseCaseDeleteProduct(
              getIt(instanceName: EnumCategoryProduct.workingTable.name)),
          instanceName: EnumCategoryProduct.workingTable.name)
      ..registerLazySingleton<CubitCategory>(
        () => CubitCategory(
            getIt(instanceName: EnumCategoryProduct.workingTable.name),
            getIt(),
            getIt(instanceName: EnumCategoryProduct.workingTable.name),
            getIt(
              instanceName: EnumCategoryProduct.workingTable.name,
            )),
        instanceName: EnumCategoryProduct.workingTable.name,
      );
  }

  static void _setUpConferenceChair() {
    getIt
      ..registerLazySingleton<CategoryRemoteDataSource>(
        () => CategoryConferenceChairDataSource(),
        instanceName: EnumCategoryProduct.conferenceChair.name,
      )
      ..registerLazySingleton<CategoryProductRepository>(
        () => CategoryProductRepository(
          getIt(instanceName: EnumCategoryProduct.conferenceChair.name),
        ),
        instanceName: EnumCategoryProduct.conferenceChair.name,
      )
      ..registerLazySingleton<UseCaseGetCategoryProduct>(
        () => UseCaseGetCategoryProduct(
          getIt(instanceName: EnumCategoryProduct.conferenceChair.name),
        ),
        instanceName: EnumCategoryProduct.conferenceChair.name,
      )
      ..registerLazySingleton<UseCaseChangeAttributesFromProduct>(
          () => UseCaseChangeAttributesFromProduct(
              getIt(instanceName: EnumCategoryProduct.conferenceChair.name)),
          instanceName: EnumCategoryProduct.conferenceChair.name)
      ..registerLazySingleton<UseCaseDeleteProduct>(
          () => UseCaseDeleteProduct(
              getIt(instanceName: EnumCategoryProduct.conferenceChair.name)),
          instanceName: EnumCategoryProduct.conferenceChair.name)
      ..registerLazySingleton<CubitCategory>(
        () => CubitCategory(
            getIt(instanceName: EnumCategoryProduct.conferenceChair.name),
            getIt(),
            getIt(instanceName: EnumCategoryProduct.conferenceChair.name),
            getIt(instanceName: EnumCategoryProduct.conferenceChair.name)),
      );
  }

  static void _setUpOfficeChair() {
    getIt
      ..registerLazySingleton<CategoryRemoteDataSource>(
        () => CategoryOfficeChairNormalDataSource(),
        instanceName: EnumCategoryProduct.officeChairNormal.name,
      )
      ..registerLazySingleton<CategoryRemoteDataSource>(
        () => CategoryOfficeChairHochlehnerDataSource(),
        instanceName: EnumCategoryProduct.officeChairHochlehner.name,
      )
      ..registerLazySingleton<CategoryProductRepository>(
          () => CategoryProductRepository(
                getIt(instanceName: EnumCategoryProduct.officeChairNormal.name),
              ),
          instanceName: EnumCategoryProduct.officeChairNormal.name)
      ..registerLazySingleton<CategoryProductRepository>(
          () => CategoryProductRepository(
                getIt(
                    instanceName:
                        EnumCategoryProduct.officeChairHochlehner.name),
              ),
          instanceName: EnumCategoryProduct.officeChairHochlehner.name)
      ..registerLazySingleton<UseCaseGetCategoryProduct>(
        () => UseCaseGetCategoryProduct(
          getIt(instanceName: EnumCategoryProduct.officeChairNormal.name),
        ),
        instanceName: EnumCategoryProduct.officeChairNormal.name,
      )
      ..registerLazySingleton<UseCaseGetCategoryProduct>(
        () => UseCaseGetCategoryProduct(
          getIt(instanceName: EnumCategoryProduct.officeChairHochlehner.name),
        ),
        instanceName: EnumCategoryProduct.officeChairHochlehner.name,
      )
      ..registerLazySingleton<UseCaseChangeAttributesFromProduct>(
          () => UseCaseChangeAttributesFromProduct(
              getIt(instanceName: EnumCategoryProduct.officeChairNormal.name)),
          instanceName: EnumCategoryProduct.officeChairNormal.name)
      ..registerLazySingleton<UseCaseChangeAttributesFromProduct>(
          () => UseCaseChangeAttributesFromProduct(getIt(
              instanceName: EnumCategoryProduct.officeChairHochlehner.name)),
          instanceName: EnumCategoryProduct.officeChairHochlehner.name)
      ..registerLazySingleton<UseCaseDeleteProduct>(
          () => UseCaseDeleteProduct(
              getIt(instanceName: EnumCategoryProduct.officeChairNormal.name)),
          instanceName: EnumCategoryProduct.officeChairNormal.name)
      ..registerLazySingleton<UseCaseDeleteProduct>(
          () => UseCaseDeleteProduct(getIt(
              instanceName: EnumCategoryProduct.officeChairHochlehner.name)),
          instanceName: EnumCategoryProduct.officeChairHochlehner.name)
      ..registerLazySingleton<CubitCategory>(
        () => CubitCategory(
          getIt(
            instanceName: EnumCategoryProduct.officeChairNormal.name,
          ),
          getIt(),
          getIt(
            instanceName: EnumCategoryProduct.officeChairNormal.name,
          ),
          getIt(instanceName: EnumCategoryProduct.officeChairNormal.name),
        ),
        instanceName: EnumCategoryProduct.officeChairNormal.name,
      )
      ..registerLazySingleton<CubitCategory>(
        () => CubitCategory(
            getIt(
              instanceName: EnumCategoryProduct.officeChairHochlehner.name,
            ),
            getIt(),
            getIt(
              instanceName: EnumCategoryProduct.officeChairHochlehner.name,
            ),
            getIt(
              instanceName: EnumCategoryProduct.officeChairHochlehner.name,
            )),
        instanceName: EnumCategoryProduct.officeChairHochlehner.name,
      );
  }
}
