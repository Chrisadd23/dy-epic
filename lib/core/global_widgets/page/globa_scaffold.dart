import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/global_appbar.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/global_curved_navigation_bar.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/global_drawer.dart';
import 'package:flutter/material.dart';

class GlobalScaffold extends Scaffold {
  GlobalScaffold({
    super.key,
    required BuildContext appBarContext,
    required Widget body,
    bool showMenuBar = false,
    GlobalCurvedNavigationBar? super.bottomNavigationBar,
    bool super.resizeToAvoidBottomInset = false,
  }) : super(
            extendBody: true,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: SafeArea(
                bottom: false,
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.black, width: 2),
                          left: BorderSide(color: Colors.black, width: 1),
                          bottom: BorderSide(
                              color: Colors.black,
                              width: 0.3,
                              style: BorderStyle.none))),
                  child: GlobalAppBar(
                    showMenuBar: showMenuBar,
                    context: appBarContext,
                  ),
                ),
              ),
            ),
            body: SafeArea(bottom: false, child: body),
            backgroundColor: AppColors.greyCACACA,
            drawer: const GlobalDrawer());
}
