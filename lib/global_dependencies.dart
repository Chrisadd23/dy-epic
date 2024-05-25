import 'package:app_flutter_produkt_bestellen/core/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/app_start/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/category/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/home/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/login/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/order/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/product/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/dependencies.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpMainDependencies() {
  //Features
  AppStartDependencies.setUp();
  HomeDependencies.setUp();
  CategoryDependencies.setUp();
  ProductDependencies.setUp();
  ShoppingBasketDependencies.setUp();
  OrderDependencies.setUp();
  LoginDependencies.setUp();
  SettingsDependencies.setUp();

  //core
  CoreDependencies.setUp();
}
