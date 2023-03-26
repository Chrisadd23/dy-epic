import 'package:app_flutter_produkt_bestellen/core/fixWidget/page/pageWidget.dart';
import 'package:app_flutter_produkt_bestellen/core/fixWidget/widget/widgetAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: GlobalAppBar(
          context: context,
        ),

      ),
      body: const LoginPage(),
      );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: impconst Center(child: Text("hi"),)ter(child: Text("hi"),),);
    return const SizedBox.shrink();

  }
}
