import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  iconTheme: const IconThemeData(color: CustomColors.primary),
  fontFamily: 'Inter',
  snackBarTheme: const SnackBarThemeData(
      backgroundColor: CustomColors.primary,
      behavior: SnackBarBehavior.floating),
  dialogTheme: DialogTheme(
    backgroundColor: CustomColors.white,
  ),
  bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)))),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: CustomColors.white,
      unselectedItemColor: CustomColors.grey,
      selectedItemColor: CustomColors.white),
  splashColor: CustomColors.white.withValues(alpha: .5),
  highlightColor: CustomColors.white.withValues(alpha: .5),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: CustomColors.primary,
    selectionColor: CustomColors.primary,
    selectionHandleColor: CustomColors.white,
  ),
  colorScheme: ColorScheme.fromSwatch(
    accentColor: CustomColors.primary,
  ),
  checkboxTheme: CheckboxThemeData(side: BorderSide(color: CustomColors.white)),
  listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: CustomColors.grey),
          borderRadius: BorderRadius.circular(5))),
  textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(CustomColors.primary))),
  dividerColor: CustomColors.grey,
  appBarTheme: AppBarTheme(
      color: CustomColors.black,
      elevation: 0,
      foregroundColor: CustomColors.white),
  scaffoldBackgroundColor: CustomColors.black,
  primaryColor: CustomColors.primary,
  primaryColorLight: CustomColors.primary.withValues(alpha: .5),
  brightness: Brightness.light,
  hintColor: CustomColors.grey,
  switchTheme: SwitchThemeData(
      thumbColor:
          WidgetStateProperty.all(CustomColors.primary.withValues(alpha: .8)),
      trackColor:
          WidgetStateProperty.all(CustomColors.primary.withValues(alpha: .1))),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          fixedSize: const WidgetStatePropertyAll<Size>(Size(999, 50)),
          backgroundColor: const WidgetStatePropertyAll(CustomColors.primary),
          padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(horizontal: 10, vertical: 10)))),
  textTheme: TextTheme(
    // Main Heading
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),
    // Sub Heading
    displayMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),
    // Section Heading
    displaySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),

    // Card Titles
    headlineLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),
    headlineSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),

    // Bold Titles
    titleLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),
    titleMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),

    // Main body text
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),

    // Buttons
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: CustomColors.white,
      fontFamily: 'Inter',
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  primaryColor: CustomColors.primary,
  scaffoldBackgroundColor: CustomColors.white,
  fontFamily: 'Inter',
  snackBarTheme: const SnackBarThemeData(
    backgroundColor: CustomColors.primary,
    behavior: SnackBarBehavior.fixed,
  ),
  dialogTheme: DialogTheme(
    backgroundColor: CustomColors.white,
  ),
  bottomSheetTheme: const BottomSheetThemeData(
      dragHandleColor: Colors.grey,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)))),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: CustomColors.white,
      unselectedItemColor: CustomColors.grey,
      selectedItemColor: CustomColors.white),
  splashColor: CustomColors.white.withValues(alpha: .5),
  highlightColor: CustomColors.white.withValues(alpha: .5),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: CustomColors.primary,
    selectionColor: CustomColors.primary,
    selectionHandleColor: CustomColors.white,
  ),
  colorScheme: ColorScheme.fromSwatch(
    accentColor: CustomColors.primary,
    // primarySwatch: CustomColors.primary
  ),
  listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: CustomColors.grey),
          borderRadius: BorderRadius.circular(5))),
  dividerColor: CustomColors.grey,
  textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(CustomColors.primary))),
  appBarTheme: AppBarTheme(
      color: CustomColors.white,
      elevation: 0,
      foregroundColor: CustomColors.black),
  primaryColorLight: CustomColors.primary.withValues(alpha: .5),
  brightness: Brightness.light,
  hintColor: CustomColors.grey,
  // switchTheme: SwitchThemeData(
  //     thumbColor: WidgetStateProperty.all(CustomColors.primary.withValues(alpha:.5)),
  //     trackColor: WidgetStateProperty.all(CustomColors.bg)),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          fixedSize: const WidgetStatePropertyAll<Size>(Size(999, 40)),
          backgroundColor: const WidgetStatePropertyAll(CustomColors.primary),
          padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(horizontal: 10, vertical: 10)))),
  textTheme: TextTheme(
    // Main Heading
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),
    // Sub Heading
    displayMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),
    // Section Heading
    displaySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),

    // Card Titles
    headlineLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),
    headlineSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),

    // Bold Titles
    titleLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),
    titleMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),

    // Main body text
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),

    // Buttons
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: CustomColors.primaryTextColor,
      fontFamily: 'Inter',
      letterSpacing: 0.5,
    ),
  ),
);

class CustomColors {
  static const Color primary = Color(0xFF4F3D56);
  static const Color secondary = Color(0xFFFAFAFA);
  static const Color primaryTextColor = Color(0xFF1F2C37);
  static const Color secondaryTextColor = Color(0xFF78828A);
  static const Color bodyTextColor = Color(0xFF9CA4AB);
  static const Color bodyGrey = Color(0xFFEFF0F1);
  static const Color textFieldHintColor = Color(0xFF78828A);
  static const Color textFieldFillColor = Color(0xFFFDFDFD);
  static const Color primaryScreenColor = Color(0xFFE5E5E5);
  static const Color red = Color(0xFFFF3838);
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color grey = Colors.grey;
  static const Color errorMessageColor = Color.fromARGB(255, 166, 4, 4);
  static const Color warningMessageColor = Color(0xFFC2AF6F);
  static const Color success = Color(0xFF5fa777);
  static const Color card = Color(0xFFECF1F6);
}
