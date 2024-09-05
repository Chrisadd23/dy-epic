import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/domain/repository/repository_core.dart';
import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:either_dart/either.dart';

class UseCaseGetPicture {
  UseCaseGetPicture(this._repositoryCore);

  final RepositoryCore _repositoryCore;

  Future<Either<Failure, List<EntityCorePictures>>> call({
    required List<String> fileNames,
  }) =>
      _repositoryCore.getImageBytes(fileNames: fileNames);
}
