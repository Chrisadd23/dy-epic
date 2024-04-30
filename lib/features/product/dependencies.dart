import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/data/datasource/datasource_conference_char_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/data/repository/repository_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/repository/repository_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/presentation/cubit/cubit_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/data/datasource/datasource_office_chaire_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/data/repository/repository_office_chair_product_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/repository/repository_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/presentation/cubit/cubit_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/data/datasource/datasource_product_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/data/repository/repoitory_product_workingtable_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/repository/repostiory_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/use_case/get_additional_attributes/get_additional_attributes_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/presentation/cubit/cubit_workingtable_product.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

abstract class ProductDependencies {
  static setUp() {
    _setUpWorkingTable();
    _setUpConferenceChair();
    _setUpOfficeChair();
  }
}

_setUpWorkingTable() {
  //datasource
  getIt
    ..registerLazySingleton<DataSourceProductWorkingTable>(
        () => DataSourceProductWorkingtableImplementation())

    //repository
    ..registerLazySingleton<RepositoryWorkingTable>(() =>
        RepositoryProductWorkingtableImplementation(
            dataSourceWorkingTable: getIt()))

    //UseCase
    ..registerLazySingleton<GetAdditionalAttributesUseCase>(
        () => GetAdditionalAttributesUseCase(getIt()))
    //Cubit
    ..registerFactory<CubitWorkingTableProduct>(() => CubitWorkingTableProduct(
        getIt(), getIt(),
        repositoryProductWorkingTable: getIt()));
}

_setUpConferenceChair() {
  getIt
    ..registerLazySingleton<DataSourceConferenceChairProduct>(
      () => DataSourceConferenceChairProductImplementation(),
    )
    ..registerLazySingleton<RepositoryConferenceChairProduct>(
      () => RepositoryConferenceChairProductImplementation(
        dataSourceConferenceChairProduct: getIt(),
      ),
    )
    ..registerFactory<CubitConferenceChairProduct>(
      () => CubitConferenceChairProduct(
        repositoryConferenceChairProduct: getIt(),
      ),
    );
}

_setUpOfficeChair() {
  getIt
    ..registerLazySingleton<DataSourceOfficeChairProduct>(
      () => DataSourceOfficeChairProductImplementation(),
    )
    ..registerLazySingleton<RepositoryOfficeChairProduct>(
      () => RepositoryOfficeChairProductImplementation(
        dataSourceOfficeChairProduct: getIt(),
      ),
    )
    ..registerFactory<CubitOfficeChairProduct>(
      () => CubitOfficeChairProduct(
        repositoryOfficeChairProduct: getIt(),
      ),
    );
}
