import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hanime_app/controller/localization_controller.dart';
import 'package:hanime_app/routes/routes.dart';
import 'package:hanime_app/size_config.dart';

class SelectLanguagePage extends StatefulWidget {
  const SelectLanguagePage({super.key});

  @override
  State<SelectLanguagePage> createState() => _SelectLanguagePageState();
}

class _SelectLanguagePageState extends State<SelectLanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'lang'.tr.capitalizeFirst!,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.toNamed(settings);
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
        child: GetBuilder<LocalizationController>(
          builder: (localizationController) {
            Locale? languages = localizationController.locale;
            return Column(
              children: [
                ListTile(
                  title: Text(
                    localizationController.languages[0].languageName,
                  ),
                  leading: Radio<Locale?>(
                    value: Locale(
                      localizationController.languages[0].languageCode,
                      localizationController.languages[0].countryCode,
                    ),
                    groupValue: languages,
                    onChanged: (Locale? value) {
                      localizationController.setLanguage(value!);
                      languages = Locale(
                        localizationController.languages[0].languageCode,
                        localizationController.languages[0].countryCode,
                      );
                      setState(() {});
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    localizationController.languages[1].languageName,
                  ),
                  leading: Radio<Locale?>(
                    value: Locale(
                      localizationController.languages[1].languageCode,
                      localizationController.languages[1].countryCode,
                    ),
                    groupValue: languages,
                    onChanged: (Locale? value) {
                      localizationController.setLanguage(value!);
                      languages = Locale(
                        localizationController.languages[1].languageCode,
                        localizationController.languages[1].countryCode,
                      );
                      setState(() {});
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    localizationController.languages[2].languageName,
                  ),
                  leading: Radio<Locale?>(
                    value: Locale(
                      localizationController.languages[2].languageCode,
                      localizationController.languages[2].countryCode,
                    ),
                    groupValue: languages,
                    onChanged: (Locale? value) {
                      localizationController.setLanguage(value!);
                      languages = Locale(
                        localizationController.languages[2].languageCode,
                        localizationController.languages[2].countryCode,
                      );
                      setState(() {});
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    localizationController.languages[3].languageName,
                  ),
                  leading: Radio<Locale?>(
                    value: Locale(
                      localizationController.languages[3].languageCode,
                      localizationController.languages[3].countryCode,
                    ),
                    groupValue: languages,
                    onChanged: (Locale? value) {
                      localizationController.setLanguage(value!);
                      languages = Locale(
                        localizationController.languages[3].languageCode,
                        localizationController.languages[3].countryCode,
                      );
                      setState(() {});
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    localizationController.languages[4].languageName,
                  ),
                  leading: Radio<Locale?>(
                    value: Locale(
                      localizationController.languages[4].languageCode,
                      localizationController.languages[4].countryCode,
                    ),
                    groupValue: languages,
                    onChanged: (Locale? value) {
                      localizationController.setLanguage(value!);
                      languages = Locale(
                        localizationController.languages[4].languageCode,
                        localizationController.languages[4].countryCode,
                      );
                      setState(() {});
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    localizationController.languages[5].languageName,
                  ),
                  leading: Radio<Locale?>(
                    value: Locale(
                      localizationController.languages[5].languageCode,
                      localizationController.languages[5].countryCode,
                    ),
                    groupValue: languages,
                    onChanged: (Locale? value) {
                      localizationController.setLanguage(value!);
                      languages = Locale(
                        localizationController.languages[5].languageCode,
                        localizationController.languages[5].countryCode,
                      );
                      setState(() {});
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    localizationController.languages[6].languageName,
                  ),
                  leading: Radio<Locale?>(
                    value: Locale(
                      localizationController.languages[6].languageCode,
                      localizationController.languages[6].countryCode,
                    ),
                    groupValue: languages,
                    onChanged: (Locale? value) {
                      localizationController.setLanguage(value!);
                      languages = Locale(
                        localizationController.languages[6].languageCode,
                        localizationController.languages[6].countryCode,
                      );
                      setState(() {});
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
