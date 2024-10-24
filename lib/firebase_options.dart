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
    apiKey: 'AIzaSyBxnCevmAe0h8rj-JmU0wVIgus8agCMZsA',
    appId: '1:193759649289:web:2855d63bef431b57cae2d8',
    messagingSenderId: '193759649289',
    projectId: 'reditclone-461a9',
    authDomain: 'reditclone-461a9.firebaseapp.com',
    storageBucket: 'reditclone-461a9.appspot.com',
    measurementId: 'G-PR9311PXP0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBXUnoQhBv1-XH-orjElwMSOSdq43c72bo',
    appId: '1:193759649289:android:c623f4a48a89a3a8cae2d8',
    messagingSenderId: '193759649289',
    projectId: 'reditclone-461a9',
    storageBucket: 'reditclone-461a9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCZvsx7bMyiywm8Q1NSBkRmmGWj8JLkPlk',
    appId: '1:193759649289:ios:cf6d7809b9058110cae2d8',
    messagingSenderId: '193759649289',
    projectId: 'reditclone-461a9',
    storageBucket: 'reditclone-461a9.appspot.com',
    iosBundleId: 'com.example.redditclone',
  );
}
