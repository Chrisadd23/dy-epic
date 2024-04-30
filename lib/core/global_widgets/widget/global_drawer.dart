import 'package:app_flutter_produkt_bestellen/core/fix_widgets/drawer_button.dart';
import 'package:app_flutter_produkt_bestellen/core/list_values/list_values.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/event_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class GlobalDrawer extends StatelessWidget {
  const GlobalDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>.value(
          value: getIt<LoginCubit>(),
        ),
        BlocProvider<BlocShoppingBasket>.value(
          value: getIt<BlocShoppingBasket>(),
        ),
      ],
      child: const _DrawerWidget(),
    );
  }
}

class _DrawerWidget extends StatelessWidget {
  const _DrawerWidget();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.704,
        child: Drawer(
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: Color.fromRGBO(221, 221, 221, 1),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurStyle: BlurStyle.inner,
                                offset: Offset(0, 2)),
                          ]),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () =>
                                context.goNamed(AppGoRouter.homePage.name),
                            child: Container(
                              height: 68,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black,
                                        blurStyle: BlurStyle.inner,
                                        offset: Offset(0, 2)),
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Image.asset(
                                  Assets.company.appBarLogo.path,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: SizedBox(
                              width: double.infinity,
                              height: 70,
                              child: InkWell(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: const Color.fromRGBO(
                                                247, 165, 64, 1.0),
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurStyle: BlurStyle.inner,
                                                  offset: Offset(0, 1)),
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurStyle: BlurStyle.inner,
                                                  offset: Offset(0, -1)),
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurStyle: BlurStyle.inner,
                                                  offset: Offset(1, 0)),
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurStyle: BlurStyle.inner,
                                                  offset: Offset(-1, 0)),
                                            ]),
                                        child: const Padding(
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Icon(
                                            Icons.person,
                                            color: Color.fromRGBO(
                                                221, 221, 221, 1),
                                            size: 45,
                                            shadows: [
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurStyle: BlurStyle.inner,
                                                  offset: Offset(0, 1)),
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurStyle: BlurStyle.inner,
                                                  offset: Offset(0, -1)),
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurStyle: BlurStyle.inner,
                                                  offset: Offset(1, 0)),
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurStyle: BlurStyle.inner,
                                                  offset: Offset(-1, 0)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(child: Center(
                                      child:
                                          BlocBuilder<LoginCubit, LoginState>(
                                              builder: (context, state) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: FittedBox(
                                            child: Text(
                                              state.mapOrNull(
                                                      loggedIn: (stateLoggedIn) =>
                                                          stateLoggedIn
                                                              .entityLoginCustomer
                                                              .customerNumber) ??
                                                  'Kundennummer',
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ),
                                        );
                                      }),
                                    ))
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 70),
                    Column(children: [
                      ...ListValues.drawerList.keys
                          .map((key) => FixDrawerButton(
                                title: key,
                                function: () {
                                  context.go('/${ListValues.drawerList[key]}');
                                },
                              ))
                          .toList()
                    ]),
                    const SizedBox(height: 50),
                    BlocBuilder<LoginCubit, LoginState>(
                        builder: (context, state) {
                      return FixDrawerButton(
                          title: 'Logout',
                          height: 40,
                          function: () async {
                            await context.read<LoginCubit>().logOut();

                            if (context.mounted) {
                              context
                                  .read<BlocShoppingBasket>()
                                  .add(const EventShoppingBasket.clear());

                              context.go('/');
                            }
                          });
                    }),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
