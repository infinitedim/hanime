import 'package:flutter/material.dart';
import 'package:hanime_app/views/pages/explore.dart';
import 'package:hanime_app/views/pages/home.dart';
import 'package:hanime_app/views/pages/profile.dart';
import 'package:hanime_app/views/pages/saved.dart';
import 'package:hanime_app/views/pages/settings.dart';
import 'package:hanime_app/views/pages/splash.dart';

String splash = "/splash";
String home = "/";
String explore = "/explore";
String saved = "/saved";
String profile = "/profile";
String settings = "/settings";

final Map<String, WidgetBuilder> routes = {
  splash: (context) => const SplashScreen(),
  home: (context) => const Home(),
  explore: (context) => const ExplorePage(),
  saved: (context) => const SavedPage(),
  profile: (context) => const ProfilePage(),
  settings: (context) => const SettingsPage(),
};
