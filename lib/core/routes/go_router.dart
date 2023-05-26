
import 'package:app_flutter_produkt_bestellen/core/error/page_not_found.dart';
import 'package:app_flutter_produkt_bestellen/features/category/presentation/page/category_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


enum AppGoRouter
{
  root('/'),
  categoryPage('Category');
  const AppGoRouter(this.title);
  final String title;

  static final GoRouter _router = GoRouter(
    routes: <GoRoute>[
    GoRoute(path: root.title,
    pageBuilder: (context,state) {
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
            opacity:
            CurveTween(curve: Curves.easeInOut).animate(animation),
            child: child,
          );
        },
      );
    },),
  ],
    errorBuilder: (context,state) => PageNotFound(state.error),
);

  static GoRouter get router => _router;
}