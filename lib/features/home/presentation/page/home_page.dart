import 'package:app_flutter_produkt_bestellen/core/fix_widgets/failure_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/cubit/cubit_category.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/cubit/state_category.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: const CategoryPage(),
    );
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: impconst Center(child: Text("hi"),)ter(child: Text("hi"),),);
    return BlocProvider(
      create: (context) => HomePageCubit(getIt())..load(),
      child: SizedBox(
          width: double.infinity,
          child: BlocBuilder<HomePageCubit, StateCategory>(
            builder: (context, state) => (state.maybeWhen(
                loading: () => const LoadingWidget(),
                failure: () => const FailureWidget(
                      failure: '',
                    ),
                success: (listCategory) => SingleChildScrollView(
                      child: Column(
                        children: [...listCategory],
                      ),
                    ),
                orElse: () => const SizedBox.shrink())),
          )),
    );
  }
}
