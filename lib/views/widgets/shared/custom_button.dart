import 'package:flutter/material.dart';
import 'package:hanime_app/size_config.dart';
import 'package:get/get.dart';

class CustomButton extends GetView {
  const CustomButton({
    super.key,
    this.text,
    this.onPressed,
    this.textDecoration,
  });
  final String? text;
  final GestureTapCallback? onPressed;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll<Color>(
            Theme.of(context).colorScheme.primary,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text!,
          style: TextStyle(
            decoration: textDecoration,
            fontSize: getProportionateScreenWidth(18),
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
      ),
    );
  }
}
