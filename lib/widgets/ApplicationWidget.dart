import 'package:flutter/material.dart';

class AppWidget {
  // Text Style
  static TextStyle AppBarTextStyle() {
    return const TextStyle(
        fontSize: 22,
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Delius');
  }

  static TextStyle LargeTextStyle() {
    return const TextStyle(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Delius');
  }

  static TextStyle LargeMDTextStyle() {
    return const TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Delius');
  }

  static TextStyle MediamTextStyle() {
    return const TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Delius');
  }

  static TextStyle MediamMdTextStyle({required Color color}) {
    return const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Delius');
  }

  static TextStyle SmallXMDTextStyle() {
    return const TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Delius');
  }

  static TextStyle SmallXTextStyle() {
    return const TextStyle(
        fontSize: 10,
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Delius');
  }

  // Default Spacing
  static const double defaultSpace = 24.0;
  static const double spaceBtwItems = 16.0;
  static const double spaceBtwItemsSm = 7.0;
  static const double spaceBtwItemsMd = 12.0;
  static const double spaceBtwSections = 32.0;

  // Icon Sizes
  static const double iconXs = 12.0;
  static const double iconSm = 16.0;
  static const double iconMd = 24.0;
  static const double iconLg = 32.0;

  // Background Colors
  static const Color lightColor = Color(0xFFF6F6F6);
  static const Color darkColor = Color(0xFF272727);
  static const Color primaryBackgroundColor = Color(0xFFF3F5FF);
}
