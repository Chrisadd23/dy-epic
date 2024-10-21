import 'package:app_flutter_produkt_bestellen/core/domain/use_case/use_case_get_local_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/domain/use_case/use_case_get_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_information_state.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';

class OrderInformationCubit extends Cubit<OrderInformationState> {
  OrderInformationCubit(this._useCaseGetPicture, this._useCaseGetLocalPictures)
      : super(const OrderInformationState.loading());

  final UseCaseGetPicture _useCaseGetPicture;
  final UseCaseGetLocalPictures _useCaseGetLocalPictures;

  Future<void> load({required List<String> productNumbers}) async {
    final fileNames =
        productNumbers.map((number) => 'product_$number').toList();
    await _useCaseGetPicture(fileNames: fileNames).fold(
      (failure) => emit(OrderInformationState.failure(failure: failure)),
      (imageList) {},
    );
    final localImages = _useCaseGetLocalPictures();

    emit(OrderInformationState.success(
        pictures: productNumbers
            .map((productNumber) => localImages
                .where((image) => image.name.contains(productNumber))
                .first)
            .toList()));
  }
}
