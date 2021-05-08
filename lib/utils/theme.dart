import 'package:flutter/material.dart';

const Color ColorPrimary = Color(0xFF50B848);
const Color ColorSecondary = Color(0xFF9FCC39);
const Color ColorAccent = Color(0xFFE5E5CA);

const LinearGradient lineargradient = LinearGradient(
  colors: [ColorPrimary, ColorSecondary],
  stops: [0, .8],
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
);

const String StrCopyRight = "جميع حقوق الملكية محفوظة";

const List<String> logo = [
  "asset/logo/logo.svg",
  "asset/logo/logo_simple.svg",
  "asset/logo/light_logo.svg",
  "asset/logo/light_logo_simple.svg"
];

const List<TextStyle> StyleText = [
  TextStyle(
    fontFamily: 'DroidKufi',
    color: ColorAccent,
    fontSize: 12,
  ),
  TextStyle(
    fontFamily: 'DroidKufi',
    color: ColorAccent,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  ),
  TextStyle(
    fontFamily: 'DroidKufi',
    color: ColorPrimary,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  ),
  TextStyle(
    fontFamily: 'DroidKufi',
    color: ColorSecondary,
    fontWeight: FontWeight.bold,
    fontSize: 12,
  ),
  TextStyle(
    fontFamily: 'DroidKufi',
    color: ColorPrimary,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  ),
  TextStyle(
    fontFamily: 'DroidKufi',
    color: Color.fromRGBO(20, 20, 20, .5),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  ),
  TextStyle(
    fontFamily: 'DroidKufi',
    color: ColorSecondary,
    fontWeight: FontWeight.normal,
    fontSize: 12,
  ),
  TextStyle(
    fontFamily: 'DroidKufi',
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 12,
  )
];

ThemeData themeData = ThemeData(
  appBarTheme: AppBarTheme(
    color: ColorPrimary,
    elevation: 2,
    centerTitle: true,
  ),
  fontFamily: 'DroidKufi',
  visualDensity: VisualDensity.adaptivePlatformDensity,
  buttonTheme: ButtonThemeData(
    buttonColor: ColorPrimary,
    textTheme: ButtonTextTheme.primary,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.grey,
    elevation: 2,
  ),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    filled: true,
    fillColor: Colors.grey[50],
    hintStyle: TextStyle(color: Colors.black12, fontSize: 12),
    contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
    border: UnderlineInputBorder(borderSide: BorderSide(color: ColorPrimary)),
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: ColorPrimary)),
    labelStyle: TextStyle(color: ColorPrimary, fontWeight: FontWeight.bold),
  ),
  textTheme: TextTheme(
    headline1: headline1,
  )
);

TextStyle headline1 = TextStyle(
  fontFamily: 'DroidKufi',
  color: ColorPrimary,
  fontWeight: FontWeight.normal,
  fontSize: 12,
);
