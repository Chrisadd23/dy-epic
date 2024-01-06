abstract class Flavor {
  static String? _flavor;

  static void setFlavorOnce({required String flavor}) {
    _flavor ??= flavor;
  }

  static String get appFlavor => _flavor ?? 'none';

  static String get development => 'development';

  static String get production => 'production';
}
