import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/notification_settings_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';

abstract class SettingsDependencies {
  static void setUp() {
    getIt
      ..registerFactory<SettingsCubit>(() => SettingsCubit(getIt()))
      ..registerFactory<NotificationSettingsCubit>(
          () => NotificationSettingsCubit(getIt()));
  }
}
