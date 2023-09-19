import 'package:app_flutter_produkt_bestellen/core/error/page_not_found.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/page/page_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/page/home_page.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppGoRouter {
  root('/'),
  homePage('home'),
  arbeitstische('arbeitstische');

  const AppGoRouter(this.title);

  final String title;

  static Map<String, String> routeMap = {
    'root': AppGoRouter.root.title,
    'home': '/${AppGoRouter.homePage.title}'
  };

  static List<String> shouldntPop = ['/home'];

  static final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
          path: root.title,
          builder: (context, state) => const Login(),
          routes: <GoRoute>[
            GoRoute(
                path: homePage.title,
                name: homePage.name,
                pageBuilder: (context, state) {
                  return CustomTransitionPage<void>(
                    key: state.pageKey,
                    child: const HomePage(),
                    transitionDuration: const Duration(milliseconds: 150),
                    transitionsBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation,
                        Widget child) {
                      // Change the opacity of the screen using a Curve based on the the animation's
                      // value
                      return FadeTransition(
                        opacity: CurveTween(curve: Curves.easeInOut)
                            .animate(animation),
                        child: child,
                      );
                    },
                  );
                },
                routes: [
                  GoRoute(
                      path: arbeitstische.title,
                      name: arbeitstische.name,
                      builder: (context, state) => const PageArbeitsTische())
                ]),
            GoRoute(
              path: 'Logout',
              builder: (context, state) => const LoginPage(),
            )
          ]),
    ],
    errorBuilder: (context, state) => PageNotFound(state.error),
  );

  static GoRouter get router => _router;
}
