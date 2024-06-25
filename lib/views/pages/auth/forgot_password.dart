import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hanime_app/size_config.dart';
import 'package:hanime_app/views/widgets/shared/custom_button.dart';
import 'package:hanime_app/views/widgets/shared/dont_have_account_text.dart';

class ForgotPasswordPage extends GetView {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Back to login"),
      ),
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: getProportionateScreenHeight(130),
              ),
              Text(
                "Forgot Password",
                style: GoogleFonts.inter(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              const ForgotPassForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          onFieldSubmitted: (value) {
            emailController.text = value;
          },
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) {
            emailController.text = value;
          },
          decoration: InputDecoration(
            labelText: 'email'.tr.capitalizeFirst,
            hintText: 'enterEmail'.tr.capitalizeFirst,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            prefixIcon: Container(
              padding: const EdgeInsets.only(top: 10, left: 15.0),
              child: const FaIcon(FontAwesomeIcons.lock),
            ),
          ),
        ),
        const SizedBox(height: 50.0),
        const CustomButton(
          text: "Reset",
          // onPressed: () async {
          //   final status =
          //       await AuthService().resetPassword(email: emailController.text);
          //   if (status == AuthStatus.successful) {
          //     SnackBar(
          //       content: Text(
          //         'Reset email has been sent check your email',
          //         style: GoogleFonts.inter(
          //           fontWeight: FontWeight.normal,
          //           color: Colors.white,
          //         ),
          //       ),
          //       action: SnackBarAction(label: 'Close', onPressed: () {}),
          //       backgroundColor: Colors.green,
          //     );
          //   }
          // },
        ),
        const SizedBox(
          height: 50,
        ),
        const DontHaveAccountText(),
      ],
    );
  }
}
