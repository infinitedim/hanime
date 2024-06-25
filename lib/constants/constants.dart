// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hanime_app/model/language_model.dart';
import 'package:hanime_app/size_config.dart';

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = GoogleFonts.inter(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// final RegExp emailValidatorRegExp =
//     RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
// const String kEmailNullError = "Please Enter your email";
// const String kInvalidEmailError = "Please Enter Valid Email";
// const String kPassNullError = "Please Enter your password";
// const String kShortPassError = "Password is too short";
// const String kMatchPassError = "Passwords don't match";
// const String kNamelNullError = "Please Enter your name";
// const String kPhoneNumberNullError = "Please Enter your phone number";
// const String kAddressNullError = "Please Enter your address";

List<String> genres = [
  "Action",
  "Adventure",
  "Comedy",
  "Drama",
  "Fantasy",
  "Horror",
  "Mecha",
  "Mystery",
  "Romance",
  "Sci-Fi",
  "Slice of Life",
  "Sports",
  "Supernatural",
  "Thriller",
  "Isekai",
  "Harem",
  "Ecchi",
  "Mahou Shoujo",
  "Shounen",
  "Shoujo",
  "Josei",
  "Seinen",
  "Gourmet",
  "Game",
  "Music",
  "Psychological",
  "Parody",
  "Samurai",
  "Super Power",
  "Military",
  "Police",
  "Space",
  "Vampire",
  "Yaoi",
  "Yuri",
];

const kBlackColor = Color.fromRGBO(18, 18, 18, 1);
const kWhiteColor = Color.fromRGBO(255, 255, 255, 1);

final otpInputDecoration = InputDecoration(
  border: outlineInputBorder,
  focusedBorder: outlineInputBorder,
  enabledBorder: outlineInputBorder,
);

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
  borderSide: const BorderSide(color: Colors.grey),
);

class AppConstants {
  static const String COUNTRY_CODE = 'country_code';
  static const String LANGUAGE_CODE = 'language_code';

  static List<LanguageModel> languages = [
    LanguageModel(
      languageName: 'Bahasa',
      countryCode: 'ID',
      languageCode: 'id',
    ),
    LanguageModel(
      languageName: 'English',
      countryCode: 'US',
      languageCode: 'en',
    ),
    LanguageModel(
      languageName: 'French',
      countryCode: 'FR',
      languageCode: 'fr',
    ),
    LanguageModel(
      languageName: 'Japanese',
      countryCode: 'JP',
      languageCode: 'ja',
    ),
    LanguageModel(
      languageName: 'Melayu',
      countryCode: 'MY',
      languageCode: 'ms',
    ),
    LanguageModel(
      languageName: 'Tagalog',
      countryCode: 'PH',
      languageCode: 'tl',
    ),
    LanguageModel(
      languageName: 'Russian',
      countryCode: 'RU',
      languageCode: 'ru',
    ),
  ];
}
