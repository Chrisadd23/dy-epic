import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/domain/repository/repository_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitConferenceChair extends Cubit<StateCategory> {
  CubitConferenceChair({required this.repositoryConferenceChair})
      : super(const StateCategory());

  final RepositoryConferenceChair repositoryConferenceChair;

  Future<void> load([String? conferenceChairCategory]) async {
    await repositoryConferenceChair.getConferencChaire().fold((failure) {},
        (listConferenceChair) {
      final products = listConferenceChair
          .map((conferenceChair) => {
                conferenceChair.categoryName: conferenceChair.listProduct
                    .map((chair) => Product(
                        productType: chair.productType,
                        price: chair.price,
                        picturePath: chair.picturePath,
                        name: chair.name))
                    .toList()
              })
          .toList();

      emit(state.copyWith(
          productCategory: ProductCategory(
              listProduct: products[0].values.first,
              categoryName: products[0].keys.first)));
    });
  }
}
