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
      apiKey: "AIzaSyBw1NfJE-G376a9rY7Q-PiRrSBPsMxit1Q",
      authDomain: "abcd-f9bbb.firebaseapp.com",
      projectId: "abcd-f9bbb",
      storageBucket: "abcd-f9bbb.appspot.com",
      messagingSenderId: "649907981399",
      appId: "1:649907981399:web:1d8b72f6ed06417721a712",
      measurementId: "G-WNFT84BZMD");

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: "AIzaSyBw1NfJE-G376a9rY7Q-PiRrSBPsMxit1Q",
      authDomain: "abcd-f9bbb.firebaseapp.com",
      projectId: "abcd-f9bbb",
      storageBucket: "abcd-f9bbb.appspot.com",
      messagingSenderId: "649907981399",
      appId: "1:649907981399:web:1d8b72f6ed06417721a712",
      measurementId: "G-WNFT84BZMD");

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: "AIzaSyBw1NfJE-G376a9rY7Q-PiRrSBPsMxit1Q",
    authDomain: "abcd-f9bbb.firebaseapp.com",
    projectId: "abcd-f9bbb",
    storageBucket: "abcd-f9bbb.appspot.com",
    messagingSenderId: "649907981399",
    appId: "1:649907981399:web:1d8b72f6ed06417721a712",
    measurementId: "G-WNFT84BZMD",
  );

  static const FirebaseOptions macos = FirebaseOptions(
      apiKey: "AIzaSyBw1NfJE-G376a9rY7Q-PiRrSBPsMxit1Q",
      authDomain: "abcd-f9bbb.firebaseapp.com",
      projectId: "abcd-f9bbb",
      storageBucket: "abcd-f9bbb.appspot.com",
      messagingSenderId: "649907981399",
      appId: "1:649907981399:web:1d8b72f6ed06417721a712",
      measurementId: "G-WNFT84BZMD");
}
