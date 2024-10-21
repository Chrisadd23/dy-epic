import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/domain/use_case/use_case_get_local_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/domain/use_case/use_case_get_single_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCorePictures extends Cubit<List<EntityCorePictures>> {
  CubitCorePictures(
    this._useCaseGetLocalPictures,
    this._useCaseGetSingleLocalImage,
  ) : super([]) {
    emit(_useCaseGetLocalPictures());
  }

  final UseCaseGetLocalPictures _useCaseGetLocalPictures;
  final UseCaseGetSingleLocalImage _useCaseGetSingleLocalImage;

  void loadLocalPictures() {
    emit(_useCaseGetLocalPictures());
  }

  EntityCorePictures? getSinglePicture({required String productNumber}) {
    return _useCaseGetSingleLocalImage(productNumber: productNumber);
  }
}
