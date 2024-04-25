import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/domain/entity/category_workingtable_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_product_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

abstract class CategoryWorkingTableDatasource {
  Future<Either<Failure, CategoryWorkingTableEntity>> getWorkingTableData();
}

class DataSourceWorkingTableImplementation
    extends CategoryWorkingTableDatasource {
  @override
  Future<Either<Failure, CategoryWorkingTableEntity>>
      getWorkingTableData() async {
    // TODO: implement getArbeitstischeData
    try {
      Failure? failure;
      List<CategoryWorkingTableProductEntity> workingTableList = [];

      await FirebaseFirestore.instance
          .collection('Product')
          .doc('kbLDlq3ItPF7onHoQnYL')
          .collection('workingTable')
          .get()
          .timeout(const Duration(seconds: 10))
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.map((document) async {
          final Map<String, dynamic> data =
              document.data() as Map<String, dynamic>;
          debugPrint(
              "categoryWorkingTableProductEntity ==> ${data['frameColors']}");

          if (document.id != 'additionalAttributes') {
            final workingTableFrameColors =
                _getWorkingTableFrameColors(data: data['frameColors']);
            final categoryProductEntity = _getCategoryProductEntity(
                data: data,
                workingTableFrameColor:
                    workingTableFrameColors.firstOrNull?.colorName);

            final pricePerSize = _getPricePerSize(data: data['pricePerSize']);
            final categoryWorkingTableProductEntity =
                CategoryWorkingTableProductEntity(
                    categoryProductEntity: categoryProductEntity,
                    workingTableFrameColors: workingTableFrameColors,
                    pricePerSize: pricePerSize);
            workingTableList.add(categoryWorkingTableProductEntity);
            debugPrint(
                "categoryWorkingTableProductEntity ==> $categoryWorkingTableProductEntity");
          }
        }).toList();
      }, onError: (error) {
        failure = Failure.databaseError(error.toString());
      });
      if (failure != null) {
        return Left(failure!);
      } else {
        return Right(CategoryWorkingTableEntity(
            categoryName: 'E-Smart', listProduct: workingTableList));
      }
    } catch (e) {
      return const Left(
          Failure.databaseError('Sortiment konnte nicht geladen werden'));
    }
  }

  CategoryProductEntity _getCategoryProductEntity(
      {required Map<String, dynamic> data, String? workingTableFrameColor}) {
    return CategoryProductEntity(
        productNumber: data['productNumber'] ?? '',
        name: data['productTitle'] ?? '',
        productType: _getProductType(productType: data['type'] ?? ''),
        price: double.parse(data['pricePerSize']['large']['price'].toString()),
        indexNumber: 0,
        picturePath:
            'product_${data['productNumber']}_$workingTableFrameColor.png');
  }

  List<CategoryWorkingTableFrameColor> _getWorkingTableFrameColors(
      {required Map<String, dynamic> data}) {
    return data.keys
        .map((key) =>
            CategoryWorkingTableFrameColor(colorName: key, hexValue: data[key]))
        .toList();
  }

  List<CategoryWorkingTableProductPricePerSize> _getPricePerSize(
      {required Map<String, dynamic> data}) {
    return data.keys
        .map((key) => CategoryWorkingTableProductPricePerSize(
            pricePerSizeEnum: CategoryWorkingTablePricePerSizeEnum.values
                .where((element) => element.name == key)
                .first,
            width: int.parse(data[key]['width'].toString()),
            height: int.parse(data[key]['height'].toString()),
            price: double.parse(data[key]['price'].toString())))
        .toList();
  }

  EnumCategoryWorkingTable _getProductType({required String productType}) {
    return EnumCategoryWorkingTable.values
            .where((workingTable) => workingTable.type == productType)
            .firstOrNull ??
        EnumCategoryWorkingTable.ahorn;
  }
}
