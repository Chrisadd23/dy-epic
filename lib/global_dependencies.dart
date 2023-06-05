import 'package:get_it/get_it.dart';
import 'package:app_flutter_produkt_bestellen/features/category/dependencies.dart' as category_dependencies;
import 'package:app_flutter_produkt_bestellen/core/dependencies.dart' as core_dependencies;
final getIt = GetIt.instance;

void setupMain()
{


    //Features
    category_dependencies.setUp();

    //core
    core_dependencies.setUp();
}