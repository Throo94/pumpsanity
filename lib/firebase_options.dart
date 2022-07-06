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
    apiKey: 'AIzaSyD27VoaVdgZYiKMrF_Jj9YXq0uvR6dimwc',
    appId: '1:495428594279:web:fbcb0e12b7e15a7363c2c2',
    messagingSenderId: '495428594279',
    projectId: 'pumpsanitytest',
    authDomain: 'pumpsanitytest.firebaseapp.com',
    storageBucket: 'pumpsanitytest.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAEb4zbpK6CWepDESSXQCiJkh_mzoGYReU',
    appId: '1:495428594279:android:9088d28c1db4d32863c2c2',
    messagingSenderId: '495428594279',
    projectId: 'pumpsanitytest',
    storageBucket: 'pumpsanitytest.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDZJvh7Q-qv5parHHelKXZcAUgstHGLKg0',
    appId: '1:495428594279:ios:a508fcf7130a05c663c2c2',
    messagingSenderId: '495428594279',
    projectId: 'pumpsanitytest',
    storageBucket: 'pumpsanitytest.appspot.com',
    iosClientId: '495428594279-gs5ldicrmqdr6ruf0fe38a14ffg57b08.apps.googleusercontent.com',
    iosBundleId: 'com.jakubprymus.pumpsanity',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDZJvh7Q-qv5parHHelKXZcAUgstHGLKg0',
    appId: '1:495428594279:ios:a508fcf7130a05c663c2c2',
    messagingSenderId: '495428594279',
    projectId: 'pumpsanitytest',
    storageBucket: 'pumpsanitytest.appspot.com',
    iosClientId: '495428594279-gs5ldicrmqdr6ruf0fe38a14ffg57b08.apps.googleusercontent.com',
    iosBundleId: 'com.jakubprymus.pumpsanity',
  );
}
