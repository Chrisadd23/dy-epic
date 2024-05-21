import 'package:app_flutter_produkt_bestellen/bootstrap.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/flavor.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.appFlavor = Flavor.development;

  Bootstrap.configuration();
}
