import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/domain/repository/repository_core.dart';

class UseCaseGetSingleLocalImage {
  UseCaseGetSingleLocalImage(this._repositoryCore);

  final RepositoryCore _repositoryCore;

  EntityCorePictures? call({required String productNumber}) =>
      _repositoryCore.getSingleImageBytes(productNumber);
}
