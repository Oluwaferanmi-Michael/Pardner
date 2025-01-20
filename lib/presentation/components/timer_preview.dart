import 'package:flutter/material.dart';
import 'package:pardner/config/styles.dart';

class StudySetTimerPreviewWidget extends StatelessWidget {
  const StudySetTimerPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
          color: Color(0xFFCEC1ED),
          border: Border.all(color: Color(0xFF04000B), width: 2),
          borderRadius: BorderRadius.circular(14.0)),
      child: Column(
        spacing: 24,
        children: [
          Row(
            children: [
              Text('pomodoro',
                  style: TextStyle(
                      fontFamily: FontFamilies.cabinet,
                      color: Color(0xFF04000B),
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
              Spacer()
            ],
          ),
          Text('07:58',
              style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 0,
                      offset: Offset(4, 2),
                    ),
                    Shadow(
                      color: Colors.white,
                      blurRadius: 0,
                      offset: Offset(3, 1),
                    )
                  ],
                  fontFamily: FontFamilies.cabinet,
                  height: .5,
                  color: AppColors.black,
                  fontSize: 86,
                  fontWeight: FontWeight.w800)),
          Row(
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xFFFC9A04),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(color: Color(0xFF04000B), width: 2)),
                  child: const Icon(Icons.play_arrow_outlined),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
