import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class GlobalAppBar extends AppBar {

  GlobalAppBar({
    Key? key,
    Widget? title,
    required BuildContext context
  }) : super(
          key: key,
          centerTitle: false,
          leadingWidth: 0,
          title: Transform(
            transform: Matrix4.translationValues(-20, 0.0, 0.0),
            child: Container(
              height: 100,
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              width: MediaQuery.of(context).size.width * 0.7,
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20)),
                border: Border.all(color: Colors.black)
              ),
              child: Image.asset(
  Assets.company.appBarLogo.path,
    fit: BoxFit.fill,

  ),
            ),
          ),
          toolbarHeight: 100,
          backgroundColor: const Color.fromRGBO(87, 87, 87, 0.3),
          elevation: 1,
        );
}
