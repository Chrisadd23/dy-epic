import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceCore {
  Future<Either<Failure, List<EntityCorePictures>>> getImageBytes(
      {required List<String> filenames});
}

class DataSourceImplementationCore extends DataSourceCore {
  @override
  Future<Either<Failure, List<EntityCorePictures>>> getImageBytes(
      {required List<String> filenames}) async {
    try {
      final listEntityPictures = await filenames
          .map((name) async {
            Uint8List? uInt8List;
            for (var type in PictureFileType.values) {
              uInt8List = await FirebaseConfiguration.getImageBytes(
                  '$name.${type.name}');
              if (uInt8List != null) break;
            }
            return EntityCorePictures(
                name: name, listIntForUint8List: uInt8List);
          })
          .toList()
          .wait;
      return Right(listEntityPictures);
    } catch (error) {
      return Left(Failure.storageError(error.toString()));
    }
  }
}
