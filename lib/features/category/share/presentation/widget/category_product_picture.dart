import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:flutter/material.dart';

class CategoryProductPicture extends StatelessWidget {
  const CategoryProductPicture(
      {super.key, this.uint8list, required this.function});

  final Uint8List? uint8list;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.2),
            child: LayoutBuilder(
              builder: (context, constraints) =>
                  // navigation Test
                  Container(
                height: constraints.maxHeight * 0.9,
                width: constraints.maxWidth * 0.9,
                margin: EdgeInsets.only(bottom: constraints.maxHeight * 0.2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 3),
                        blurStyle: BlurStyle.outer),
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, -3),
                        blurStyle: BlurStyle.outer)
                  ],
                  border: Border.all(
                      color: Colors.black45,
                      strokeAlign: BorderSide.strokeAlignInside),
                  image: uint8list != null
                      ? DecorationImage(
                          image: MemoryImage(uint8list!),
                          onError: (object, stackTrace) =>
                              const LoadingWidget(),
                        )
                      : null,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: LayoutBuilder(builder: (context, constraints) {
            return Padding(
              padding: EdgeInsets.only(bottom: constraints.maxHeight * 0.43),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: constraints.maxHeight * 0.23,
                foregroundColor: Colors.transparent,
                child: InkWell(
                  hoverColor: Colors.red,
                  onTap: function,
                ),
              ),
            );
          }),
        )
      ],
    );
    ;
  }
}
