import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryProductPictureMemoryImage extends StatefulWidget {
  const CategoryProductPictureMemoryImage(
      {super.key, this.uint8list, required this.function});

  final Uint8List? uint8list;
  final VoidCallback function;

  @override
  State<CategoryProductPictureMemoryImage> createState() =>
      _CategoryProductPictureMemoryImageState();
}

class _CategoryProductPictureMemoryImageState
    extends State<CategoryProductPictureMemoryImage> {
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
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: LayoutBuilder(
        builder: (context, constraints) =>
            // navigation Test
            Container(
          height: constraints.maxWidth,
          width: constraints.maxWidth,
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
    );
  }
}
