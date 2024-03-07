import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:kraken_animelist/core/firebase/analytics_helper.dart';
import 'package:kraken_animelist/core/firebase/firebase_options.dart';
import 'package:kraken_animelist/dependecy_injection/global_di_holders.dart';
import 'package:kraken_animelist/local_storage/hive_helper.dart';

Future<void> setupDI() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupDevDI();

  di.registerSingleton<AnalyticsHelper>(AnalyticsHelper());

  // override http request
  HttpOverrides.global = MyHttpOverrides();
}

Future<void> setupDevDI() async {
  //init local storage
  await hiveStorage.initialize(boxName: BoxName.developmentBox);
  await firebaseConfig();
}

Future<void> firebaseConfig() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
  await FirebaseAnalytics.instance.logAppOpen();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (cert, String host, int port) => true;
  }
}
