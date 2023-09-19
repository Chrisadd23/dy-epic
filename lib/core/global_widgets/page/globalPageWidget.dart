import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/globalAppBar.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/globalDrawer.dart';
import 'package:flutter/material.dart';

class GlobalScaffold extends Scaffold {
  GlobalScaffold({
    Key? key,
    required BuildContext appBarContext,
    required Widget body,
  }) : super(
          key: key,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: SafeArea(
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.black, width: 2),
                        left: BorderSide(color: Colors.black, width: 1),
                        right: BorderSide(color: Colors.black, width: 2),
                        bottom: BorderSide(
                            color: Colors.black,
                            width: 0.3,
                            style: BorderStyle.none))),
                child: GlobalAppBar(
                  context: appBarContext,
                ),
              ),
            ),
          ),
          body: body,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 0.8),
          drawer: const GlobalDrawer(),
        );
}
