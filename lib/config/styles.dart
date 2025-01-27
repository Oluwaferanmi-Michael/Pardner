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
  static const lightOrange = Color(0xFFFFE0B1);
  static const black = Color(0xFF04000B);
  static const shadow = Color.fromARGB(25, 115, 115, 115);
  // Color.from(alpha: .5, red: 115, green: 115, blue: 115);
  static const deepPurple = Color(0xFF994FFF);
  static const purple = Color(0xFFCBADFF);
  static const lightPurple = Color(0xFFE4D8FF);
  static const red = Color(0xFFED3900);
  static const green = Color(0xFF66F2A6);
  static const white = Color(0xFFF8F8F8);
  static const offWhite = Color(0xFFFCF7EF);
  static const offWhiteCard = Color(0xFFFFF4E3);
}

class Shadows {
  const Shadows._();

  static const regularSolid = BoxShadow(
      blurRadius: 0,
      spreadRadius: 0,
      blurStyle: BlurStyle.solid,
      color: AppColors.black,
      offset: Offset(4, 4));

  static const smallSolid = BoxShadow(
      blurRadius: 0,
      spreadRadius: 0,
      blurStyle: BlurStyle.solid,
      color: AppColors.black,
      offset: Offset(2, 2));

  static const regularBlur = BoxShadow(
      color: AppColors.shadow,
      offset: Offset(0, 4),
      blurRadius: 4,
      blurStyle: BlurStyle.normal);

  static const text = [
    Shadow(
      color: Colors.black,
      blurRadius: 0,
      offset: Offset(4, 2),
    ),
    Shadow(
      color: Colors.white,
      blurRadius: 0,
      offset: Offset(3, 1),
    )
  ];
}

class ComponentBorder extends Border {
  const ComponentBorder({super.top, super.bottom, super.right, super.left});

  // @override
  ComponentBorder.thin({
    width = 1.0,
    color = AppColors.black,
    strokeAlign = BorderSide.strokeAlignInside,
    style = BorderStyle.solid,
  }) : this(
          bottom: BorderSide(
            color: color,
            width: width,
            style: style,
            strokeAlign: strokeAlign,
          ),
          top: BorderSide(
            color: color,
            width: width,
            style: style,
            strokeAlign: strokeAlign,
          ),
          right: BorderSide(
            color: color,
            width: width,
            style: style,
            strokeAlign: strokeAlign,
          ),
          left: BorderSide(
            color: color,
            width: width,
            style: style,
            strokeAlign: strokeAlign,
          ),
        );

  ComponentBorder.thick({
    width = 2.0,
    color = AppColors.black,
    strokeAlign = BorderSide.strokeAlignInside,
    style = BorderStyle.solid,
  }) : this(
          bottom: BorderSide(
            color: color,
            width: width,
            style: style,
            strokeAlign: strokeAlign,
          ),
          top: BorderSide(
            color: color,
            width: width,
            style: style,
            strokeAlign: strokeAlign,
          ),
          right: BorderSide(
            color: color,
            width: width,
            style: style,
            strokeAlign: strokeAlign,
          ),
          left: BorderSide(
            color: color,
            width: width,
            style: style,
            strokeAlign: strokeAlign,
          ),
        );
}

class TextThemes {
  const TextThemes._();

  static const satoshiBold = TextStyle(
      fontFamily: 'Satoshi', fontWeight: FontWeight.w700, fontSize: 16);
}
