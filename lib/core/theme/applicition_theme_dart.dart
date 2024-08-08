import 'package:flutter/material.dart';

class ApplictionThemeManager {
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color primaryDarkColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontFamily: "ElMessiri",
          fontSize: 30,
          color: const Color(0xFF242424),
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: primaryColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF000000),
          selectedLabelStyle: TextStyle(
            fontFamily: "ElMessiri",
            fontSize: 13,
            fontWeight: FontWeight.w800,
          ),
          selectedIconTheme: IconThemeData(
            color: Color(0xFF000000),
            size: 35,
          ),
          showSelectedLabels: false,
          unselectedItemColor: Color(0xFFFFFFFF),
          unselectedLabelStyle: TextStyle(
            fontFamily: "ElMessiri",
            fontSize: 10,
            fontWeight: FontWeight.w800,
          ),
          unselectedIconTheme: IconThemeData(
            color: Color(0xFFFFFFFF),
            size: 28,
          )),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: "ElMeesiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xFF242424),
        ),
        bodyLarge: TextStyle(
          fontFamily: "ElMeesiri",
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Color(0xFF242424),
        ),
        bodyMedium: TextStyle(
          fontFamily: "ElMeesiri",
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Color(0xFF242424),
        ),
        bodySmall: TextStyle(
          fontFamily: "ElMeesiri",
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Color(0xFF242424),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: primaryColor,
      ));
  static ThemeData darkTheme = ThemeData(
      primaryColorDark: primaryDarkColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontFamily: "ElMessiri",
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF141A2E),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryDarkColor,
          selectedLabelStyle: TextStyle(
              fontFamily: "ElMessiri",
              fontSize: 13,
              fontWeight: FontWeight.w800,
              color: primaryDarkColor),
          selectedIconTheme: IconThemeData(
            color: primaryDarkColor,
            size: 35,
          ),
          showSelectedLabels: false,
          unselectedItemColor: Color(0xFFFFFFFF),
          unselectedLabelStyle: TextStyle(
            fontFamily: "ElMessiri",
            fontSize: 10,
            fontWeight: FontWeight.w800,
          ),
          unselectedIconTheme: IconThemeData(
            color: Color(0xFFFFFFFF),
            size: 28,
          )),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: "ElMeesiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
          fontFamily: "ElMeesiri",
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontFamily: "ElMeesiri",
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Color(0xFF242424),
        ),
        bodySmall: TextStyle(
          fontFamily: "ElMeesiri",
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Color(0xFF242424),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: primaryDarkColor,
      ));
}
