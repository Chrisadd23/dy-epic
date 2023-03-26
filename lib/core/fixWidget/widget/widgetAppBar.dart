import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class GlobalAppBar extends AppBar {

  GlobalAppBar({
    Key? key,
    Widget? title,
  }) : super(
          key: key,

          title:
           Image.asset(
              Assets.company.appBarLogo.path,
              fit: BoxFit.fill,
             ),
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          elevation: 0.0,
        );
}
