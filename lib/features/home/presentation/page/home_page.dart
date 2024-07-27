import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/failure_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/presentation/cubit/cubit_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/presentation/cubit/category_conference_chair_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/presentation/page/category_conference_chair_page.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/presentation/cubit/category_office_chair_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/presentation/page/category_office_chair_page.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/presentation/cubit/cubit_category_workingtable.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/presentation/page/category_workingtable_page.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/cubit/home_cubit_category.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: MultiBlocProvider(
        providers: [
          BlocProvider<BlocShoppingBasket>.value(
            value: getIt<BlocShoppingBasket>(),
          ),
          BlocProvider<CubitCorePictures>.value(
              value: CubitCorePictures(getIt())),
          BlocProvider<HomeCategoryCubit>(
              create: (context) => HomeCategoryCubit()),
        ],
        child: const CategoryPage(),
      ),
      showMenuBar: true,
    );
  }
}

class _CategoryListRow extends StatelessWidget {
  const _CategoryListRow(
      {required this.category, required this.categoryProduct});

  final String category;
  final EnumCategoryProduct categoryProduct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: InkWell(
        onTap: () => context
            .read<HomeCategoryCubit>()
            .changeCategory(categoryProduct: categoryProduct),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.4,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 2),
            child: FittedBox(fit: BoxFit.fitHeight, child: Text(category)),
          ),
        ),
      ),
    );
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 35,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: _CategoryListRow(
                    category: 'Arbeitstische',
                    categoryProduct: EnumCategoryProduct.workingTable,
                  ),
                ),
                _CategoryListRow(
                  category: 'Bürostühle',
                  categoryProduct: EnumCategoryProduct.officeChairNormal,
                ),
                _CategoryListRow(
                  category: 'Hochlehner',
                  categoryProduct: EnumCategoryProduct.officeChairHochlehner,
                ),
                _CategoryListRow(
                  category: 'Konferenztische',
                  categoryProduct: EnumCategoryProduct.conferenceChair,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const _ProductColumn(),
        ],
      ),
    );
  }
}

class _ProductColumn extends StatelessWidget {
  const _ProductColumn();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCategoryCubit, EnumCategoryProduct>(
        builder: (context, category) {
      productColum() {
        switch (category) {
          case EnumCategoryProduct.workingTable:
            return BlocProvider<CubitCategoryWorkingTable>.value(
                value: getIt<CubitCategoryWorkingTable>(
                    instanceName: AppText.categoryWorkingTable)
                  ..load(),
                child: const _CategoryWorkingTableList());
          case EnumCategoryProduct.officeChairNormal:
            return BlocProvider<CubitCategoryOfficeChair>.value(
                value: getIt<CubitCategoryOfficeChair>(
                    instanceName: AppText.categoryOfficeChairNormal)
                  ..load(),
                child: const _CategoryOfficeChair());
          case EnumCategoryProduct.officeChairHochlehner:
            return BlocProvider<CubitCategoryOfficeChair>.value(
                value: getIt<CubitCategoryOfficeChair>(
                    instanceName: AppText.categoryOfficeChairHochlehner)
                  ..load(),
                child: const _CategoryOfficeChair());
          case EnumCategoryProduct.conferenceChair:
            return BlocProvider<CubitCategoryConferenceChair>.value(
                value: getIt<CubitCategoryConferenceChair>(
                    instanceName: AppText.categoryConferenceChair)
                  ..load(),
                child: const _CategoryConferenceChair());
        }
      }

      return productColum();
    });
  }
}

class _CategoryWorkingTableList extends StatelessWidget {
  const _CategoryWorkingTableList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitCategoryWorkingTable, StateCategory>(
        builder: (context, state) {
      return state.map(
          loading: (_) => const LoadingWidget(),
          success: (success) => CategoryWorkingTableGridList(
              categoryEntityList: success.categoryEntityList),
          failure: (failure) =>
              FailureWidget(failure: failure.failure.getFailureMessage));
    });
  }
}

class _CategoryOfficeChair extends StatelessWidget {
  const _CategoryOfficeChair();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitCategoryOfficeChair, StateCategory>(
        builder: (context, state) {
      return state.map(
          loading: (_) => const LoadingWidget(),
          success: (success) => CategoryOfficeChairGridList(
              categoryEntityList: success.categoryEntityList),
          failure: (failure) =>
              FailureWidget(failure: failure.failure.getFailureMessage));
    });
  }
}

class _CategoryConferenceChair extends StatelessWidget {
  const _CategoryConferenceChair();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitCategoryConferenceChair, StateCategory>(
        builder: (context, state) {
      return state.map(
          loading: (_) => const LoadingWidget(),
          success: (success) => CategoryConferenceChairGridList(
                categoryEntityList: success.categoryEntityList,
              ),
          failure: (failure) =>
              FailureWidget(failure: failure.failure.getFailureMessage));
    });
  }
}
