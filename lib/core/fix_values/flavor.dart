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

  static String get productDocumentId {
    switch (appFlavor) {
      case Flavor.development:
        return 'kbLDlq3ItPF7onHoQnYL';
      case Flavor.production:
        return '';
    }
  }

  static String get officeChairDocumentId {
    switch (appFlavor) {
      case Flavor.development:
        return 'lkO66P0vFh9C2kEaS2dR';
      case Flavor.production:
        return '';
    }
  }

  static String get orderListDocumentId {
    switch (appFlavor) {
      case Flavor.development:
        return '8ZwDCBhDGrOMF8w7wS7Y';
      case Flavor.production:
        return '';
    }
  }

  static String get requestListDocumentId {
    switch (appFlavor) {
      case Flavor.development:
        return '4uKusyoOb8xNXsSwn6KX';
      case Flavor.production:
        return '';
    }
  }
}
