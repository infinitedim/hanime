import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hanime_app/app.dart';
import 'package:hanime_app/firebase_options.dart';
import 'package:hanime_app/i18n/i18n.dart';

void main() async {
  // if (kIsWeb) {
  WidgetsFlutterBinding.ensureInitialized();
  // } else {
  //   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // }

  Map<String, Map<String, String>> languages = await initLanguages();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(
      HanimeApp(languages: languages),
    ),
  );
}
