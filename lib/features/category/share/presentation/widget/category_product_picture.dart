import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
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
    properties.add(IterableProperty<>('uint8list', uint8list));
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<VoidCallback>.has('function', function));
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<VoidCallback>.has('function', function));
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<VoidCallback>.has('function', function));
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
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
                  image: widget.uint8list != null
                      ? DecorationImage(
                          image: MemoryImage(widget.uint8list!),
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
                  onTap: widget.function,
                ),
              ),
            );
          }),
        )
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
