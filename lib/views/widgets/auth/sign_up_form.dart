// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hanime_app/controller/auth_controller.dart';
import 'package:hanime_app/routes/routes.dart';
import 'package:hanime_app/service/auth_service.dart';
import 'package:hanime_app/size_config.dart';
import 'package:hanime_app/views/widgets/shared/custom_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final AuthController auth = Get.find();
  final AuthService service = Get.find();

  bool isPasswordHide = true;
  bool isConfirmPasswordHide = true;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          onChanged: (value) {
            setState(() {
              auth.emailController.text = value;
            });
          },
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Enter your email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            prefixIcon: Container(
              padding: const EdgeInsets.only(top: 10.0, left: 15.0),
              child: const FaIcon(FontAwesomeIcons.envelope),
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        TextFormField(
          obscureText: isPasswordHide ? true : false,
          onChanged: (value) {
            setState(() {
              auth.passwordController.text = value;
            });
          },
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Enter your password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            prefixIcon: Container(
              padding: const EdgeInsets.only(top: 10.0, left: 15.0),
              child: const FaIcon(FontAwesomeIcons.lock),
            ),
            suffixIcon: Container(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isPasswordHide = !isPasswordHide;
                  });
                },
                icon: FaIcon(
                  isPasswordHide
                      ? FontAwesomeIcons.eye
                      : FontAwesomeIcons.eyeSlash,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        TextFormField(
          obscureText: isConfirmPasswordHide ? true : false,
          onChanged: (value) {
            setState(() {
              auth.confirmPasswordController.text = value;
            });
          },
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          controller: auth.confirmPasswordController,
          decoration: InputDecoration(
            labelText: "Confirm Password",
            hintText: "Re-enter your password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            prefixIcon: Container(
              padding: const EdgeInsets.only(top: 10.0, left: 15.0),
              child: const FaIcon(FontAwesomeIcons.lock),
            ),
            suffixIcon: Container(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: FaIcon(
                  isConfirmPasswordHide
                      ? FontAwesomeIcons.eye
                      : FontAwesomeIcons.eyeSlash,
                ),
                onPressed: () {
                  setState(() {
                    isConfirmPasswordHide = !isConfirmPasswordHide;
                  });
                },
              ),
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(40)),
        CustomButton(
          text: 'register'.tr.capitalizeFirst,
          onPressed: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            if (auth.password == auth.confirmPassword) {
              service.signUp(
                email: auth.email,
                password: auth.password,
              );
              if (prefs.getBool('hasLoggedIn')!) {
                FocusScope.of(context).unfocus();
                Get.toNamed(home);
              }
            }
            if (auth.password != auth.confirmPassword) {
              Fluttertoast.showToast(
                msg: 'error.passwordMissMatch'.tr.capitalizeFirst!,
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            }
          },
        ),
      ],
    );
  }
}
