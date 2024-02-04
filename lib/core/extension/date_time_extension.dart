extension DateTimeOnlyStringDate on DateTime {
  String get onlyDateInString {
    final day = this.day.toString().padLeft(2);
    final month = this.month.toString().padLeft(2);
    final year = this.year.toString().padLeft(2);
    return '$day-$month-$year'.replaceAll(' ', '0');
  }
}
