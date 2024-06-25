import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hanime_app/constants/constants.dart';
import 'package:hanime_app/controller/auth_controller.dart';
import 'package:hanime_app/controller/localization_controller.dart';
import 'package:hanime_app/controller/theme_controller.dart';
import 'package:hanime_app/i18n/i18n.dart';
import 'package:hanime_app/routes/routes.dart';
import 'package:hanime_app/service/auth_service.dart';
import 'package:hanime_app/size_config.dart';
import 'package:hanime_app/theme.dart';

class HanimeBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<ThemeController>(() => ThemeController());
    Get.lazyPut<AuthService>(() => AuthService());
    Get.put<AuthController>(AuthController());
  }
}

class HanimeApp extends GetView {
  const HanimeApp({super.key, required this.languages});

  final Map<String, Map<String, String>> languages;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<LocalizationController>(
      builder: (localizationController) {
        return GetMaterialApp(
          title: 'Hanime',
          debugShowCheckedModeBanner: false,
          initialBinding: HanimeBinding(),
          darkTheme: HanimeTheme.darkTheme(),
          theme: HanimeTheme.lightTheme(),
          initialRoute: splash,
          locale: localizationController.locale,
          fallbackLocale: Locale(
            AppConstants.languages[0].languageCode,
            AppConstants.languages[0].countryCode,
          ),
          translations: Messages(languages: languages),
          routes: routes,
        );
      },
    );
  }
}
