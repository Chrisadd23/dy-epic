import 'dart:convert';

import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/widget/category_product_picture.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CategoryConferenceChairGridList extends StatelessWidget {
  const CategoryConferenceChairGridList({
    super.key,
    this.categoryEntityList,
  });

  final List<CategoryEntity>? categoryEntityList;

  @override
  Widget build(BuildContext context) {
    return categoryEntityList == null || categoryEntityList!.isEmpty
        ? const SizedBox.shrink()
        : Expanded(
            child: GridView.builder(
              itemCount: categoryEntityList!.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    context.goNamed(AppGoRouter.product.name, queryParameters: {
                      "product": jsonEncode(categoryEntityList![index].toJson())
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all()),
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CategoryImageContainer(
                            productNumber:
                                categoryEntityList![index].productNumber,
                            height: constraints.maxHeight * 0.6,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                categoryEntityList![index].productTitle,
                                style: AppTextStyle.regular14,
                              ),
                            ),
                          ),
                          if (categoryEntityList?[index].normalPrice != null)
                            Text(
                              NumberFormat.currency(
                                      locale: 'de_DE', symbol: '€')
                                  .format(double.parse(
                                      categoryEntityList![index]
                                          .normalPrice
                                          .toString())),
                              style: AppTextStyle.bold18,
                            )
                        ],
                      );
                    }),
                  ),
                ),
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.7),
            ),
          );
  }
}
