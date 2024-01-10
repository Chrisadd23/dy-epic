import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WidgetPictureArea extends StatelessWidget {
  const WidgetPictureArea({
    super.key,
    required this.picturePath,
  });

  final String? picturePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: MediaQuery.sizeOf(context).height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      child: picturePath == null
          ? LoadingWidget(
              firstWidth: MediaQuery.of(context).size.width * 0.5,
              secondWidth: MediaQuery.of(context).size.width * 0.3,
            )
          : Image.asset(
              picturePath!,
              fit: BoxFit.fitHeight,
            ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);

    properties.add(StringProperty('picturePath', picturePath));
  }
}
