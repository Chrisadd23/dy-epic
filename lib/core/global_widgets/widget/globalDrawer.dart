import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class GlobalDrawer extends StatelessWidget {
  const GlobalDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: MediaQuery.of(context).size.width * 0.704,
        child:  Drawer(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
          border: Border(
          top: BorderSide(color: Colors.black, width: 2),
        )),
                child: Container(
                  height: 97,
                  width: MediaQuery.of(context).size.width * 0.704,
                  decoration:  const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.black,blurStyle: BlurStyle.inner,offset: Offset(0,2)),
                      ]
                  ),
                  child: Image.asset(
                    Assets.company.appBarLogo.path,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
