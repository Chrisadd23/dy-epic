import 'dart:convert';

import 'package:app_flutter_produkt_bestellen/core/error/page_not_found.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text.dart';
import 'package:app_flutter_produkt_bestellen/features/app_start/presentation/page/app_start_page.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/page/home_page.dart';
import 'package:app_flutter_produkt_bestellen/features/legalities/presentation/page/legalities_page.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/page/login_page.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/entity/order_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/page/order_page.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/page/order_page_shell_navigation.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/page/request_page.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/widget/detailed_order_information.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/page/product_adding_page.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/page/product_page.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/page/customer_settings_page.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/page/notification_settings_page.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/page/settings_page_shell_navigation.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppGoRouter {
  root('/'),
  home('home'),
  login('login'),
  arbeitstische('arbeitstische'),
  buerostuehle('buerostuehle'),
  konferenzstuehle('konferenzstuehle'),
  konferenztische('konferenztische'),
  product('produkt'),
  order('bestellungen'),
  request('anfragen'),
  profileSettings('profileEinstellungen'),
  notificationSettings('notificationEinstellungen'),
  legalities('rechtliches'),
  detailedRequestInformation('requestInformation'),
  detailedOrderInformation('orderInformation'),
  productAdding('productIntegration');

  const AppGoRouter(this.path);

  final String path;

  static CustomTransitionPage<void> _getCustomerTransition(
          Widget page, GoRouterState state,
          {Duration transitionDuration = const Duration(milliseconds: 150),
          Duration reverseTransitionDuration =
              const Duration(milliseconds: 300)}) =>
      CustomTransitionPage<void>(
        key: state.pageKey,
        child: page,
        transitionDuration: transitionDuration,
        reverseTransitionDuration: reverseTransitionDuration,
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
    routes: [
      GoRoute(
          path: root.path,
          name: root.name,
          pageBuilder: (context, state) =>
              _getCustomerTransition(const AppStartPage(), state),
          routes: [
            GoRoute(
                path: login.path,
                name: login.name,
                pageBuilder: (context, state) {
                  final redirectName = state.queryParameters['redirectName'];
                  return _getCustomerTransition(
                      LoginPage(redirectName: redirectName), state);
                }),
            GoRoute(
              path: home.path,
              name: home.name,
              pageBuilder: (context, state) =>
                  _getCustomerTransition(const HomePage(), state),
              routes: [
                GoRoute(
                  path: product.path,
                  name: product.name,
                  pageBuilder: (context, state) {
                    debugPrint("check goRouter record ${state.extra as ({
                      ShoppingBasketProduct chosenProduct,
                      int index
                    })?}");

                    final recordOrder = state.extra as ({
                      ShoppingBasketProduct chosenProduct,
                      int index
                    })?;

                    debugPrint(
                        "state.queryParameters['product'] ==> ${state.queryParameters['product']}");
                    final product = _getCategoryEntityFromJsonDecode(
                        jsonEncoded: state.queryParameters['product']);
                    if (product != null) {
                      return _getCustomerTransition(
                        ProductPage(
                          product: product,
                        ),
                        state,
                      );
                    }
                    final selectedColor = state.queryParameters['color'];
                    debugPrint(
                        "check queryParameters selected Color- ${selectedColor.toString()}");
                    return _getCustomerTransition(
                      ProductPage(
                        color: selectedColor,
                        recordOrder: recordOrder,
                      ),
                      state,
                    );
                  },
                ),
                GoRoute(
                  path: AppGoRouter.productAdding.path,
                  name: AppGoRouter.productAdding.name,
                  pageBuilder: (context, state) {
                    final product = _getCategoryEntityFromJsonDecode(
                        jsonEncoded: state.queryParameters['product']);

                    final categoryIndex =
                        state.queryParameters['categoryIndex'];
                    return _getCustomerTransition(
                        ProductIntegrationPage(
                            product: product, categoryIndex: categoryIndex),
                        state);
                  },
                )
              ],
            ),
            StatefulShellRoute.indexedStack(
              pageBuilder: (context, state, navigationShell) =>
                  _getCustomerTransition(
                OrderPageShellNavigation(
                  navigationShell: navigationShell,
                  goRouterState: state,
                ),
                state,
              ),
              branches: <StatefulShellBranch>[
                StatefulShellBranch(
                  routes: [
                    GoRoute(
                      path: order.path,
                      name: order.name,
                      builder: (context, state) => const OrderPage(),
                      routes: [
                        GoRoute(
                          path: detailedOrderInformation.path,
                          name: detailedOrderInformation.name,
                          pageBuilder: (context, state) {
                            final orderEntity = state.extra as OrderEntity;
                            return _getCustomerTransition(
                              DetailedOrderInformation(
                                informationTitle: AppText.orderInformation,
                                orderEntity: orderEntity,
                              ),
                              state,
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                StatefulShellBranch(
                  routes: [
                    GoRoute(
                      path: request.path,
                      name: request.name,
                      builder: (context, state) => const RequestPage(),
                      routes: [
                        GoRoute(
                          path: detailedRequestInformation.path,
                          name: detailedRequestInformation.name,
                          pageBuilder: (context, state) {
                            final orderEntity = state.extra as OrderEntity;
                            return _getCustomerTransition(
                              DetailedOrderInformation(
                                informationTitle: AppText.requestInformation,
                                orderEntity: orderEntity,
                              ),
                              state,
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellRoute.indexedStack(
              pageBuilder: (context, state, navigationShell) =>
                  _getCustomerTransition(
                SettingsPageShellNavigation(navigationShell: navigationShell),
                state,
              ),
              branches: <StatefulShellBranch>[
                StatefulShellBranch(
                  routes: [
                    GoRoute(
                      path: notificationSettings.path,
                      name: notificationSettings.name,
                      builder: (context, state) =>
                          const NotificationSettingsPage(),
                    ),
                  ],
                ),
                StatefulShellBranch(
                  routes: [
                    GoRoute(
                      path: profileSettings.path,
                      name: profileSettings.name,
                      builder: (context, state) => const CustomerSettingsPage(),
                    ),
                  ],
                ),
              ],
            ),
            GoRoute(
              path: legalities.path,
              name: legalities.name,
              pageBuilder: (context, state) =>
                  _getCustomerTransition(const LegalitiesPage(), state),
            ),
          ])
    ],
    errorBuilder: (context, state) => PageNotFound(state.error),
    redirect: (context, state) {
      return null;
    },
  );

  static CategoryEntity? _getCategoryEntityFromJsonDecode(
      {String? jsonEncoded}) {
    if (jsonEncoded != null) {
      final jsonObject = jsonDecode(jsonEncoded);
      debugPrint("jsonObject ==> $jsonObject");
      return CategoryEntity.fromJson(jsonObject);
    }
    return null;
  }

  static GoRouter get router => _router;
}
