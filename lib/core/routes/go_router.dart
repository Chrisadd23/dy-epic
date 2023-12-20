import 'package:app_flutter_produkt_bestellen/core/error/page_not_found.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/page/page_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/presentation/page/page_buerostuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/presentation/page/page_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenztische/presentation/page/page_konferenztische.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/page/home_page.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/page/login_page.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/page/workingtable_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppGoRouter {
  root('/'),
  homePage('home'),
  arbeitstische('arbeitstische'),
  buerostuehle('buerostuehle'),
  konferenzstuehle('konferenzstuehle'),
  konferenztische('konferenztische'),
  product('produkt');

  const AppGoRouter(this.title);

  final String title;

  static Map<String, List<String>> routeMap = {
    'root': [AppGoRouter.root.title],
    'home': ['/${AppGoRouter.homePage.title}'],
    'arbeitstische': [
      '/${AppGoRouter.homePage.title}/${AppGoRouter.arbeitstische.title}'
    ],
    'product': [
      '/${AppGoRouter.homePage.title}/${AppGoRouter.arbeitstische.title}/${AppGoRouter.product.title}',
      '',
      ''
    ]
  };

  static List<String> shouldntPop = ['/home'];

  static final GoRouter _router = GoRouter(
      debugLogDiagnostics: true,
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
                      pageBuilder: (context, state) {
                        return CustomTransitionPage(
                          key: state.pageKey,
                          child: const PageWorkTables(),
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
                          path: product.title,
                          name: product.name,
                          builder: (context, state) {
                            final product =
                                state.extra as EnumCategoryWorkingTable;
                            final selctedColor = state.queryParameters;
                            return WorkingTablePage(
                                product: product, color: selctedColor);
                          },
                        )
                      ]),
                  GoRoute(
                    path: buerostuehle.title,
                    name: buerostuehle.name,
                    builder: (context, state) => const PageBuerostuehle(),
                  ),
                  GoRoute(
                    path: konferenzstuehle.title,
                    name: konferenzstuehle.name,
                    builder: (context, state) => const PageKonferenzstuehle(),
                  ),
                  GoRoute(
                    path: konferenztische.title,
                    name: konferenztische.name,
                    builder: (context, state) => const PageKonferenztische(),
                  )
                ],
              ),
              GoRoute(
                path: 'Logout',
                builder: (context, state) => const LoginPage(),
              )
            ]),
      ],
      errorBuilder: (context, state) => PageNotFound(state.error),
      redirect: (context, state) {
        return null;
      });

  static GoRouter get router => _router;
}
