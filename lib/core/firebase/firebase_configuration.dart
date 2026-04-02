import 'dart:convert';
import 'dart:io';

import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_push_notification_data.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/order/data/model/order_model.dart';
import 'package:app_flutter_produkt_bestellen/features/order/domain/entity/order_entity.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';

import '../../features/login/presentation/cubit/login_state.dart';

void customLog(String messag) {
  debugPrint("Custom Log: $messag");
}

abstract class FirebaseConfiguration {
  static late final FirebaseStorage _firebaseStorage;
  static late final FirebaseMessaging _firebaseMessaging;
  static late final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin;
  static String? appToken;
  static String? firebaseToken;

  static Future<void> requestPermission() async {
    _firebaseStorage = FirebaseStorage.instance;
    _firebaseMessaging = FirebaseMessaging.instance;
    if (Platform.isIOS) {
      await _firebaseMessaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );
    }
  }

  static Future<void> initFirebaseSettings() async {
    try {
      appToken = Platform.isAndroid
          ? await _firebaseMessaging.getToken()
          : await _firebaseMessaging.getAPNSToken();
      debugPrint('appToken $appToken');
      try {
        if (appToken != null) {
          firebaseToken = Platform.isAndroid
              ? appToken
              : await _firebaseMessaging.getToken();
          debugPrint("firebaseToken $firebaseToken");
        }
      } catch (error) {
        debugPrint("firebaseToken error => ${error.toString()}");
      }

      await _firebaseMessaging.setForegroundNotificationPresentationOptions(
        alert: true, // Required to display a heads up notification
        badge: true,
        sound: true,
      );
      _firebaseMessaging.onTokenRefresh.listen((token) {
        debugPrint("onTokenRefresh ==> $token");
      });

      RemoteMessage? initialMessage =
          await _firebaseMessaging.getInitialMessage();

      _initFlutterLocalNotificationAttributes;
      _initFirebaseMessagingInForegroundListener;
      _initFirebaseMessagingInBackgroundListener;

      //Background
      FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
      if (initialMessage != null) {
        debugPrint("get data from initialMessage");
      }
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  static void _handleMessage(RemoteMessage message) {
    debugPrint('_handleMessage');
    final Map<String, dynamic> json =
        jsonDecode(message.data.values.first.toString());
    //debugPrint(json.toString());

    switch (json["type"]) {
      case 1:
        final order = OrderModel.fromJson(json['order']).toEntity();
        _pageNavigation(
            routeName: AppGoRouter.detailedOrderInformation.name,
            order: order,
            type: json["type"]);
        break;
      case 2:
        break;
    }
  }

  static void _pageNavigation(
      {required String routeName,
      required OrderEntity order,
      required int type}) {
    getIt<LoginCubit>().state.maybeWhen(loggedIn: (customer) {
      if (customer.customerNumber != order.customerId) {
        getIt<LoginCubit>().logOut();
        getIt<CubitPushNotificationData>()
            .addNotificationData(orderEntity: order);
        getIt<GoRouter>().goNamed(AppGoRouter.login.name,
            extra: order, queryParameters: {'redirectName': routeName});
      } else {
        getIt<GoRouter>()
            .goNamed(AppGoRouter.detailedOrderInformation.name, extra: order);
      }
    }, orElse: () {
      getIt<CubitPushNotificationData>()
          .addNotificationData(orderEntity: order);
      getIt<GoRouter>().goNamed(AppGoRouter.login.name,
          extra: order, queryParameters: {'redirectName': routeName});
    });
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

  static Future<void> _initFirebaseMessagingInForegroundListener() async {
    customLog('_initFirebaseMessagingInForegroundListener');
    FirebaseMessaging.onMessage.listen((remoteMessage) {
      customLog('Got a message whilst in the foreground!');
      customLog('Message data: ${remoteMessage.data}');

      if (remoteMessage.notification != null) {
        _showNotification(remoteMessage);
        customLog(
            'Message also contained a notification: ${remoteMessage.notification}');
      }
    });
  }

  static void _initFirebaseMessagingInBackgroundListener() {
    FirebaseMessaging.onBackgroundMessage((remoteMessage) async {
      // If you're going to use other Firebase services in the background, such as Firestore,
      // make sure you call `initializeApp` before using other Firebase services.

      await Firebase.initializeApp();

      debugPrint("Handling a background message: ${remoteMessage.messageId}");
      debugPrint("remoteMessage data: ${remoteMessage.data}");
    });
  }

  static Future<void> _initFlutterLocalNotificationAttributes() async {
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

    debugPrint("_flutterLocalNotificationsPlugin.show");
    await _flutterLocalNotificationsPlugin.show(1, message.notification?.title,
        message.notification?.body, notificationDetails,
        payload: 'Not present');
  }
}
