import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

abstract class FirebaseConfiguration {
  static FirebaseStorage? _firebaseStorage;

  static Future<void> initFirebaseStorage() async {
    _firebaseStorage = FirebaseStorage.instance;
  }

  static Future<Map<String, Uint8List?>> getImageBytes(String filename) async {
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
  }
}
