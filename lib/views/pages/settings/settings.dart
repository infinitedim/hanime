import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hanime_app/controller/localization_controller.dart';
import 'package:hanime_app/controller/theme_controller.dart';
import 'package:hanime_app/routes/routes.dart';
import 'package:hanime_app/size_config.dart';

class SettingsPage extends GetView<ThemeController> {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'settings'.tr.capitalizeFirst!,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.toNamed(home);
          },
          icon: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Column(
          children: [
            Container(
              width: SizeConfig.screenWidth,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: controller.isDarkMode == true
                    ? Colors.grey
                    : Theme.of(context).colorScheme.surface,
              ),
              child: Text(
                'General'.tr.capitalizeFirst!,
              ),
            ),
            GetBuilder<LocalizationController>(
              builder: (localizationController) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(language);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: controller.isDarkMode == true
                          ? Theme.of(context).colorScheme.surface
                          : Colors.grey.withOpacity(0.3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const FaIcon(FontAwesomeIcons.language),
                            const SizedBox(width: 10),
                            Text('lang'.tr.capitalizeFirst!),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '${localizationController.locale.languageCode}_${localizationController.locale.countryCode}',
                            ),
                            const SizedBox(width: 10),
                            const FaIcon(FontAwesomeIcons.arrowRight, size: 16)
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
