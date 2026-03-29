import 'package:app_flutter_produkt_bestellen/features/chat/domain/get_all_contacts_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/chat/presentation/cubit/chat_message_cubit.dart';

import '../../global_dependencies.dart';
import '../login/domain/repository/login_repository.dart';
import '../login/domain/use_case/get_customer_use_case.dart';

abstract class ChatDependencies {
  static setUp() {
    getIt
      ..registerLazySingleton<GetAllContactsUseCase>(
          () => GetAllContactsUseCase(getIt<LoginRepository>()))
      ..registerLazySingleton<ChatMessageCubit>(() => ChatMessageCubit(
          getIt<GetCustomerUseCase>(), getIt<GetAllContactsUseCase>()));
  }
}
