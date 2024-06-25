import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanime_app/size_config.dart';
import 'package:hanime_app/views/pages/auth/sign_in.dart';
import 'package:hanime_app/views/pages/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;
  String title = 'Hanime';

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..forward();

    _animation = StepTween(begin: 0, end: title.length).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();

    _navigate();
  }

  _navigate() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await Future.delayed(const Duration(seconds: 3), () {
      bool hasLoggedIn = prefs.getBool('hasLoggedIn') ?? false;
      Get.off(() {
        return hasLoggedIn ? const Home() : const SignInPage();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          color: Theme.of(context).colorScheme.surface,
          alignment: Alignment.center,
          child: Text(
            title.substring(0, _animation.value),
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              decoration: TextDecoration.none,
              fontFamily: Theme.of(context).textTheme.displaySmall?.fontFamily,
            ),
          ),
        );
      },
    );
  }
}
