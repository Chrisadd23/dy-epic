import 'package:flutter/material.dart';

class GlobalAppBar extends AppBar {
  GlobalAppBar({
    Key? key,
    Widget? title,
  }) : super(
          key: key,
          title: Center(
            child: title,
          ),
        );
}
