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
    apiKey: 'AIzaSyDe4q93pf9rtmfimpHyqJMZE8oYDvgnpX0',
    appId: '1:450443263694:web:f05ac3ea47f8bb496dda9f',
    messagingSenderId: '450443263694',
    projectId: 'smart-car-parking-iot-c531f',
    authDomain: 'smart-car-parking-iot-c531f.firebaseapp.com',
    storageBucket: 'smart-car-parking-iot-c531f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGMNY7W9RoJFZ9zI48Cjy8KHWvr5fhca0',
    appId: '1:450443263694:android:0dbcc2b09e32bfdd6dda9f',
    messagingSenderId: '450443263694',
    projectId: 'smart-car-parking-iot-c531f',
    storageBucket: 'smart-car-parking-iot-c531f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUJ5iYcNDQwHajl66D-bcWbseUyEzsLZ4',
    appId: '1:450443263694:ios:bc1a55ec8c3b97466dda9f',
    messagingSenderId: '450443263694',
    projectId: 'smart-car-parking-iot-c531f',
    storageBucket: 'smart-car-parking-iot-c531f.appspot.com',
    iosClientId: '450443263694-e7es0madf919t0nrp8cjhs04p4og6f17.apps.googleusercontent.com',
    iosBundleId: 'com.example.smartCarParking',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCUJ5iYcNDQwHajl66D-bcWbseUyEzsLZ4',
    appId: '1:450443263694:ios:bc1a55ec8c3b97466dda9f',
    messagingSenderId: '450443263694',
    projectId: 'smart-car-parking-iot-c531f',
    storageBucket: 'smart-car-parking-iot-c531f.appspot.com',
    iosClientId: '450443263694-e7es0madf919t0nrp8cjhs04p4og6f17.apps.googleusercontent.com',
    iosBundleId: 'com.example.smartCarParking',
  );
}
