enum Flavor {
  development,
  production,
}

class AppConfig {
  static Flavor appFlavor = Flavor.development;

  static String get appName => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return 'dev Oberhaizinger';
      case Flavor.production:
        return 'Oberhaizinger';
    }
  }
}
