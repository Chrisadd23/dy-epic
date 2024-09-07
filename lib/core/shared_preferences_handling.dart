import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPreferencesHandling {
  static late final SharedPreferences _preferences;

  static Future<void> initialise() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future<void> setCustomerToken({required String customerNumber}) async {
    await _preferences.setString(AppText.customerNumber, customerNumber);
  }

  static String? getCustomerToken() {
    final customerNumber = _preferences.getString(AppText.customerNumber);
    return customerNumber;
  }

  static Future<void> removeCustomerToken() async {
    await _preferences.remove(AppText.customerNumber);
  }
}
