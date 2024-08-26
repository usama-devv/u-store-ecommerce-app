import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:u_store/firebase_options.dart';
import 'app.dart';

Future<void> main() async {
  /// Add widgets Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// Getx Local Storage
  await GetStorage.init();
  /// Todo: Await Native Splash
  /// Initialize Firebase

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  /// Todo: Initialize Authentication

  runApp(const App());
}
