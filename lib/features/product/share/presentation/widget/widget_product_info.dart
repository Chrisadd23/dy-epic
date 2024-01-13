import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WidgetProductInfo extends StatelessWidget {
  const WidgetProductInfo({super.key, required this.productInfo});

  final List<String>? productInfo;

  @override
  Widget build(BuildContext context) {
    return productInfo == null || productInfo!.isEmpty
        ? const SizedBox.shrink()
        : Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.1,
                vertical: MediaQuery.sizeOf(context).height * 0.03),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Produktinformationen",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ...productInfo!.map((info) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 5),
                        child: FittedBox(fit: BoxFit.fill, child: Text(info)),
                      ))
                ],
              ),
            ),
          );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<String>('productInfo', productInfo));
  }
}
