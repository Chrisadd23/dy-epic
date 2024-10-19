import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/failure_coumn.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_scaffold.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/local_neumorphic_button.dart';
import 'package:app_flutter_produkt_bestellen/core/presentation/cubit/cubit_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/presentation/page/category_office_chair_page.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/cubit_category.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/cubit/home_cubit_category.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/widget/add_product_ink_well.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/widget/company_info.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/widget/delete_dialog.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_state.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
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
      body: MultiBlocProvider(
        providers: [
          BlocProvider<BlocShoppingBasket>.value(
            value: getIt<BlocShoppingBasket>(),
          ),
          BlocProvider<CubitCorePictures>.value(
              value: CubitCorePictures(getIt(), getIt())),
          BlocProvider<HomeCategoryCubit>(
            create: (context) => HomeCategoryCubit(),
          ),
          BlocProvider<LoginCubit>.value(
            value: getIt<LoginCubit>(),
          ),
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
    return BlocBuilder<HomeCategoryCubit, EnumCategoryProduct>(
        builder: (context, enumCategory) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LocalNeumorphicButton(
            color: enumCategory == categoryProduct
                ? AppColors.greyA7A7A7
                : Colors.white,
            onPressedBasedOnDuration: () => context
                .read<HomeCategoryCubit>()
                .changeCategory(categoryProduct: categoryProduct),
            borderRadius: 10,
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: FittedBox(child: Text(category)),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            const CompanyInfo(),
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
                    category: 'Konferenzstühle',
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
        const DialogShoppingBasket(),
      ],
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
            return BlocProvider<CubitCategory>.value(
                value: getIt<CubitCategory>(
                    instanceName: EnumCategoryProduct.workingTable.name)
                  ..load(),
                child: const _CategoryWorkingTableList());
          case EnumCategoryProduct.officeChairNormal:
            return BlocProvider<CubitCategory>.value(
                value: getIt<CubitCategory>(
                    instanceName: EnumCategoryProduct.officeChairNormal.name)
                  ..load(),
                child: const _CategoryOfficeChair());
          case EnumCategoryProduct.officeChairHochlehner:
            return BlocProvider<CubitCategory>.value(
                value: getIt<CubitCategory>(
                    instanceName:
                        EnumCategoryProduct.officeChairHochlehner.name)
                  ..load(),
                child: const _CategoryOfficeChair());
          case EnumCategoryProduct.conferenceChair:
            return BlocProvider<CubitCategory>.value(
                value: getIt<CubitCategory>(
                    instanceName: EnumCategoryProduct.conferenceChair.name)
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
    return BlocBuilder<CubitCategory, StateCategory>(
        builder: (context, categoryState) {
      return categoryState.map(
          loading: (_) => const LoadingWidget(),
          success: (success) => BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, loginState) {
                return _CategoryGridViewBuilder(
                  fit: BoxFit.fitWidth,
                  categoryEntities: success.categoryEntityList ?? [],
                );
              }),
          failure: (failure) =>
              FailureWidget(failure: failure.failure.getFailureMessage));
    });
  }
}

class _CategoryOfficeChair extends StatelessWidget {
  const _CategoryOfficeChair();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitCategory, StateCategory>(
        builder: (context, categoryState) {
      return categoryState.map(
          loading: (_) => const LoadingWidget(),
          success: (success) => BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, loginState) {
                return _CategoryGridViewBuilder(
                  categoryEntities: success.categoryEntityList ?? [],
                );
              }),
          failure: (failure) =>
              FailureWidget(failure: failure.failure.getFailureMessage));
    });
  }
}

class _CategoryConferenceChair extends StatelessWidget {
  const _CategoryConferenceChair();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitCategory, StateCategory>(
        builder: (context, categoryState) {
      return categoryState.map(
          loading: (_) => const LoadingWidget(),
          success: (success) => BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, loginState) {
                return _CategoryGridViewBuilder(
                  categoryEntities: success.categoryEntityList ?? [],
                );
              }),
          failure: (failure) =>
              FailureWidget(failure: failure.failure.getFailureMessage));
    });
  }
}

class _CategoryGridViewBuilder extends StatelessWidget {
  const _CategoryGridViewBuilder({
    required this.categoryEntities,
    this.fit = BoxFit.fitHeight,
  });

  final List<CategoryEntity> categoryEntities;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final bool isUserOwner =
        context.read<LoginCubit>().state.customer?.getUserType ==
            UserType.owner;
    final categoryList = isUserOwner
        ? categoryEntities
        : categoryEntities.removeInvisibleEntities();
    final itemCount =
        isUserOwner ? categoryEntities.length + 1 : categoryList.length;
    return Expanded(
      child: GridView.builder(
        itemCount: itemCount,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context, index) => isUserOwner && index == itemCount - 1
            ? const AddProductInkWell()
            : isUserOwner
                ? _ProductInformationAndDeleteButtonStack(
                    categoryProduct: categoryList[index], fit: fit)
                : ProductInformationContainer(
                    categoryEntity: categoryList[index],
                    fit: fit,
                  ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.68),
      ),
    );
  }
}

class _ProductInformationAndDeleteButtonStack extends StatelessWidget {
  const _ProductInformationAndDeleteButtonStack({
    required this.categoryProduct,
    required this.fit,
  });

  final CategoryEntity categoryProduct;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProductInformationContainer(
          categoryEntity: categoryProduct,
          fit: fit,
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0),
                    blurRadius: 6.0,
                  ),
                ]),
            child: InkWell(
              onTap: () => DeleteDialog.show(
                context: context,
                categoryEntity: categoryProduct,
                enumCategoryProduct: context.read<HomeCategoryCubit>().state,
              ),
              child: const Icon(
                Icons.delete,
                color: Colors.red,
                size: 40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
