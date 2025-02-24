import 'package:flutter/material.dart';

import '../../config/insets.dart';
import '../../config/styles.dart';

class StudyItemWidget extends StatelessWidget {
  final String itemName;
  const StudyItemWidget({super.key, required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      margin: EdgeInsets.symmetric(
        horizontal: Insets.x8,
      ),
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
              itemName,
              style: TextStyle(
                  fontFamily: FontFamilies.satoshi,
                  fontSize: 12,
                  fontWeight: FontWeight.w800),
            ),
          ),
          // Text(
          //   '2 Hours',
          //   style: TextStyle(
          //     fontFamily: FontFamilies.satoshi,
          //     fontSize: 10,
          //   ),
          // ),
        ],
      ),
    );
  }
}
