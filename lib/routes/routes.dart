import 'package:flutter/material.dart';
import 'package:hanime_app/views/pages/auth/forgot_password.dart';
import 'package:hanime_app/views/pages/auth/sign_in.dart';
import 'package:hanime_app/views/pages/auth/sign_up.dart';
import 'package:hanime_app/views/pages/explore.dart';
import 'package:hanime_app/views/pages/home.dart';
import 'package:hanime_app/views/pages/profile.dart';
import 'package:hanime_app/views/pages/saved.dart';
import 'package:hanime_app/views/pages/settings/language.dart';
import 'package:hanime_app/views/pages/settings/settings.dart';
import 'package:hanime_app/views/pages/splash.dart';

String splash = "/splash";
String home = "/home";
String explore = "/explore";
String saved = "/saved";
String profile = "/profile";
String settings = "/settings";
String language = "/settings/language";
String register = "/register";
String login = "/login";
String forgotPassword = "/account/forgot";

final Map<String, WidgetBuilder> routes = {
  splash: (context) => const SplashScreen(),
  home: (context) => const Home(),
  explore: (context) => const ExplorePage(),
  saved: (context) => const SavedPage(),
  profile: (context) => const ProfilePage(),
  settings: (context) => const SettingsPage(),
  language: (context) => const SelectLanguagePage(),
  forgotPassword: (context) => const ForgotPasswordPage(),
  login: (context) => const SignInPage(),
  register: (context) => const SignUpPage(),
};
