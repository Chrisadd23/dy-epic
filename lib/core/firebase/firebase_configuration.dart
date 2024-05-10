import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';

abstract class FirebaseConfiguration {
  static FirebaseStorage? _firebaseStorage;

  static Future<void> initFirebaseStorage() async {
    _firebaseStorage = FirebaseStorage.instance;
  }

  static Future<Uint8List?> getImageBytes(String filename) async {
    Uint8List? imageBytes;

    imageBytes = await _firebaseStorage!
        .ref()
        .child(filename)
        .getData(10000000)
        .timeout(const Duration(seconds: 10))
        .then(
          (data) => data,
        );

    return imageBytes;
  }
}
