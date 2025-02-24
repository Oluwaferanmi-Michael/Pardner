import 'package:flutter/material.dart';
import 'package:pardner/UI/components/date_widget.dart';
import 'package:pardner/UI/components/profile_widget.dart';

import '../../config/styles.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.0),
      child: AppBar(
        title: DateWidget(),
        
        backgroundColor: AppColors.offWhite,
        elevation: 0,
        actions: [
          ProfileWidget(),
        ],
      ),
    );
  }
}
