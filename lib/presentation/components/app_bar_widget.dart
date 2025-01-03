
import 'package:flutter/material.dart';
import 'package:pardner/presentation/components/date_widget.dart';
import 'package:pardner/presentation/components/profile_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Row(children: [
        SizedBox(width: 24,),
        DateWidget(),
      ]),
      leadingWidth: 100,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        ProfileWidget(),
        SizedBox(width: 24,)
      ],
    );
  }
}