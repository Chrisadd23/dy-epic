import 'package:app_flutter_produkt_bestellen/core/dependencies.dart'
    as core_dependencies;
import 'package:app_flutter_produkt_bestellen/features/home/dependencies.dart'
    as home_dependencies;
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupMain() {
  //Features
  home_dependencies.setUp();

  //core
  core_dependencies.setUp();
}
