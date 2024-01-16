import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

abstract class FirebaseConfiguration {
  static FirebaseStorage? _firebaseStorage;

  static Future<void> initFirebaseStorage() async {
    _firebaseStorage = FirebaseStorage.instance;
  }

  static Future<Map<String, Uint8List?>> getImagePath(String filename) async {
    /*
    Map<String, Uint8List?> mapUnit8 = {};
    if (listFileName != null && listFileName.isNotEmpty) {
      listFileName
          .map((image) async => mapUnit8[image] = await _firebaseStorage!
              .ref()
              .child(image)
              .getData(10000000)
              .timeout(const Duration(seconds: 10))
              .then(
                (data) => data,
              ))
          .toList();
      return mapUnit8;
    } else {
      return mapUnit8;
    }*/
    debugPrint("Filename ==> $filename");
    Uint8List? imageBytes;

    imageBytes = await _firebaseStorage!
        .ref()
        .child(filename)
        .getData(10000000)
        .timeout(const Duration(seconds: 10))
        .then(
          (data) => data,
        );

    return {filename: imageBytes};

    /*
    String? imagePath;

    imagePath = await _firebaseStorage!.ref(filename).getDownloadURL();
    return imagePath;

     */
  }
}
