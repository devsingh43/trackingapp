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
    apiKey: 'AIzaSyAEcG4zGKZpW6EL4sLtgCojSOcHXv3AXeU',
    appId: '1:584316944820:web:addf65cd81d609988af2e1',
    messagingSenderId: '584316944820',
    projectId: 'mobinecar',
    authDomain: 'mobinecar.firebaseapp.com',
    storageBucket: 'mobinecar.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHI8pyMmIPjh8z0wMbwoRpy1cJLLFgWvU',
    appId: '1:584316944820:android:4898d111f21682378af2e1',
    messagingSenderId: '584316944820',
    projectId: 'mobinecar',
    storageBucket: 'mobinecar.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkUbT5rFsKu9jnnU4YmAZjTdPXs0GtEIc',
    appId: '1:584316944820:ios:7a90ac94e867dc888af2e1',
    messagingSenderId: '584316944820',
    projectId: 'mobinecar',
    storageBucket: 'mobinecar.appspot.com',
    iosBundleId: 'com.example.vehicleDetection',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDkUbT5rFsKu9jnnU4YmAZjTdPXs0GtEIc',
    appId: '1:584316944820:ios:7a90ac94e867dc888af2e1',
    messagingSenderId: '584316944820',
    projectId: 'mobinecar',
    storageBucket: 'mobinecar.appspot.com',
    iosBundleId: 'com.example.vehicleDetection',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAEcG4zGKZpW6EL4sLtgCojSOcHXv3AXeU',
    appId: '1:584316944820:web:292471294317ab0e8af2e1',
    messagingSenderId: '584316944820',
    projectId: 'mobinecar',
    authDomain: 'mobinecar.firebaseapp.com',
    storageBucket: 'mobinecar.appspot.com',
  );
}
