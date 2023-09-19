import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 150,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Image.asset(
                  Assets.company.appBarLogo.path,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                context.goNamed(AppGoRouter.homePage.name);
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  height: 70,
                  width: 200,
                  child: const Center(child: Text('Kategorien')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
