import 'package:app_flutter_produkt_bestellen/core/fix_widgets/failure_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globalPageWidget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/globalAppBar.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit_category.dart';
import '../cubit/state_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 1),
                    right: BorderSide(color: Colors.black, width: 2),
                    bottom: BorderSide(
                        color: Colors.black,
                        width: 0.3,
                        style: BorderStyle.none))),
            child: GlobalAppBar(
              context: context,
            ),
          ),
        ),
      ),
      body: const CategoryPage(),
    );
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: impconst Center(child: Text("hi"),)ter(child: Text("hi"),),);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
