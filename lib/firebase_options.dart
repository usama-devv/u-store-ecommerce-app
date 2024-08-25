// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDzyfWLnPFCDA5mDKcWzyOq3O_qiA-oGAs',
    appId: '1:804670300683:web:69e7007984d410d7e8dd0e',
    messagingSenderId: '804670300683',
    projectId: 'u-store-f8b25',
    authDomain: 'u-store-f8b25.firebaseapp.com',
    storageBucket: 'u-store-f8b25.appspot.com',
    measurementId: 'G-MPZ89X9C5X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDTPV2EVdZTEpX_Ra-eP2iKfbzc7mch7G0',
    appId: '1:804670300683:android:06755f480bbb0b53e8dd0e',
    messagingSenderId: '804670300683',
    projectId: 'u-store-f8b25',
    storageBucket: 'u-store-f8b25.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1ht_9L7KCHkUU5ESXNhOf-c9-Emug7v4',
    appId: '1:804670300683:ios:46ae63dac98544f8e8dd0e',
    messagingSenderId: '804670300683',
    projectId: 'u-store-f8b25',
    storageBucket: 'u-store-f8b25.appspot.com',
    iosBundleId: 'com.example.uStoreEcommerceApp',
  );
}
