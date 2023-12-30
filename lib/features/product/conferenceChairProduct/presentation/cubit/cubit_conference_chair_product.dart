import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/domain/repository/repository_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/presentation/cubit/state_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';

class CubitConferenceChairProduct
    extends Cubit<StateProduct<StateConferenceChairProduct>> {
  CubitConferenceChairProduct({required this.repositoryConferenceChairProduct})
      : super(const StateProduct.loading());

  final RepositoryConferenceChairProduct repositoryConferenceChairProduct;

  Future<void> load() async {
    await repositoryConferenceChairProduct
        .getConferenceChairProduct()
        .fold((failure) {}, (conferenceChaire) {
      emit(
        StateProduct.success(
          product: StateConferenceChairProduct(
              name: conferenceChaire.name,
              attributes: conferenceChaire.attributes),
        ),
      );
    });
  }
}
