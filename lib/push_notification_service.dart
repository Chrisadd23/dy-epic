import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class PushNotificationService {
  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;
  static final FlutterLocalNotificationsPlugin _localNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    await Firebase.initializeApp();

    if (Platform.isIOS) {
      await _requestIOSPermissions();
    }

    // Einstellungen für lokale Benachrichtigungen
    final InitializationSettings initializationSettings =
        InitializationSettings(
      iOS: const DarwinInitializationSettings(
        onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
      ),
    );

    await _localNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        if (response.payload != null) {
          debugPrint('Notification Payload: ${response.payload}');
        }
      },
    );

    // Token für Benachrichtigungen abrufen
    final String? token = await _firebaseMessaging.getToken();
    debugPrint("FCM Token: $token");

    // Token-Refresh-Listener (z. B. nach App-Neuinstallation oder Token-Update)
    _firebaseMessaging.onTokenRefresh.listen((newToken) {
      debugPrint("New FCM Token: $newToken");
    });

    // Listener für empfangene Benachrichtigungen

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _handleMessage(message);
    });

    // Hintergrundnachrichtenverarbeitung
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  static Future<void> _handleMessage(RemoteMessage message) async {
    if (message.notification != null) {
      RemoteNotification? notification = message.notification;
      String? title = notification?.title;
      String? body = notification?.body;

      // Lokale Benachrichtigung anzeigen
      await _showLocalNotification(title, body);
    }
  }

  static Future<void> _showLocalNotification(
      String? title, String? body) async {
    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails();

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      iOS: iOSPlatformChannelSpecifics,
    );

    await _localNotificationsPlugin.show(
      0, // ID der Benachrichtigung
      title, // Titel der Benachrichtigung
      body, // Nachricht / Inhalt
      platformChannelSpecifics,
    );
  }

  // Handler für die Anzeige eines Dialogs in iOS (bei älteren Versionen oder spezifischen Anforderungen)
  static Future<void> _onDidReceiveLocalNotification(
    int id,
    String? title,
    String? body,
    String? payload,
  ) async {
    debugPrint("iOS hat eine lokale Benachrichtigung empfangen.");
    debugPrint("Titel: $title, Nachricht: $body");
  }

  static Future<void> _requestIOSPermissions() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    debugPrint("iOS-Berechtigungsstatus: ${settings.authorizationStatus}");

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      debugPrint("iOS Benachrichtigungen genehmigt.");
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      debugPrint("iOS hat vorläufige Berechtigungen gewährt.");
    } else {
      debugPrint("iOS Benachrichtigungen abgelehnt.");
    }

    // Optionen, um Benachrichtigungen auch im Vordergrund anzuzeigen
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }
}

/// Hintergrundnachrichtenverarbeitung in einer separaten Methode
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  debugPrint('Handling a background message: ${message.messageId}');
}
