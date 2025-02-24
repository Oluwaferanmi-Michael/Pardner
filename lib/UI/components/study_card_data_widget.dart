import 'package:flutter/material.dart';
import 'package:pardner/config/insets.dart';

import '../../config/styles.dart';

class StudySetCardDataWidget extends StatelessWidget {
  const StudySetCardDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.purple, borderRadius: BorderRadius.circular(16)),
      padding: EdgeInsets.all(Insets.x12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: 0,
        children: [
          Text(
            '4',
            textHeightBehavior: TextHeightBehavior(),
            style: TextStyle(
                color: AppColors.black,
                fontFamily: FontFamilies.cabinet,
                fontSize: 36,
                fontWeight: FontWeight.w800,
                height: 0),
          ),
          Text(
            'Study Items',
            style: TextStyle(
                fontFamily: FontFamilies.satoshi,
                fontWeight: FontWeight.w500,
                fontSize: 12),
          )
        ],
      ),
    );
  }
}
