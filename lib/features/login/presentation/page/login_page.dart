import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/text_editing_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/text_editing_state.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MultiBlocProvider(providers: [
          BlocProvider<TextEditingCubit>(
              create: (context) => getIt<TextEditingCubit>()),
          BlocProvider<LoginCubit>.value(
            value: getIt<LoginCubit>(),
          )
        ], child: const LoginPage()),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _BlocBuilderLoginPage();
  }
}

class _BlocBuilderLoginPage extends StatelessWidget {
  const _BlocBuilderLoginPage();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        debugPrint("listener active ");
        state.mapOrNull(loggedIn: (loggedIn) async {
          await context.read<TextEditingCubit>().clearController();
          getIt<GoRouter>().goNamed(AppGoRouter.homePage.name);
        }, failure: (failure) {
          debugPrint(
              "showFailure ${failure.failure.when(message: (message) => message, databaseError: (databaseError) => databaseError)}");
          return ShowFailureDialog.present(
              context: context,
              failure: failure.failure.when(
                  message: (message) => message ?? '',
                  databaseError: (databaseError) => databaseError ?? ''));
        });
      },
      child: Column(
        children: <Widget>[
          ShaderMask(
            blendMode: BlendMode.dstOut,
            shaderCallback: (Rect rect) {
              return const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.white, Colors.transparent])
                  .createShader(Rect.fromLTWH(
                rect.left,
                rect.top + 60,
                rect.width,
                rect.height,
              ));
            },
            child: SizedBox(
              width: double.infinity,
              height: 110,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
            child: ShaderMask(
              blendMode: BlendMode.dstATop,
              shaderCallback: (Rect rect) {
                return const LinearGradient(colors: [
                  AppColors.whiteD6D6D7,
                  AppColors.orangeF6A440,
                  Colors.white
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                    .createShader(Rect.fromLTWH(
                  rect.left,
                  rect.top,
                  rect.width,
                  rect.height,
                ));
              },
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
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _CustomerNumberTextWidget(),
                    SizedBox(height: 30),
                    _PasswordTextWidget(),
                    _LoginButton(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextEditingCubit, TextEditingState>(
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
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              height: 70,
              width: 200,
              child: Center(
                  child: Text(
                'Login',
                style: AppTextStyle.colorBlackSize20ShadowWhite,
              )),
            ),
          ),
        ),
      );
    });
  }
}

class _CustomerNumberTextWidget extends StatelessWidget {
  const _CustomerNumberTextWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.1),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white),
          child: BlocSelector<TextEditingCubit, TextEditingState,
              TextEditingController>(
            selector: (TextEditingState state) => state.customerNumber,
            builder: (context, controller) {
              return TextField(
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'Kundennummer',
                  hintStyle: AppTextStyle.bold16,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              );
            },
          )),
    );
  }
}

class _PasswordTextWidget extends HookWidget {
  const _PasswordTextWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.1),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white),
          child: BlocBuilder<TextEditingCubit, TextEditingState>(
            builder: (context, state) => TextField(
              controller: state.customerPassword,
              keyboardType: TextInputType.none,
              decoration: InputDecoration(
                  suffixIcon: InkWell(
                      onTap: () =>
                          context.read<TextEditingCubit>().changeVisibility(),
                      child: state.hidePassword
                          ? const Icon(Icons.visibility_off_outlined)
                          : const Icon(Icons.visibility_outlined)),
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'Passwort',
                  hintStyle: AppTextStyle.bold16,
                  floatingLabelBehavior: FloatingLabelBehavior.always),
              obscureText: state.hidePassword,
            ),
          )),
    );
  }
}

class ShowFailureDialog extends StatelessWidget {
  const ShowFailureDialog._({required this.failure});

  final String failure;

  static present({required BuildContext context, required String failure}) =>
      showDialog(
          context: context,
          builder: (context) => ShowFailureDialog._(
                failure: failure,
              ));

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.4,
          width: MediaQuery.sizeOf(context).width * 0.7,
          decoration: BoxDecoration(
            color: AppColors.greyCACACA,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.error_outline_rounded,
                  size: 60,
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: Text(
                    failure,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.colorWhiteSize20ShadowBlack
                        .copyWith(fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('failure', failure));
    properties.add(StringProperty('failure', failure));
  }
}
