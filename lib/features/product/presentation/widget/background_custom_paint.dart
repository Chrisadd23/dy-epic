import 'package:app_flutter_produkt_bestellen/features/product/presentation/widget/product_page_background_custom_paint.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/widget/product_polygonal_shape_custom_clipper.dart';
import 'package:flutter/material.dart';

class BackgroundCustomPaint extends StatelessWidget {
  const BackgroundCustomPaint({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: CustomPaint(
        painter: ProductPageBackgroundCustomPaint(),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.25,
                child: ClipPath(
                  clipper: ProductPolygonalShapeCustomClipper(),
                  child: Container(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipPath(
                        clipper: ProductPolygonalShapeCustomClipper(),
                        child: Container(
                          color: Colors.white,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: child,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
