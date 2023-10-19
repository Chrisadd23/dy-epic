import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProductWidget extends HookWidget {
  const ProductWidget({super.key, this.product});

  final String? product;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Flexible(
              child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.3,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: Colors.white,
                    image: product == null
                        ? null
                        : DecorationImage(
                            image: AssetImage(product!),
                          )),
                child: product == null
                    ? const SizedBox.shrink()
                    : Image.asset(
                        product!,
                        fit: BoxFit.fitHeight,
                      ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            Container(
              height: constraints.maxHeight * 0.07,
              width: constraints.maxWidth * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.grey8D8D8E),
              child: const Center(
                child: Text(
                  'Produkt',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(color: Colors.black, offset: Offset(1, 1))
                      ]),
                ),
              ),
            )
          ],
        ),
      );
    });
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('product', product));
  }
}
