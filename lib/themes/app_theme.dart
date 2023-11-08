import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '/resources/resources.dart';

class AppTheme {
  static ThemeData buildThemeData(bool darkMode) {
    return ThemeData(
      primaryColor: AppColors.colorPrimary,
      colorScheme: ThemeData().colorScheme.copyWith(
            primary: AppColors.colorPrimary,
            secondary: AppColors.colorSecondary,
          ),
      brightness: (darkMode) ? Brightness.light : Brightness.light,
      scaffoldBackgroundColor: (darkMode) ? AppColors.black : AppColors.white,
      backgroundColor: (darkMode) ? AppColors.black : AppColors.white,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      appBarTheme: (darkMode) ? darkAppBar() : lightAppBar(),
      fontFamily: 'Lato',
      floatingActionButtonTheme: FloatingActionButtonThemeData(),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: AppColors.colorPrimary,
      )),
      bottomNavigationBarTheme:
          (darkMode) ? darkNavigation() : lightNavigation(),
      textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white), // Navbar
        headline2: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white), // Banner
        headline3: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black), // Normal
        headline4: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.normal,
            color: Colors.black),
        headline5: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black54), // SubNormal
        headline6: TextStyle(
            fontSize: 14.sp,
            color: AppColors.colorPrimary,
            fontWeight: FontWeight.w500),
        bodyText1: TextStyle(fontSize: 12.sp, color: Colors.black87),
        bodyText2: TextStyle(fontSize: 12.sp, color: Colors.black87),
        button: TextStyle(fontSize: 14.sp, color: Colors.white),
      ),
      inputDecorationTheme: inputDecoration(darkMode),
    );
  }

  static AppBarTheme lightAppBar() {
    return AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      color: Colors.white,
      elevation: 0,
    );
  }

  static BottomNavigationBarThemeData lightNavigation() {
    return BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.deepOrangeAccent,
      elevation: 0,
    );
  }

  static AppBarTheme darkAppBar() {
    return AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white, //change your color here
      ),
      color: Colors.black,
      elevation: 0,
    );
  }

  static BottomNavigationBarThemeData darkNavigation() {
    return BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.deepOrangeAccent,
      elevation: 0,
    );
  }

  // Box Field
  static inputDecoration(bool darkMode) {
    return InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[50],
      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.borderColor, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.borderColor, width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.red.withOpacity(0.8), width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.red, width: 1.4),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.colorPrimary, width: 1),
      ),
      labelStyle: TextStyle(
        color: darkMode ? AppColors.white : AppColors.black,
      ),
      hintStyle: TextStyle(color: AppColors.subHintColor, fontSize: 12),
    );
  }
}
