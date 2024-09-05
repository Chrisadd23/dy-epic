import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:either_dart/either.dart';

abstract class RepositoryCore {
  List<EntityCorePictures> get entityPictures;

  Future<Either<Failure, List<EntityCorePictures>>> getImageBytes({
    required List<String> fileNames,
  });

  EntityCorePictures? getSingleImageBytes(String productNumber);
}
