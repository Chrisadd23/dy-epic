import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
      {super.key,
      required this.img,
      required this.title,
      required this.navigation});

  final String img;
  final String title;
  final String navigation;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 4, offset: Offset(6, 3))
          ]),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.25,
      child: InkWell(
        onTap: () {
          context.pushNamed(navigation);
        }, //=> selectMeal(context),
        child: LayoutBuilder(builder: (context, constraints) {
          return Stack(
            children: [
              if (img.isNotEmpty)
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image.asset(
                    img,
                    fit: BoxFit.fill,
                  ),
                ),
              Positioned(
                top: 30,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black45,
                  ),
                  width: constraints.maxWidth,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('img', img));
    properties.add(StringProperty('title', title));
    properties.add(StringProperty('navigation', navigation));
  }
}
