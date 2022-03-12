import 'package:flutter/material.dart';

abstract class AppTheme {
  static get darkTheme {
    return ThemeData(
        scaffoldBackgroundColor: const Color(0xff0D1724),
        fontFamily: "Poppins_Regular",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: "Poppins_SemiBold"),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          splashColor: Colors.white.withOpacity(0.25),
          backgroundColor: const Color(0xff514BC3),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: const Color(0xff514BC3),
          minimumSize: const Size(315, 56),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: "Poppins_SemiBold"),
        )),
        textTheme: const TextTheme(
          bodyText1:
              TextStyle(color: Colors.white, fontFamily: "Poppins_Regular"),
          bodyText2: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: "Poppins_SemiBold"),
          headline5: TextStyle(
              color: Color(0xff4048BF),
              fontSize: 12,
              fontFamily: "Poppins_SemiBold"),
          headline2: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: "Poppins_SemiBold"),
          headline3: TextStyle(
              color: Color(0xff707070),
              fontSize: 12,
              fontFamily: "Poppins_Regular"),
          headline4: TextStyle(
              color: Colors.white, fontSize: 15, fontFamily: "Poppins_Regular"),
        ));
  }
}
