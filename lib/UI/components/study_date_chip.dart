import 'package:flutter/material.dart';
import 'package:pardner/config/styles.dart';

class StudyDateChip extends StatelessWidget {
  final String date;
  const StudyDateChip({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide(color: AppColors.black, width: 1),
      shape: StadiumBorder(),
      label: Text(date),
      backgroundColor: AppColors.white,
      labelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          fontFamily: FontFamilies.satoshi),
    );
  }
}
