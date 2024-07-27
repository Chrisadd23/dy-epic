import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/domain/repository/repository_core.dart';

class UseCaseGetLocalPictures {
  UseCaseGetLocalPictures(this._repositoryCore);

  final RepositoryCore _repositoryCore;

  List<EntityCorePictures> call() => _repositoryCore.entityPictures;
}
