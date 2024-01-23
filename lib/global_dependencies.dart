import 'package:app_flutter_produkt_bestellen/core/dependencies.dart'
    as core_dependencies;
import 'package:app_flutter_produkt_bestellen/features/category/dependencies.dart'
    as category_dependencies;
import 'package:app_flutter_produkt_bestellen/features/home/dependencies.dart'
    as home_dependencies;
import 'package:app_flutter_produkt_bestellen/features/login/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/product/dependencies.dart'
    as product_dependencies;
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpMainDependencies() {
  //Features
  home_dependencies.setUp();
  category_dependencies.setUp();
  product_dependencies.setUp();
  LoginDependencies.setUp();

  //core
  core_dependencies.setUp();
}
