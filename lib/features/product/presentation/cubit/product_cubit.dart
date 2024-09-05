import 'package:app_flutter_produkt_bestellen/core/domain/use_case/use_case_get_single_image.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/cubit/product_state.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
import 'package:bloc/bloc.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._useCaseGetSingleLocalImage) : super(const ProductState());

  final UseCaseGetSingleLocalImage _useCaseGetSingleLocalImage;

  void load({
    final CategoryEntity? product,
    final String? color,
    final ({ShoppingBasketProduct chosenProduct, int index})? recordOrder,
  }) {
    if (product != null) {
      final entityCorePicture =
          _useCaseGetSingleLocalImage(productNumber: product.productNumber);

      emit(state.copyWith(
          productEntity: product, entityCorePicture: entityCorePicture));
    } else {
      final timeIndex = recordOrder!.index;
      final productState = recordOrder.chosenProduct;
      final entityCorePicture = _useCaseGetSingleLocalImage(
          productNumber:
              recordOrder.chosenProduct.categoryEntity.productNumber);
      emit(
        state.copyWith(
          productOrderCount: productState.productCount,
          productEntity: productState.categoryEntity,
          entityCorePicture: entityCorePicture,
          position: timeIndex,
        ),
      );
    }
  }

  void addProduct() {
    emit(state.copyWith(productOrderCount: state.productOrderCount + 1));
  }

  void subtractProduct() {
    if (state.productOrderCount > 0) {
      emit(state.copyWith(productOrderCount: state.productOrderCount - 1));
    }
  }

  void clear() {
    emit(
      state.copyWith(productOrderCount: 0, position: null),
    );
  }
}
