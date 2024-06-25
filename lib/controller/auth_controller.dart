import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    update();
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
    update();
  }

  String _confirmPassword = '';
  String get confirmPassword => _confirmPassword;
  set confirmPassword(String value) {
    _confirmPassword = value;
    update();
  }
}
