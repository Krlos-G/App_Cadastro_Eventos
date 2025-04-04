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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD4fFinPaqkKa1KX5x9yMpeZtGD3LHLwWc',
    appId: '1:711366079953:web:6232cb1abb09ff621c9cf0',
    messagingSenderId: '711366079953',
    projectId: 'cadastro-evento-app',
    authDomain: 'cadastro-evento-app.firebaseapp.com',
    storageBucket: 'cadastro-evento-app.firebasestorage.app',
    measurementId: 'G-4Y8KWNNSGT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDeNkAivUa50KzYvMWS4rl4AS_J1hnzFsc',
    appId: '1:711366079953:android:46318ed8c0253b671c9cf0',
    messagingSenderId: '711366079953',
    projectId: 'cadastro-evento-app',
    storageBucket: 'cadastro-evento-app.firebasestorage.app',
  );
}
