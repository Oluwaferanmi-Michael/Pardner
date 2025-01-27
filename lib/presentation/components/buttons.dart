import 'package:flutter/material.dart';
import 'package:pardner/config/styles.dart';
import '../../config/typedefs.dart';

class Button {
  String? title;
  Icon? icon;
  Color? color;
  VoidFunction? exe;

  Button({this.title, this.icon, this.color});
}

extension Buttons on Button {
  Widget iconButton(BuildContext context) => GestureDetector(
      onTap: exe,
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [Shadows.smallSolid],
            color: color,
            border: Border.all(width: 1, color: AppColors.black),
            borderRadius: BorderRadius.circular(500)),
        padding: EdgeInsets.all(4),
        child: icon,
      ));

// primary long button
  Widget primaryLongButton(BuildContext context, exe) => GestureDetector(
      onTap: exe,
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: AppColors.black, offset: Offset(4, 4))
            ],
            color: color,
            border: Border.all(width: 1, color: Color(0xFF04000B)),
            borderRadius: BorderRadius.circular(8)),
        // width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 4,
            children: [
              icon ?? SizedBox(),
              Text(
                title ?? '',
                style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              )
            ],
          ),
        ),
      ));

// secondary long button
  Widget secondaryLongButton(BuildContext context) => GestureDetector(
      onTap: exe,
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: AppColors.black, offset: Offset(4, 4))
            ],
            border: Border.all(width: 1, color: Color(0xFF04000B)),
            borderRadius: BorderRadius.circular(8)),
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          spacing: 4,
          children: [
            icon ?? SizedBox(),
            Text(
              title ?? '',
              style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
            )
          ],
        ),
      ));
}
