// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
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
    apiKey: 'AIzaSyCaKcF4mnm0O-_gzKwi1VkNzeCNcWJ5F4w',
    appId: '1:632155284263:web:330b9472ca361c17257f02',
    messagingSenderId: '632155284263',
    projectId: 'psychesail-c94c2',
    authDomain: 'psychesail-c94c2.firebaseapp.com',
    storageBucket: 'psychesail-c94c2.appspot.com',
    measurementId: 'G-KFQNEEK4WK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC23Sm7NV4Utju8ZcYPyC9-x-kf2aL4hEQ',
    appId: '1:632155284263:android:e75468971b9f64fa257f02',
    messagingSenderId: '632155284263',
    projectId: 'psychesail-c94c2',
    storageBucket: 'psychesail-c94c2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmMfORufMBOYCnRRJKCd4pCGaWXwSUT_A',
    appId: '1:632155284263:ios:2ff36273883559ad257f02',
    messagingSenderId: '632155284263',
    projectId: 'psychesail-c94c2',
    storageBucket: 'psychesail-c94c2.appspot.com',
    iosBundleId: 'com.example.frontend',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCmMfORufMBOYCnRRJKCd4pCGaWXwSUT_A',
    appId: '1:632155284263:ios:2ff36273883559ad257f02',
    messagingSenderId: '632155284263',
    projectId: 'psychesail-c94c2',
    storageBucket: 'psychesail-c94c2.appspot.com',
    iosBundleId: 'com.example.frontend',
  );
}