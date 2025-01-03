import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  DateWidget({super.key});

  
  final day = DateTime.now().day;
  final month = DateTime.now().month;
  final year = DateTime.now().year;
  

  @override
  Widget build(BuildContext context) {
    return Text('$month $day, $year', style: TextStyle(
            fontFamily: 'Satoshi', fontWeight: FontWeight.w700, fontSize: 16
          ));
  }
}