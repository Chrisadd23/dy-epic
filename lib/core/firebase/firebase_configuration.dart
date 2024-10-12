import 'dart:io';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

abstract class FirebaseConfiguration {
  static late final FirebaseStorage _firebaseStorage;
  static late final FirebaseMessaging _firebaseMessaging;
  static late final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin;
  static String? firebaseToken;

  static Future<void> requestPermission() async {
    _firebaseStorage = FirebaseStorage.instance;
    _firebaseMessaging = FirebaseMessaging.instance;
    await _firebaseMessaging.requestPermission();
  }

  static Future<void> initFirebaseSettings() async {
    initFlutterLocalNotificationAttributes;

    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    debugPrint('User granted permission: ${settings.authorizationStatus}');
    try {
      firebaseToken = Platform.isAndroid
          ? await _firebaseMessaging.getToken()
          : await _firebaseMessaging.getAPNSToken();

      debugPrint("firebaseToken ==> $firebaseToken");

      _firebaseMessaging.onTokenRefresh.listen((token) {
        debugPrint("onTokenRefresh ==> $token");
      });
      _initFirebaseMessagingInForegroundListener;
      _iniTifebaseMessagingInBackgroundListener;
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  static Future<Uint8List?> getImageBytes(String filename) async {
    Uint8List? imageBytes;
    try {
      imageBytes = await _firebaseStorage
          .ref()
          .child(filename)
          .getData(10000000)
          .timeout(const Duration(seconds: 10))
          .then(
            (data) => data,
          );
    } catch (error) {
      return null;
    }

    return imageBytes;
  }

  static Future<Either<Failure, bool>> uploadImage(
      {required String productNumber,
      required File image,
      required String fileType}) async {
    try {
      await _firebaseStorage
          .ref()
          .child('product_$productNumber.$fileType')
          .putFile(image)
          .timeout(const Duration(seconds: 10));
      return const Right(true);
    } catch (failure) {
      return Left(Failure.storageError(failure.toString()));
    }
  }

  static void _initFirebaseMessagingInForegroundListener() {
    FirebaseMessaging.onMessage.listen((remoteMessage) {
      debugPrint('Got a message whilst in the foreground!');
      debugPrint('Message data: ${remoteMessage.data}');

      if (remoteMessage.notification != null) {
        _showNotification;
        debugPrint(
            'Message also contained a notification: ${remoteMessage.notification}');
      }
    });
  }

  static void _iniTifebaseMessagingInBackgroundListener() {
    FirebaseMessaging.onBackgroundMessage((remoteMessage) async {
      // If you're going to use other Firebase services in the background, such as Firestore,
      // make sure you call `initializeApp` before using other Firebase services.
      await Firebase.initializeApp();

      debugPrint("Handling a background message: ${remoteMessage.messageId}");
    });
  }

  static Future<void> initFlutterLocalNotificationAttributes() async {
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/oberhaizinger');

    const DarwinInitializationSettings initSettingsIos =
        DarwinInitializationSettings();

    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid, iOS: initSettingsIos);

    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static _showNotification(RemoteMessage message) async {
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails('channel_id', 'Channel Name',
            channelDescription: 'Channel Description',
            importance: Importance.max,
            priority: Priority.high,
            ticker: 'ticker');

    const DarwinNotificationDetails iOsNotificationDetails =
        DarwinNotificationDetails(presentAlert: true, presentSound: true);

    const NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails, iOS: iOsNotificationDetails);

    await _flutterLocalNotificationsPlugin.show(1, message.notification?.title,
        message.notification?.body, notificationDetails,
        payload: 'Not present');
  }
}
