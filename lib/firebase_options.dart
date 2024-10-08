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
    apiKey: 'AIzaSyCzErWn6bYStORb2wNiRdorfbCiIg0vaN8',
    appId: '1:428931836064:web:8e942ffe5790e5454ac1c5',
    messagingSenderId: '428931836064',
    projectId: 'goodplace-milu',
    authDomain: 'goodplace-milu.firebaseapp.com',
    storageBucket: 'goodplace-milu.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDeIud9WuTMR2_neK47gWVIWRxF49MPIts',
    appId: '1:428931836064:android:f966c278f192be214ac1c5',
    messagingSenderId: '428931836064',
    projectId: 'goodplace-milu',
    storageBucket: 'goodplace-milu.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBhcMPCZdpQRNGC2ZjeCmMk96Oyl7FiciM',
    appId: '1:428931836064:ios:d8fdb31d6de8f09a4ac1c5',
    messagingSenderId: '428931836064',
    projectId: 'goodplace-milu',
    storageBucket: 'goodplace-milu.appspot.com',
    androidClientId: '428931836064-2tf5is823mhb7sgpvbkl28uib88nibt7.apps.googleusercontent.com',
    iosClientId: '428931836064-vm7paa26bsjelik8b0hgtr12kh7eoe6m.apps.googleusercontent.com',
    iosBundleId: 'com.example.goodPlace',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBhcMPCZdpQRNGC2ZjeCmMk96Oyl7FiciM',
    appId: '1:428931836064:ios:85c510770192162d4ac1c5',
    messagingSenderId: '428931836064',
    projectId: 'goodplace-milu',
    storageBucket: 'goodplace-milu.appspot.com',
    iosBundleId: 'com.example.goodPlace',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCzErWn6bYStORb2wNiRdorfbCiIg0vaN8',
    appId: '1:428931836064:web:923c9b7201a776c04ac1c5',
    messagingSenderId: '428931836064',
    projectId: 'goodplace-milu',
    authDomain: 'goodplace-milu.firebaseapp.com',
    storageBucket: 'goodplace-milu.appspot.com',
  );
}