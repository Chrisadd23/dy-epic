import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/global_appbar.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/global_drawer.dart';
import 'package:flutter/material.dart';

class GlobalScaffold extends Scaffold {
  GlobalScaffold({
    Key? key,
    required BuildContext appBarContext,
    required Widget body,
    bool? showMenuBar = false,
    BottomNavigationBar? bottomNavigationBar,
  }) : super(
            key: key,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(70),
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
                    showMenuBar: showMenuBar!,
                    context: appBarContext,
                  ),
                ),
              ),
            ),
            body: body,
            backgroundColor: AppColors.greyCACACA,
            drawer: const GlobalDrawer(),
            bottomNavigationBar: bottomNavigationBar);
}
