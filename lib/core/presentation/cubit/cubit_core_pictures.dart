import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/domain/use_case/use_case_get_local_pictures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCorePictures extends Cubit<List<EntityCorePictures>> {
  CubitCorePictures(this._useCaseGetLocalPictures) : super([]) {
    emit(_useCaseGetLocalPictures());
  }

  final UseCaseGetLocalPictures _useCaseGetLocalPictures;

  void loadLocalPictures() {
    emit(_useCaseGetLocalPictures());
  }
}
