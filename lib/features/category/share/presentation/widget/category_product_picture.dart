import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryProductPicture extends StatefulWidget {
  const CategoryProductPicture(
      {super.key, this.uint8list, required this.function});

  final Uint8List? uint8list;
  final VoidCallback function;

  @override
  State<CategoryProductPicture> createState() => _CategoryProductPictureState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<Uint8List>('uint8list', uint8list));
    properties.add(ObjectFlagProperty<VoidCallback>.has('function', function));
  }
}

class _CategoryProductPictureState extends State<CategoryProductPicture> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (widget.uint8list != null) {
      precacheImage(MemoryImage(widget.uint8list!), context);
    }
    super.didChangeDependencies();
  }

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
                height: constraints.maxWidth * 0.9,
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
                ),
                child: ClipOval(
                  child: InkWell(
                    onTap: widget.function,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.memory(widget.uint8list!),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);

    properties
        .add(ObjectFlagProperty<VoidCallback>.has('function', widget.function));
    properties
        .add(ObjectFlagProperty<Uint8List?>.has('uint8list', widget.uint8list));
  }
}
