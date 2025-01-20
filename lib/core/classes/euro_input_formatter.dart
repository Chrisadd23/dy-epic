import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EuroInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;

    // Entferne alle Punkte aus dem Text
    String cleanText =
        newText.replaceAll('.', '').replaceAll(RegExp(r'[^0-9,]'), '');

    List<String> parts = cleanText.split(',');
    String beforeComma = parts[0];
    String? afterComma = cleanText.contains(',') ? parts[1] : null;

    String formattedBeforeComma = '';
    for (int i = beforeComma.length - 1, x = 0; i >= 0; i--, x++) {
      if (x % 3 == 2 && i > 0) {
        formattedBeforeComma = '.${beforeComma[i]}$formattedBeforeComma';
      } else {
        formattedBeforeComma = beforeComma[i] + formattedBeforeComma;
      }
    }

    if ((afterComma?.length ?? 0) > 2) {
      afterComma = afterComma!.substring(0, 2);
    }

    String formattedText = formattedBeforeComma;

    if (newText.characters.contains(',') && newText.length == 1) {
      formattedText += '0,';
    } else if (afterComma != null) {
      formattedText += ',$afterComma';
    }

    // Erstelle einen neuen TextEditingValue mit dem formatierten Text
    return TextEditingValue(
      text: formattedText.isNotEmpty ? '$formattedText €' : formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
