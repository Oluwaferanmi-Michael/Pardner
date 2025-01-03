import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector( onTap: () {}, child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Color(0xFFFFC56D),
        border: Border.all(color: Color(0xFF04000B)),
        borderRadius: BorderRadius.circular(100)
      ),
      child: Text('Profile', style: TextStyle(fontFamily: 'Cabinet', fontSize: 16.0, fontWeight: FontWeight.w700, color: Color(0xFF04000B)), )
    ),);
  }
}