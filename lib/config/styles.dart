import 'package:flutter/material.dart';

class FontFamilies {
  const FontFamilies._();

  static const satoshi = 'Satoshi';
  static const cabinet = 'Cabinet';
}

class FontSizes {
  const FontSizes._();

  static const headline = 16;
  static const subtitle = 14;
  static const body = 14;
  static const subBody = 14;
  static const button = 12;
  static const caption = 12;
}

class AppColors {
  const AppColors._();

  static const orange = Color(0xFFFC9A04);
  static const lightOrange = Color(0xFFFC9A04);
  static const black = Color(0xFF04000B);
  static const shadow = Color.fromARGB(25, 115, 115, 115);
  // Color.from(alpha: .5, red: 115, green: 115, blue: 115);
  static const deepPurple = Color(0xFF994FFF);
  static const lightPurple = Color(0xFFE4D8FF);
  static const red = Color(0xFFED3900);
  static const green = Color(0xFF66F2A6);
  static const white = Color(0xFFF8F8F8);
  static const offWhite = Color(0xFFFCF7EF);
  static const offWhiteCard = Color(0xFFFFF4E3);
  
}

class TextThemes {
  const TextThemes._();

  static const satoshiBold = TextStyle(
      fontFamily: 'Satoshi', fontWeight: FontWeight.w700, fontSize: 16);
}
