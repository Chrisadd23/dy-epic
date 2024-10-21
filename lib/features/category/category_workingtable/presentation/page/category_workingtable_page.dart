import 'dart:convert';

import 'package:app_flutter_produkt_bestellen/core/extension/double.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/widget/category_product_picture.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryWorkingTableGridList extends StatelessWidget {
  const CategoryWorkingTableGridList({
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
                            color: 'black',
                            height: constraints.maxHeight * 0.65,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                categoryEntityList![index].type,
                                style: AppTextStyle.regular14,
                              ),
                            ),
                          ),
                          if (categoryEntityList?[index].price != null)
                            Text(
                              categoryEntityList![index].price!.getCurrency(),
                              style: AppTextStyle.bold18,
                            )
                        ],
                      );
                    }),
                  ),
                ),
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75),
            ),
          );
  }
}
