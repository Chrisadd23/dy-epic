import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WidgetPictureArea extends StatelessWidget {
  const WidgetPictureArea({
    super.key,
    required this.pictureBytes,
  });

  //ignore
  final Uint8List? pictureBytes;

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
      child: pictureBytes == null
          ? const LoadingWidget(
              color: AppColors.greyCACACA,
            )
          : Image(
              fit: BoxFit.fitHeight,
              image: MemoryImage(pictureBytes!),
            ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<Uint8List>('pictureBytes', pictureBytes));
  }
}
