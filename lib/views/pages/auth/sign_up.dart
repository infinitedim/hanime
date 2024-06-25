// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hanime_app/routes/routes.dart';
import 'package:hanime_app/size_config.dart';
import 'package:hanime_app/views/widgets/auth/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 16),
              Text(
                'registerAccount'.tr.capitalizeFirst!,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              const SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                'By continuing your confirm that you agree \nwith our Term and Condition',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Have an Account?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, login);
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
