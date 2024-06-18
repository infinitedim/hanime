import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanime_app/controller/theme_controller.dart';
import 'package:hanime_app/routes/routes.dart';
import 'package:hanime_app/size_config.dart';
import 'package:hanime_app/theme.dart';

class HanimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeController>(() => ThemeController());
  }
}

class HanimeApp extends StatelessWidget {
  const HanimeApp({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetMaterialApp(
      title: 'Hanime',
      debugShowCheckedModeBanner: false,
      initialBinding: HanimeBinding(),
      darkTheme: HanimeTheme.darkTheme(),
      theme: HanimeTheme.lightTheme(),
      initialRoute: splash,
      routes: routes,
    );
  }
}
