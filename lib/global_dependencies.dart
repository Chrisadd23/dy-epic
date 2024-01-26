import 'package:app_flutter_produkt_bestellen/core/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/category/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/home/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/login/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/product/dependencies.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/dependencies.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpMainDependencies() {
  //Features
  HomeDependencies.setUp();
  CategoryDependencies.setUp();
  ProductDependencies.setUp();
  ShoppingBasketDependencies.setUp();
  LoginDependencies.setUp();

  //core
  CoreDependencies.setUp();
}
