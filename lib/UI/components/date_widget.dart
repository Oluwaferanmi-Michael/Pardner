import 'package:flutter/material.dart';
import 'package:pardner/config/ext.dart';

class DateWidget extends StatelessWidget {
  DateWidget({super.key});

  final day = DateTime.now().day;
  final weekday = DateTime.now().weekday;
  final month = DateTime.now().month;

  @override
  Widget build(BuildContext context) {
    return Text('${weekday.intToDay()}, ${month.intToMonth()} ${day}th',
        style: TextStyle(
            fontFamily: 'Satoshi', fontWeight: FontWeight.w700, fontSize: 16));
  }
}
