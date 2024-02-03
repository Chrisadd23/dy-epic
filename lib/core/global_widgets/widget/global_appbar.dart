import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class GlobalAppBar extends AppBar {
  GlobalAppBar({
    Key? key,
    required BuildContext context,
    required bool showMenuBar,
  }) : super(
          key: key,
          leadingWidth: 0,
          leading: const SizedBox.shrink(),
          centerTitle: false,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromRGBO(87, 87, 87, 0.0), Colors.white],
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () =>
                      getIt<GoRouter>().goNamed(AppGoRouter.homePage.name),
                  child: Container(
                    height: 67,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurStyle: BlurStyle.outer,
                              offset: Offset(0, 2)),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Image.asset(
                          Assets.company.appBarLogo.path,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    margin: const EdgeInsets.only(
                      bottom: 8,
                    ),
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: AppBarMenuButton(showMenuBar: showMenuBar),
                  ),
                ),
              ],
            ),
          ),
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          elevation: 1,
        );
}

class AppBarMenuButton extends StatelessWidget {
  const AppBarMenuButton({
    super.key,
    required this.showMenuBar,
  });

  final bool showMenuBar;

  String get imagePath => showMenuBar
      ? Assets.appComponents.svg.iconMenu
      : Assets.appComponents.svg.returnIcon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showMenuBar ? Scaffold.of(context).openDrawer() : context.pop();
      },
      icon: SvgPicture.asset(
        imagePath,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('showMenuBar', showMenuBar));
    properties.add(StringProperty('imagePath', imagePath));
  }
}
