import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/cubit_category.dart';

class CubitCategoryWorkingTable extends CubitCategory {
  CubitCategoryWorkingTable(
      super.useCaseGetCategoryProduct, super._useCaseGetPictures);

  @override
  List<String> getCategoryEntityPicturePath(
      {required List<CategoryEntity> categoryEntityList}) {
    return categoryEntityList.fold(<String>[],
        (previousElement, currentElement) {
      previousElement.addAll(
        currentElement.frameColors!
            .map((frameColor) =>
                "product_${currentElement.productNumber}_${frameColor.color}.png")
            .toList(),
      );
      return previousElement;
    });
  }
}
