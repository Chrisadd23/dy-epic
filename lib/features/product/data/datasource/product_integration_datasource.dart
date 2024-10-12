import 'dart:async';
import 'dart:io';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/flavor.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

abstract class ProductIntegrationDataSource {
  Future<Either<Failure, bool>> uploadProductInfo({
    required Map<String, dynamic> json,
    required String category,
  });

  Future<Either<Failure, bool>> uploadProductImage(
      {required String productNumber, File? image});

  Future<Either<Failure, File>> getLocalImage();

  void clear();
}

class ProductIntegrationDataSourceImplementation
    extends ProductIntegrationDataSource {
  @override
  Future<Either<Failure, File>> getLocalImage() async {
    try {
      final ImagePicker picker = ImagePicker();

      debugPrint("imageTemp => $picker");
      final image = await picker.pickImage(source: ImageSource.gallery);
      if (image == null) {
        return const Left(Failure.message('Es wurde kein Bild ausgewählt!'));
      }

      final imageTemp = File(image.path);

      return Right(imageTemp);
    } catch (failure) {
      return Left(Failure.message(failure.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> uploadProductInfo(
      {required Map<String, dynamic> json, required String category}) async {
    Failure? failure;
    try {
      await document
          .collection(category)
          .where('productNumber', isEqualTo: json['productNumber'])
          .get()
          .then((querySnapshot) async {
        if (querySnapshot.docs.firstOrNull == null) {
          return document
              .collection(category)
              .add(json)
              .then((_) => const Right(true), onError: (error) {
            failure = Failure.databaseError(error.toString());
          });
        } else {
          return querySnapshot.docs.first.reference
              .update(json)
              .then((_) => const Right(true), onError: (error) {
            failure = Failure.databaseError(error.toString());
          });
        }
      });

      if (failure != null) {
        return Left(failure!);
      } else {
        return const Right(true);
      }
    } catch (error) {
      return Left(Failure.databaseError(error.toString()));
    }
  }

  @override
  void clear() {
    // TODO: implement clear
  }

  @override
  Future<Either<Failure, bool>> uploadProductImage(
      {required String productNumber, File? image}) async {
    if (image == null) {
      return const Left(Failure.message('Es liegt keine Bilddatei vor!'));
    }
    final fileType = image.path.split('/').last.split('.').last;

    return FirebaseConfiguration.uploadImage(
        productNumber: productNumber, image: image, fileType: fileType);
  }

  DocumentReference<Map<String, dynamic>> get document =>
      FirebaseFirestore.instance
          .collection('Product')
          .doc(AppConfig.productDocumentId);
}
