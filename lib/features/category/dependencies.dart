import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/data/datasource/category_conference_chair_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/presentation/cubit/category_conference_chair_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/data/datasource/category_office_chair_hochlehner_data_source.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/data/datasource/category_office_chair_normal_data_source.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/presentation/cubit/category_office_chair_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/presentation/cubit/choose_office_chair_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/data/datasource/category_workingtable_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/presentation/cubit/cubit_category_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/data/datasource/category_remote_data_source.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/repository/category_product_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/use_case_get_category_product/use_case_get_category_workingtable.dart';
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
        instanceName: AppText.categoryWorkingTable,
      )
      ..registerLazySingleton<CategoryProductRepository>(
        () => CategoryProductRepository(
            getIt(instanceName: AppText.categoryWorkingTable)),
        instanceName: AppText.categoryWorkingTable,
      )
      ..registerLazySingleton<UseCaseGetCategoryProduct>(
          () => UseCaseGetCategoryProduct(
                getIt(
                  instanceName: AppText.categoryWorkingTable,
                ),
              ),
          instanceName: AppText.categoryWorkingTable)
      ..registerFactory<CubitCategoryWorkingTable>(
        () => CubitCategoryWorkingTable(
          getIt(instanceName: AppText.categoryWorkingTable),
          getIt(),
        ),
        instanceName: AppText.categoryWorkingTable,
      );
  }

  static void _setUpConferenceChair() {
    getIt
      ..registerLazySingleton<CategoryRemoteDataSource>(
        () => CategoryConferenceChairDataSource(),
        instanceName: AppText.categoryConferenceChair,
      )
      ..registerLazySingleton<CategoryProductRepository>(
        () => CategoryProductRepository(
          getIt(instanceName: AppText.categoryConferenceChair),
        ),
        instanceName: AppText.categoryConferenceChair,
      )
      ..registerLazySingleton<UseCaseGetCategoryProduct>(
        () => UseCaseGetCategoryProduct(
          getIt(instanceName: AppText.categoryConferenceChair),
        ),
        instanceName: AppText.categoryConferenceChair,
      )
      ..registerFactory<CubitCategoryConferenceChair>(
          () => CubitCategoryConferenceChair(
                getIt(instanceName: AppText.categoryConferenceChair),
                getIt(),
              ),
          instanceName: AppText.categoryConferenceChair);
  }

  static void _setUpOfficeChair() {
    getIt
      ..registerLazySingleton<CategoryRemoteDataSource>(
        () => CategoryOfficeChairNormalDataSource(),
        instanceName: AppText.categoryOfficeChairNormal,
      )
      ..registerLazySingleton<CategoryRemoteDataSource>(
        () => CategoryOfficeChairHochlehnerDataSource(),
        instanceName: AppText.categoryOfficeChairHochlehner,
      )
      ..registerLazySingleton<CategoryProductRepository>(
          () => CategoryProductRepository(
                getIt(instanceName: AppText.categoryOfficeChairNormal),
              ),
          instanceName: AppText.categoryOfficeChairNormal)
      ..registerLazySingleton<CategoryProductRepository>(
          () => CategoryProductRepository(
                getIt(instanceName: AppText.categoryOfficeChairHochlehner),
              ),
          instanceName: AppText.categoryOfficeChairHochlehner)
      ..registerLazySingleton<UseCaseGetCategoryProduct>(
        () => UseCaseGetCategoryProduct(
          getIt(instanceName: AppText.categoryOfficeChairNormal),
        ),
        instanceName: AppText.categoryOfficeChairNormal,
      )
      ..registerLazySingleton<UseCaseGetCategoryProduct>(
        () => UseCaseGetCategoryProduct(
          getIt(instanceName: AppText.categoryOfficeChairHochlehner),
        ),
        instanceName: AppText.categoryOfficeChairHochlehner,
      )
      ..registerLazySingleton<CubitChooseOfficeChair>(
          () => CubitChooseOfficeChair())
      ..registerFactory<CubitCategoryOfficeChair>(
        () => CubitCategoryOfficeChair(
          getIt(
            instanceName: AppText.categoryOfficeChairNormal,
          ),
          getIt(),
        ),
        instanceName: AppText.categoryOfficeChairNormal,
      )
      ..registerFactory<CubitCategoryOfficeChair>(
        () => CubitCategoryOfficeChair(
          getIt(
            instanceName: AppText.categoryOfficeChairHochlehner,
          ),
          getIt(),
        ),
        instanceName: AppText.categoryOfficeChairHochlehner,
      );
  }
}
