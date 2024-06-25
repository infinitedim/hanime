import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:hanime_app/enum/enum_collection.dart';
import 'package:hanime_app/handlers/auth_exception_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService extends GetxService {
  static final auth = FirebaseAuth.instance;
  final Rx<User?> _user = Rx<User?>(null);
  late SharedPreferences _prefs;

  @override
  void onInit() async {
    super.onInit();
    _prefs = await SharedPreferences.getInstance();
    _user.bindStream(auth.authStateChanges());
    ever(_user, _setInitialScreen);
  }

  void _setInitialScreen(User? user) async {
    if (_prefs.getBool('hasLoggedIn') ?? false) {
      Get.offAllNamed('/home');
    } else if (user != null) {
      _prefs.setBool('hasLoggedIn', true);
      Get.offAllNamed('/home');
    } else {
      Get.offAllNamed('/login');
    }
  }

  Future<AuthStatus> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      _user.value = auth.currentUser;
      return AuthStatus.successful;
    } on FirebaseAuthException catch (e) {
      return AuthExceptionHandler.handleAuthException(e);
    }
  }

  Future<AuthStatus> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      _user.value = auth.currentUser;
      return AuthStatus.successful;
    } on FirebaseAuthException catch (e) {
      return AuthExceptionHandler.handleAuthException(e);
    }
  }

  Future<AuthStatus> resetPassword({required String email}) async {
    await auth
        .sendPasswordResetEmail(email: email)
        .then((value) => AuthStatus.successful)
        .catchError((e) => AuthExceptionHandler.handleAuthException(e));
    return AuthStatus.successful;
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      _prefs.setBool('hasLoggedIn', false);
      _user.value = null;
    } on FirebaseAuthException catch (error) {
      Fluttertoast.showToast(
        msg: error.message ?? 'error.somethingWentWrong'.tr.capitalizeFirst!,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
}
