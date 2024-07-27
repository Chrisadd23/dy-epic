import 'package:app_flutter_produkt_bestellen/core/data/data_source/data_source_core.dart';
import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/domain/repository/repository_core.dart';
import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

class RepositoryImplementationCore extends RepositoryCore {
  RepositoryImplementationCore(this._dataSourceCore);

  final List<EntityCorePictures> _entityPictures = [];

  final DataSourceCore _dataSourceCore;

  @override
  Future<Either<Failure, List<EntityCorePictures>>> getImageBytes({
    required List<String> fileNames,
  }) async {
    _entityPictures.map((entityPicture) {
      if (fileNames.contains(entityPicture.name)) {
        fileNames.remove(entityPicture.name);
      }
    }).toList();

    debugPrint("neededImages ==> $fileNames");
    if (fileNames.isEmpty) {
      return Right(
        fileNames
            .map((name) =>
                entityPictures.where((picture) => picture.name == name).first)
            .toList(),
      );
    } else {
      return _dataSourceCore
          .getImageBytes(filenames: fileNames)
          .fold((failure) => Left(failure), (listEntityPictures) {
        _entityPictures.addAll(listEntityPictures);
        return Right(
          fileNames
              .map((name) =>
                  entityPictures.where((picture) => picture.name == name).first)
              .toList(),
        );
      });
    }
  }

  @override
  List<EntityCorePictures> get entityPictures => _entityPictures;
}
