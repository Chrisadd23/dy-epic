import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/flavor.dart';
import 'package:app_flutter_produkt_bestellen/main.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.appFlavor = Flavor.production;
  FirebaseConfiguration.initFirebaseStorage();

  MainConfiguration.configuration();
}
