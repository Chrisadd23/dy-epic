import 'package:intl/intl.dart';

extension DoubleCurrency on double {
  String getCurrency() =>
      NumberFormat.currency(locale: 'de_DE', symbol: '€', decimalDigits: 2)
          .format(this);
}
