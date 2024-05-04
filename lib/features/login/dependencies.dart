import 'package:app_flutter_produkt_bestellen/features/login/data/datasource/login_datasource.dart';
import 'package:app_flutter_produkt_bestellen/features/login/data/repository/login_repository_implementation.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/repository/login_repository.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/use_case/update_customer_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/text_editing_cubit.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class LoginDependencies {
  static void setUp() {
    //datasource
    getIt
      ..registerLazySingleton<LoginDatasource>(
          () => LoginDatasourceImplementation(FirebaseFirestore.instance))

      //repository
      ..registerLazySingleton<LoginRepository>(
          () => LoginRepositoryImplementation(getIt()))
      //useCase
      ..registerLazySingleton<UpdateCustomerUseCase>(
          () => UpdateCustomerUseCase(getIt()))
      //cubit
      ..registerSingleton<LoginCubit>(LoginCubit(getIt()))
      ..registerFactory<TextEditingCubit>(() => TextEditingCubit());
  }
}
