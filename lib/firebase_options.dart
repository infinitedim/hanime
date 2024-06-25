import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    final optionsMap = <TargetPlatform, FirebaseOptions>{
      TargetPlatform.android: android,
      TargetPlatform.iOS: ios
    };

    final platformOptions = optionsMap[defaultTargetPlatform];
    if (platformOptions != null) {
      return platformOptions;
    } else {
      throw UnsupportedError(
        'DefaultFirebaseOptions are not supported for this platform.',
      );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArYYCIn7mhpD3WEJBH91qUb0sFWswoT5U',
    appId: '1:168087597633:android:250635b8aa61c317ec0cc0',
    messagingSenderId: '168087597633',
    projectId: 'hanime-38960',
    storageBucket: 'hanime-38960.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDCH6wS4CFK7Q2ZQYZBja43I18-0QMFgek',
    appId: '1:168087597633:ios:13fef370f4fdeab2ec0cc0',
    messagingSenderId: '168087597633',
    projectId: 'hanime-38960',
    storageBucket: 'hanime-38960.appspot.com',
    iosBundleId: 'com.example.hanimeApp',
  );
}
