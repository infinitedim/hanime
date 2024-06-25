import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanime_app/routes/routes.dart';
import 'package:hanime_app/size_config.dart';

class DontHaveAccountText extends GetView {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '${'dontHaveAccount'.tr.capitalizeFirst}? ',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        GestureDetector(
          onTap: () => Get.toNamed(register),
          child: Text(
            'register'.tr.capitalizeFirst!,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: Theme.of(context).colorScheme.primary,
              decoration: TextDecoration.underline,
              decorationColor: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
