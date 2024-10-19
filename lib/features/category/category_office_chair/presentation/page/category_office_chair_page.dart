import 'dart:convert';

import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/widget/category_product_picture.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/cubit/home_cubit_category.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ProductInformationContainer extends StatelessWidget {
  const ProductInformationContainer(
      {super.key, required this.categoryEntity, required this.fit});

  final CategoryEntity categoryEntity;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          final routeName =
              context.read<LoginCubit>().state.customer?.getUserType ==
                      UserType.owner
                  ? AppGoRouter.productAdding.name
                  : AppGoRouter.product.name;
          final category = context.read<HomeCategoryCubit>().state;

          context.goNamed(routeName, queryParameters: {
            "product": jsonEncode(categoryEntity.toJson()),
            "categoryIndex": category.index.toString(),
          });
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all()),
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryImageContainer(
                  productNumber: categoryEntity.productNumber,
                  height: constraints.maxHeight * 0.75,
                  fit: fit,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: FittedBox(
                    child: Text(
                      categoryEntity.type,
                      style: AppTextStyle.regular14,
                    ),
                  ),
                ),
                if (categoryEntity.normalPrice != null)
                  Flexible(
                    child: FittedBox(
                      child: Text(
                        NumberFormat.currency(locale: 'de_DE', symbol: '€')
                            .format(double.parse(
                                categoryEntity.normalPrice.toString())),
                        style: AppTextStyle.bold18,
                      ),
                    ),
                  )
              ],
            );
          }),
        ),
      ),
    );
  }
}
