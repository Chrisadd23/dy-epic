import 'package:app_flutter_produkt_bestellen/features/category/konferenzstuehle/domain/repository/repository_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitConferenceChair extends Cubit<StateCategory> {
  CubitConferenceChair({required this.repositoryConferenceChair})
      : super(const StateCategory.loading());

  final RepositoryConferenceChair repositoryConferenceChair;

  Future<void> load([String? conferenceChairCategory]) async {
    if (state != const StateCategory.loading()) {
      emit(const StateCategory.loading());
    }
    await repositoryConferenceChair.getConferencChaire().fold((failure) {},
        (listConferenceChair) {
      final productCategory = ProductCategory(
        categoryName: listConferenceChair.categoryName,
        listProduct: listConferenceChair.listProduct
            .map((chair) => Product(
                productType: chair.productType,
                price: chair.price,
                picturePath: chair.picturePath,
                name: chair.name))
            .toList(),
      );

      emit(StateCategory.success(productCategory: productCategory));
    });
  }
}
