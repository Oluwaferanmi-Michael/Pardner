import 'package:flutter/material.dart';

import '../../config/styles.dart';

class StudyItemWidget extends StatelessWidget {
  const StudyItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
          border: ComponentBorder.thin(),
          color: AppColors.lightPurple,
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // About the Session
          Expanded(
            child: Text(
              'A Little Life',
              style: TextStyle(
                  fontFamily: FontFamilies.satoshi,
                  fontSize: 12,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Text(
            '2 Hours',
            style: TextStyle(
              fontFamily: FontFamilies.satoshi,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
