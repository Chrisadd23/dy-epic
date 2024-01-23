import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/text_editing_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/text_editing_state.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<TextEditingCubit>.value(value: TextEditingCubit()),
      BlocProvider<LoginCubit>.value(
          value: LoginCubit(loginRepository: getIt()))
    ], child: const LoginPage());
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
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.5,
                    fit: BoxFit.fill,
                    image: AssetImage(
                      Assets.appComponents.png.oberhaizingerStartBild.path,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.sizeOf(context).width * 0.1),
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: BlocSelector<TextEditingCubit,
                              TextEditingState, TextEditingController>(
                            selector: (TextEditingState state) =>
                                state.customerNumber,
                            builder: (context, controller) {
                              return TextField(
                                controller: controller,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  labelText: 'Kundennummer',
                                  labelStyle: _textStyle,
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                ),
                              );
                            },
                          )),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.sizeOf(context).width * 0.1),
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: BlocSelector<TextEditingCubit,
                              TextEditingState, TextEditingController>(
                            selector: (state) => state.customerPassword,
                            builder: (context, controller) => TextField(
                              controller: controller,
                              keyboardType: TextInputType.none,
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  labelText: 'Passwort',
                                  labelStyle: _textStyle,
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always),
                              obscureText: true,
                            ),
                          )),
                    ),
                    BlocBuilder<TextEditingCubit, TextEditingState>(
                        builder: (context, state) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.sizeOf(context).height * 0.07),
                        child: InkWell(
                          onTap: () {
                            context.read<LoginCubit>().login(
                                customerNumber: state.customerNumber.text,
                                password: state.customerPassword.text);
                          },
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border: Border.all(),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              height: 70,
                              width: 200,
                              child: Center(
                                  child: Text(
                                'Login',
                                style: _textStyle,
                              )),
                            ),
                          ),
                        ),
                      );
                    })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle get _textStyle =>
      const TextStyle(color: Colors.black, fontSize: 20, shadows: [
        BoxShadow(offset: Offset(0, 1), color: Colors.white),
        BoxShadow(offset: Offset(0, -1), color: Colors.white),
        BoxShadow(offset: Offset(1, 0), color: Colors.white),
        BoxShadow(offset: Offset(-1, 0), color: Colors.white),
      ]);
}
