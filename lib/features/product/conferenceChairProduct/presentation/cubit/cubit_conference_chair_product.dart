import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/repository/repository_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/presentation/cubit/state_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/cubit_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:either_dart/either.dart';

class CubitConferenceChairProduct extends CubitProduct<
    CubitConferenceChairProduct, StateConferenceChairProduct> {
  CubitConferenceChairProduct({required this.repositoryConferenceChairProduct});

  final RepositoryConferenceChairProduct repositoryConferenceChairProduct;

  @override
  Future<void> load({required String product}) async {
    await repositoryConferenceChairProduct
        .getConferenceChairProduct(product: product)
        .fold((failure) {}, (conferenceChaire) {
      final characteristics = {
        EnumConferenceChairProduct.name: conferenceChaire.name,
        EnumConferenceChairProduct.picturePath: conferenceChaire.picturePath,
      };
      emit(
        StateProduct.success(
            product: StateConferenceChairProduct(
                name: conferenceChaire.name,
                attributes: conferenceChaire.attributes),
            selectedCharacteristics: characteristics),
      );
    });
  }
}
