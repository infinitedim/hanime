import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hanime_app/controller/auth_controller.dart';
import 'package:hanime_app/routes/routes.dart';
import 'package:hanime_app/service/auth_service.dart';
import 'package:hanime_app/size_config.dart';
import 'package:hanime_app/views/widgets/shared/custom_button.dart';
import 'package:hanime_app/views/widgets/shared/dont_have_account_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final AuthController auth = Get.find();
  final AuthService controller = Get.find();
  bool isPasswordHide = true;
  DateTime? currentBackPressTime;

  @override
  Widget build(BuildContext context) {
    void handleLogin() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      controller.signIn(
        email: auth.email,
        password: auth.password,
      );

      if (prefs.getBool('hasLoggedIn')!) {
        Get.toNamed(home);
      }
    }

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (!didPop) {
          DateTime now = DateTime.now();
          if (currentBackPressTime == null ||
              now.difference(currentBackPressTime!) >
                  const Duration(seconds: 2)) {
            currentBackPressTime = now;
            Fluttertoast.showToast(
              msg: 'pressToExit'.tr.capitalizeFirst!,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0,
            );
          } else {
            SystemNavigator.pop();
          }
        }
      },
      child: Scaffold(
        body: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  'login'.tr.capitalizeFirst!,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(40),
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          auth.email = value;
                          setState(() {});
                        },
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                        controller: auth.emailController,
                        decoration: InputDecoration(
                          labelText: 'email'.tr.capitalizeFirst,
                          hintText: 'enterEmail'.tr.capitalizeFirst,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          prefixIcon: Container(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: const FaIcon(
                              FontAwesomeIcons.envelope,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(30),
                      ),
                      TextFormField(
                        obscureText: isPasswordHide ? true : false,
                        onChanged: (value) {
                          auth.password = value;
                          setState(() {});
                        },
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                        decoration: InputDecoration(
                          labelText: 'password'.tr.capitalizeFirst,
                          hintText: 'enterPassword'.tr.capitalizeFirst,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          prefixIcon: Container(
                            margin:
                                const EdgeInsets.only(top: 10.0, left: 15.0),
                            child: const FaIcon(
                              FontAwesomeIcons.lock,
                            ),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              isPasswordHide = !isPasswordHide;
                              setState(() {});
                            },
                            icon: FaIcon(
                              isPasswordHide
                                  ? FontAwesomeIcons.eye
                                  : FontAwesomeIcons.eyeSlash,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(30)),
                      Row(
                        children: <Widget>[
                          const Spacer(),
                          GestureDetector(
                            onTap: () => Get.toNamed(forgotPassword),
                            child: Text(
                              "${'forgotPassword'.tr.capitalizeFirst!}?",
                              style: const TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      CustomButton(
                        text: 'login'.tr.capitalize,
                        onPressed: handleLogin,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const DontHaveAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
