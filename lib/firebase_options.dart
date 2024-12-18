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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDU2QfzPon4yBCqZxSFSTbwVKwKzLFUZ5w',
    appId: '1:129185697931:web:b3d9b8bfceb27b6bf5848e',
    messagingSenderId: '129185697931',
    projectId: 'yehortitareno',
    authDomain: 'yehortitareno.firebaseapp.com',
    databaseURL: 'https://yehortitareno-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'yehortitareno.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAyOCMLaBqIPBICsGpgU4JOscttkYVbOl4',
    appId: '1:129185697931:android:d4072c7fcd930c50f5848e',
    messagingSenderId: '129185697931',
    projectId: 'yehortitareno',
    databaseURL: 'https://yehortitareno-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'yehortitareno.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqVcv5wjAaK-ChOBX52GPFN8fD8HFDkcs',
    appId: '1:129185697931:ios:638178fb7078d453f5848e',
    messagingSenderId: '129185697931',
    projectId: 'yehortitareno',
    databaseURL: 'https://yehortitareno-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'yehortitareno.firebasestorage.app',
    iosBundleId: 'com.example.yehortitarenko',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDqVcv5wjAaK-ChOBX52GPFN8fD8HFDkcs',
    appId: '1:129185697931:ios:638178fb7078d453f5848e',
    messagingSenderId: '129185697931',
    projectId: 'yehortitareno',
    databaseURL: 'https://yehortitareno-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'yehortitareno.firebasestorage.app',
    iosBundleId: 'com.example.yehortitarenko',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDU2QfzPon4yBCqZxSFSTbwVKwKzLFUZ5w',
    appId: '1:129185697931:web:9c168f2561ba130ef5848e',
    messagingSenderId: '129185697931',
    projectId: 'yehortitareno',
    authDomain: 'yehortitareno.firebaseapp.com',
    databaseURL: 'https://yehortitareno-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'yehortitareno.firebasestorage.app',
  );
}
