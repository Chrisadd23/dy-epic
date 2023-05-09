import 'package:flutter/material.dart';

import '../widget/globalDrawer.dart';

class GlobalScaffold extends Scaffold{
  const GlobalScaffold(
      {Key? key,
      PreferredSizeWidget? appBar,
      required Widget body,
      })
      : super(
          key: key,
          appBar: appBar,
          body: body,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 0.9),
          drawer: const GlobalDrawer(),
        );
}
