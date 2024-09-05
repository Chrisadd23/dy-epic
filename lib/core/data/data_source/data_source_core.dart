import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

abstract class DataSourceCore {
  Future<Either<Failure, List<EntityCorePictures>>> getImageBytes(
      {required List<String> filenames});
}

class DataSourceImplementationCore extends DataSourceCore {
  @override
  Future<Either<Failure, List<EntityCorePictures>>> getImageBytes(
      {required List<String> filenames}) async {
    try {
      int i = 1;
      final listEntityPictures = await filenames
          .map((name) async {
            debugPrint("getImageBytes $name --  ");
            final uInt8List = await FirebaseConfiguration.getImageBytes(name);
            debugPrint("--count ==> ${i++} getImageBytes $name --  ");
            return EntityCorePictures(
                name: name, listIntForUint8List: uInt8List!.toList());
          })
          .toList()
          .wait;
      return Right(listEntityPictures);
    } catch (error) {
      return Left(Failure.storageError(error.toString()));
    }
  }
}
