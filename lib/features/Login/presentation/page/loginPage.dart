import 'package:flutter/material.dart';
import '../../../../core/globalWidgets/page/globalPageWidget.dart';
import '../../../../core/globalWidgets/widget/globalAppBar.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(
            decoration:  const BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.black, width: 2),
                  left: BorderSide(color: Colors.black,width: 2),
                  right: BorderSide(color: Colors.black,width: 2),
                  bottom: BorderSide(color: Colors.black,width: 0.3,style: BorderStyle.none)
            )),
            child: GlobalAppBar(
              context: context,
            ),
          ),
        ),
        body: const LoginPage());
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
