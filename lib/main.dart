import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:u_store/firebase_options.dart';
import 'app.dart';


  /// Todo: Add widgets Binding
  /// Todo: Init Local Storage
  /// Todo: Await Native Splash
  /// Todo: Initialize Firebase
Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform).then((FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  /// Todo: Initialize Authentication
  /// Todo: Initialize Authentication

  runApp(const App());
}
