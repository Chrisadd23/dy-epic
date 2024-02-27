import 'package:app_flutter_produkt_bestellen/core/fix_widgets/failure_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/cubit/home_category_state.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/cubit/home_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/widget/category_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/state_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: BlocProvider<BlocShoppingBasket>.value(
        value: getIt<BlocShoppingBasket>(),
        child: const CategoryPage(),
      ),
      showMenuBar: true,
    );
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: impconst Center(child: Text("hi"),)ter(child: Text("hi"),),);
    return BlocProvider(
      create: (context) => HomeCubit()..load(),
      child: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              BlocBuilder<HomeCubit, HomeCategoryState>(
                builder: (context, state) => state.when(
                  loading: () => const LoadingWidget(
                    firstWidth: 110,
                    secondWidth: 60,
                  ),
                  failure: (failure) => FailureWidget(
                    failure: failure.toString(),
                  ),
                  success: (listCategory) => ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    padding: EdgeInsets.only(
                      left: MediaQuery.sizeOf(context).width * 0.1,
                      right: MediaQuery.sizeOf(context).width * 0.1,
                      top: MediaQuery.sizeOf(context).height * 0.03,
                    ),
                    itemCount: listCategory.length,
                    itemBuilder: (BuildContext context, int index) =>
                        CategoryWidget(
                      img: listCategory[index].imgPath,
                      title: listCategory[index].title,
                      navigation: listCategory[index].navigation,
                    ),
                  ),
                ),
              ),
              BlocBuilder<BlocShoppingBasket, StateShoppingBasket>(
                  builder: (context, state) {
                return const DialogShoppingBasket();
              })
            ],
          )),
    );
  }
}
