import 'package:flutter/material.dart';

class GlobalScaffold extends Scaffold{
  const GlobalScaffold(
      {Key? key,
      required AppBar appBar,
      required Widget body,
      })
      : super(
          key: key,
          appBar: appBar,
          body: body,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 0.8)
        );
}
