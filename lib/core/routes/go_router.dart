import 'package:app_flutter_produkt_bestellen/core/error/page_not_found.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/page/page_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/presentation/page/page_buerostuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/presentation/page/page_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/konferenztische/presentation/page/page_konferenztische.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/page/home_page.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/page/login_page.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/page/order_page.dart';
import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/page/workingtable_page.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/presentation/page/page_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/presentation/page/page_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

enum AppGoRouter {
  root('/'),
  homePage('home'),
  arbeitstische('arbeitstische'),
  buerostuehle('buerostuehle'),
  konferenzstuehle('konferenzstuehle'),
  konferenztische('konferenztische'),
  product('produkt'),
  order('bestellungen');

  const AppGoRouter(this.title);

  final String title;

  static Map<String, List<String>> routeMap = {
    'root': [AppGoRouter.root.title],
    'home': ['/${AppGoRouter.homePage.title}'],
    'bestellungen': ['/${AppGoRouter.order.title}'],
    'arbeitstische': [
      '/${AppGoRouter.homePage.title}/${AppGoRouter.arbeitstische.title}'
    ],
    'product': [
      '/${AppGoRouter.homePage.title}/${AppGoRouter.arbeitstische.title}/${AppGoRouter.product.title}',
      '',
      ''
    ]
  };

  static List<String> shouldntPop = ['/home', '/bestellungen'];

  static CustomTransitionPage<void> _getCustomerTransition(
          Widget page, GoRouterState state) =>
      CustomTransitionPage<void>(
        key: state.pageKey,
        child: page,
        transitionDuration: const Duration(milliseconds: 150),
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, Widget child) {
          // Change the opacity of the screen using a Curve based on the the animation's
          // value
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
            child: child,
          );
        },
      );

  static final GoRouter _router = GoRouter(
      debugLogDiagnostics: true,
      routes: <GoRoute>[
        GoRoute(
            path: root.title,
            builder: (context, state) => BlocProvider<BlocShoppingBasket>.value(
                value: getIt<BlocShoppingBasket>(), child: const Login()),
            routes: <GoRoute>[
              GoRoute(
                path: order.title,
                name: order.name,
                pageBuilder: (context, state) =>
                    _getCustomerTransition(const OderPage(), state),
              ),
              //---------------------------------------------------

              GoRoute(
                path: homePage.title,
                name: homePage.name,
                pageBuilder: (context, state) =>
                    _getCustomerTransition(const HomePage(), state),
                routes: [
                  GoRoute(
                    path: arbeitstische.title,
                    name: arbeitstische.name,
                    pageBuilder: (context, state) =>
                        _getCustomerTransition(const PageWorkTables(), state),
                    routes: [
                      GoRoute(
                        path: product.title,
                        name: '${arbeitstische.name}/${product.name}',
                        pageBuilder: (context, state) {
                          final product =
                              state.queryParameters['productNumber'];
                          debugPrint("check goRouter record ${state.extra as ({
                            ChosenProduct chosenProduct,
                            int index
                          })?}");
                          final recordOrder = state.extra as ({
                            ChosenProduct chosenProduct,
                            int index
                          })?;

                          final selectedColor = state.queryParameters['color'];
                          return _getCustomerTransition(
                              PageWorkingTableProduct(
                                  product: product,
                                  color: selectedColor,
                                  recordOrder: recordOrder),
                              state);
                        },
                      )
                    ],
                  ),
                  GoRoute(
                    path: buerostuehle.title,
                    name: buerostuehle.name,
                    pageBuilder: (context, state) =>
                        _getCustomerTransition(const PageBuerostuehle(), state),
                    routes: [
                      GoRoute(
                        path: product.title,
                        name: '${buerostuehle.name}/${product.name}',
                        pageBuilder: (context, state) {
                          final product =
                              state.queryParameters['productNumber'];
                          debugPrint("check goRouter recor ${state.extra as ({
                            ChosenProduct chosenProduct,
                            int index
                          })?}");
                          final recordOrder = state.extra as ({
                            ChosenProduct chosenProduct,
                            int index
                          })?;
                          return _getCustomerTransition(
                              PageOfficeChairProduct(
                                  product: product, recordOrder: recordOrder),
                              state);
                        },
                      )
                    ],
                  ),
                  GoRoute(
                    path: konferenzstuehle.title,
                    name: konferenzstuehle.name,
                    pageBuilder: (context, state) => _getCustomerTransition(
                        const PageKonferenzstuehle(), state),
                    routes: [
                      GoRoute(
                        path: product.title,
                        name: '${konferenzstuehle.name}/${product.name}',
                        pageBuilder: (context, state) {
                          debugPrint("check goRouter recor ${state.extra as ({
                            ChosenProduct chosenProduct,
                            int index
                          })?}");
                          final product =
                              state.queryParameters['productNumber'];
                          final recordOrder = state.extra as ({
                            ChosenProduct chosenProduct,
                            int index
                          })?;
                          return _getCustomerTransition(
                              PageConferenceChairProduct(
                                product: product,
                                recordOrder: recordOrder,
                              ),
                              state);
                        },
                      )
                    ],
                  ),
                  GoRoute(
                    path: konferenztische.title,
                    name: konferenztische.name,
                    builder: (context, state) => const PageKonferenztische(),
                  )
                ],
              ),
              //----------------------------------------------------------------
            ]),
      ],
      errorBuilder: (context, state) => PageNotFound(state.error),
      redirect: (context, state) {
        return null;
      });

  static GoRouter get router => _router;
}
