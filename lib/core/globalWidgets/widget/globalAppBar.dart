import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class GlobalAppBar extends AppBar {

  GlobalAppBar({
    Key? key,
    Widget? title,
    required BuildContext context,
    Widget? leading,
    
  }) : super(
          key: key,
          leadingWidth: 0,
          leading: const SizedBox.shrink(),
          centerTitle: false,
          title: Transform(
            transform: Matrix4.translationValues(-17, 0, 0.0),
            child: Row(
              children: [
                Container(
                  height: 102,
                  margin: const EdgeInsets.only(bottom: 8,),
                  padding: const EdgeInsets.only(top: 28,bottom: 20, right: 5,left: 4),
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration:  const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(color: Colors.black,blurStyle: BlurStyle.outer,offset: Offset(0,2)),
                    ]
                  ),
                  child: Image.asset(
  Assets.company.appBarLogo.path,
    fit: BoxFit.fitWidth,

  ),
                ),
                Container(
                  height: 100,
                  margin: const EdgeInsets.only(bottom: 8,),
                  padding: const EdgeInsets.only(top: 18,bottom: 10, right: 5,left: 4),

                  child: Builder(
                    builder: (context) {
                      return Transform(
                        transform: Matrix4.translationValues(20, 0 , 0),
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: IconButton(onPressed: (){
                            Scaffold.of(context).openDrawer();
                          }, icon: Image.asset(Assets.appComponents.png.iconMenu.path),
                          color: const Color.fromRGBO(247, 165, 64, 1.0),
                          ),
                        ),
                      );
                    }
                  ),
                ),
              ],
            ),
          ),
          toolbarHeight: 100,
          backgroundColor: const Color.fromRGBO(87, 87, 87, 0.0),
          elevation: 0.1,
        );
}
