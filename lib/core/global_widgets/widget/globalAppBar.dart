

import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

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
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Container(
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Color.fromRGBO(87, 87, 87, 0.0),Colors.white],begin: Alignment.bottomRight,end: Alignment.bottomLeft)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
               height: 97,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration:  const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(color: Colors.black,blurStyle: BlurStyle.outer,offset: Offset(0,2)),
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Image.asset(
                      Assets.company.appBarLogo.path,
                      fit: BoxFit.fitWidth,

                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  margin: const EdgeInsets.only(bottom: 8,),
                  padding: const EdgeInsets.only(top: 18,bottom: 10, right: 5,left: 4),
                  child: Builder(
                      builder: (context) {
                        return FittedBox(
                          fit: BoxFit.fitHeight,
                          child: IconButton(onPressed: (){
                            Scaffold.of(context).openDrawer();
                          }, icon: Image.asset(Assets.appComponents.png.iconMenu.path),
                          ),
                        );
                      }
                  ),
                ),
              ),
            ],),
          ) ,
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          elevation: 1,
        );
}
