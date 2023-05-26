import 'package:app_flutter_produkt_bestellen/core/fix_widgets/drawer_button.dart';
import 'package:app_flutter_produkt_bestellen/core/list_values/list_values.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class GlobalDrawer extends StatelessWidget {
  const GlobalDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.704,
        child: Drawer(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
              color: Colors.white
                ),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: Color.fromRGBO(221, 221, 221, 1),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurStyle: BlurStyle.inner,
                                offset: Offset(0, 2)),
                          ]),
                      child: Column(
                        children: [
                          Container(
                            height: 97,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurStyle: BlurStyle.inner,
                                      offset: Offset(0, 2)),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Image.asset(
                                Assets.company.appBarLogo.path,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 90,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    height: 75,
                                    width: 75,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: const Color.fromRGBO(
                                            247, 165, 64, 1.0),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black,
                                              blurStyle: BlurStyle.inner,
                                              offset: Offset(0, 1)),
                                          BoxShadow(
                                              color: Colors.black,
                                              blurStyle: BlurStyle.inner,
                                              offset: Offset(0, -1)),
                                          BoxShadow(
                                              color: Colors.black,
                                              blurStyle: BlurStyle.inner,
                                              offset: Offset(1, 0)),
                                          BoxShadow(
                                              color: Colors.black,
                                              blurStyle: BlurStyle.inner,
                                              offset: Offset(-1, 0)),
                                        ]),
                                    child: const Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Icon(
                                        Icons.person,
                                        color: Color.fromRGBO(221, 221, 221, 1),
                                        size: 70,
                                        shadows: [
                                          BoxShadow(
                                              color: Colors.black,
                                              blurStyle: BlurStyle.inner,
                                              offset: Offset(0, 1)),
                                          BoxShadow(
                                              color: Colors.black,
                                              blurStyle: BlurStyle.inner,
                                              offset: Offset(0, -1)),
                                          BoxShadow(
                                              color: Colors.black,
                                              blurStyle: BlurStyle.inner,
                                              offset: Offset(1, 0)),
                                          BoxShadow(
                                              color: Colors.black,
                                              blurStyle: BlurStyle.inner,
                                              offset: Offset(-1, 0)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                    child: Center(
                                  child: Text(
                                    'Kundennummer',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 70),
                    Column(children:[...ListValues.DRAWER_LIST.map((e) => FixDrawerButton(title: e,)).toList()]),
                    const SizedBox(height: 50),
                    const FixDrawerButton(title: 'Logout',height: 60,),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
