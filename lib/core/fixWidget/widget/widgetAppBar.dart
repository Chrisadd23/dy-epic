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
              height: 98.5,
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              width: MediaQuery.of(context).size.width * 0.7,
              decoration:  const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black,blurStyle: BlurStyle.inner,offset: Offset(0,1.5)),
                  BoxShadow(color: Colors.black,blurStyle: BlurStyle.inner,offset: Offset(-2.5,0)),
                  BoxShadow(color: Colors.black,blurStyle: BlurStyle.inner,offset: Offset(0,-1.5)),

                ]
              ),
              child: Image.asset(
  Assets.company.appBarLogo.path,
    fit: BoxFit.fill,

  ),
            ),
          ),
          toolbarHeight: 100,
          backgroundColor: const Color.fromRGBO(87, 87, 87, 0.0),
          elevation: 0.1,
        );
}
