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
    apiKey: 'AIzaSyCpZy0b0n_2gbdESLk0HSf3YJR57wwWN6M',
    appId: '1:896794592286:web:b9f6e9a4796d6343edda0f',
    messagingSenderId: '896794592286',
    projectId: 'esep-66748',
    authDomain: 'esep-66748.firebaseapp.com',
    storageBucket: 'esep-66748.appspot.com',
    measurementId: 'G-2TRG49K5TE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWPgSN1zP02Nz9q8UxR-GQogUd2reDmFM',
    appId: '1:896794592286:android:49d01ed27de509c7edda0f',
    messagingSenderId: '896794592286',
    projectId: 'esep-66748',
    storageBucket: 'esep-66748.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_yNwKcpfXRRxt-nm4DKa6foBOdKqeCic',
    appId: '1:896794592286:ios:570cf88a1e528112edda0f',
    messagingSenderId: '896794592286',
    projectId: 'esep-66748',
    storageBucket: 'esep-66748.appspot.com',
    iosClientId: '896794592286-j1u9qobo8naknq2di645grrf53898ebn.apps.googleusercontent.com',
    iosBundleId: 'com.example.esep',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_yNwKcpfXRRxt-nm4DKa6foBOdKqeCic',
    appId: '1:896794592286:ios:570cf88a1e528112edda0f',
    messagingSenderId: '896794592286',
    projectId: 'esep-66748',
    storageBucket: 'esep-66748.appspot.com',
    iosClientId: '896794592286-j1u9qobo8naknq2di645grrf53898ebn.apps.googleusercontent.com',
    iosBundleId: 'com.example.esep',
  );
}
