import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/page/category_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/login/presentation/page/login_page.dart';
import '../error/page_not_found.dart';

enum AppGoRouter {
  root('/'),
  categoryPage('Category');

  const AppGoRouter(this.title);

  final String title;

  static Map<String, String> routeMap = {
    'root' : AppGoRouter.root.title,
    'category' : '/'+AppGoRouter.categoryPage.title
  };

  static final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
          path: root.title,
          builder: (context, state) => Login(),
          routes: <GoRoute>[
            GoRoute(
              path: categoryPage.name,
              pageBuilder: (context, state) {
                return CustomTransitionPage<void>(
                  key: state.pageKey,
                  child: const Category(),
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
            ),
            GoRoute(
              path: 'Logout',
              builder: (context,state) => LoginPage(),
            )
          ]),

    ],
    errorBuilder: (context, state) => PageNotFound(state.error),
  );

  static GoRouter get router => _router;
}
