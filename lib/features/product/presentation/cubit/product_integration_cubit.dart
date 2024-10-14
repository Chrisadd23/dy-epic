import 'package:app_flutter_produkt_bestellen/core/domain/use_case/use_case_get_single_image.dart';
import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/data/model/category_product_model.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/product/domain/use_case/get_image_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/product/domain/use_case/upload_product_image_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/product/domain/use_case/upload_product_info_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/cubit/product_integration_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductIntegrationCubit extends Cubit<ProductIntegrationState> {
  ProductIntegrationCubit(this._uploadProductInfoUseCase, this._getImageUseCase,
      this._uploadProductImageUseCase, this._getLocalPicture)
      : super(const ProductIntegrationState(
            imageUploadInProcess: false,
            infoUploadInProcess: false,
            isProductVisible: true,
            categoryProduct: EnumCategoryProduct.workingTable,
            changeProduct: false));

  final UploadProductInfoUseCase _uploadProductInfoUseCase;
  final UploadProductImageUseCase _uploadProductImageUseCase;
  final GetImageUseCase _getImageUseCase;
  final UseCaseGetSingleLocalImage _getLocalPicture;

  void changeProduct({CategoryEntity? product, String? categoryIndex}) {
    if (product != null && categoryIndex != null) {
      debugPrint("changeProduct $product");
      final image = _getLocalPicture(productNumber: product.productNumber);
      final category =
          EnumCategoryProduct.category(typeIndex: int.parse(categoryIndex));
      emit(state.copyWith(
          imageUint8List: image?.listIntForUint8List,
          attributes: product.attributes ?? [],
          isProductVisible: product.isVisible,
          categoryProduct: category,
          changeProduct: true));
    }
  }

  Future<void> getImage() async {
    final image = await _getImageUseCase();
    image.fold(
        (failure) => emit(state.copyWith(failure: failure)),
        (imageByte) =>
            emit(state.copyWith(imageUint8List: imageByte, failure: null)));
  }

  Future<void> uploadImage({required String productNumber}) async {
    if (state.changeProduct) return;

    emit(state.copyWith(imageUploadInProcess: true));
    if (state.imageUint8List == null) {
      emit(state.copyWith(
          imageUploadInProcess: false,
          failure:
              const Failure.message('Es wurde keine Bilddatei gefunden.')));
      return;
    }
    final response = await _uploadProductImageUseCase(
      productNumber: productNumber,
    );
    response.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, imageUploadInProcess: false)),
        (success) => emit(state.copyWith(imageUploadInProcess: false)));
  }

  Future<void> uploadProduct({
    required String productNumber,
    required String productTitle,
    required String type,
    required String price,
  }) async {
    debugPrint('required String productNumber $productNumber,'
        'required String productTitle $productTitle,'
        'required String type $type,'
        'required String price ${price.replaceAll('.', '').replaceAll(RegExp(r'[^0-9,]'), '')},');
    emit(state.copyWith(infoUploadInProcess: true));
    if (_isNecessaryAttributeNotEmpty(
        productNumber: productNumber,
        productTitle: productTitle,
        type: type,
        price: price)) {
      final double numPrice = double.parse(price
          .replaceAll('.', '')
          .replaceAll(RegExp(r'[^0-9,]'), '')
          .replaceAll(',', '.'));

      final productJson = CategoryProductModel(
              isVisible: state.isProductVisible,
              productNumber: productNumber,
              productTitle: productTitle,
              type: type,
              price: numPrice,
              attributes: state.attributes)
          .toJson();
      debugPrint('productJson => ${_uploadProductInfoUseCase.toString()}');
      final response = await _uploadProductInfoUseCase(
          json: productJson, category: state.categoryProduct.name);
      response.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, infoUploadInProcess: false)),
        (success) => emit(
          state.copyWith(infoUploadInProcess: false),
        ),
      );
      debugPrint('productJson => $productJson');
    }
  }

  void addProductAttribute({required String attribute}) {
    final newAttributes = List<String>.of(state.attributes)..add(attribute);
    emit(
      state.copyWith(
        attributes: newAttributes,
      ),
    );
  }

  void removeProductAttribute({required int index}) {
    final newAttributes = List<String>.of(state.attributes)..removeAt(index);
    emit(
      state.copyWith(
        attributes: newAttributes,
      ),
    );
  }

  bool _isNecessaryAttributeNotEmpty(
      {required String productNumber,
      required String productTitle,
      required String type,
      required String price}) {
    addFailureState({required String failure}) {
      emit(state.copyWith(
          failure: Failure.message(failure),
          infoUploadInProcess: false,
          imageUploadInProcess: false));
    }

    if (productNumber.isEmpty) {
      addFailureState(failure: 'Bitte fügen Sie die Produktnummer hinzu!');
      return false;
    }
    if (type.isEmpty) {
      addFailureState(failure: 'Bitte fügen Sie die Marke hinzu!');
      return false;
    }
    if (productTitle.isEmpty) {
      addFailureState(failure: 'Bitte fügen Sie den Produktnamen hinzu!');
      return false;
    }

    if (price.isEmpty) {
      addFailureState(failure: 'Bitte fügen Sie den Preis hinzu!');
      return false;
    }

    return true;
  }

  void changeCategory({required EnumCategoryProduct categoryProduct}) {
    emit(state.copyWith(categoryProduct: categoryProduct, failure: null));
  }

  void toggleIsVisible({required bool toggle}) {
    emit(state.copyWith(isProductVisible: toggle));
  }
}
