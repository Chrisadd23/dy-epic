import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/domain/repository/repository_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/officeChairProduct/presentation/cubit/state_office_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/presentation/cubit/state_product.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';

class CubitOfficeChairProduct
    extends Cubit<StateProduct<StateOfficeChairProduct>> {
  CubitOfficeChairProduct({required this.repositoryOfficeChairProduct})
      : super(const StateProduct.loading());

  final RepositoryOfficeChairProduct repositoryOfficeChairProduct;

  Future<void> load() async {
    await repositoryOfficeChairProduct
        .getOfficeChairProduct()
        .fold((failure) {}, (officeChair) {
      emit(
        StateProduct.success(
          product: StateOfficeChairProduct(
              name: officeChair.name, attributes: officeChair.attributes),
        ),
      );
    });
  }
}
