import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pardner/config/styles.dart';
import 'package:pardner/presentation/resources/illustrations.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 24,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppColors.black),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(4, 4),
                          blurRadius: 0,
                          blurStyle: BlurStyle.solid,
                          color: AppColors.black)
                    ],
                    color: AppColors.offWhiteCard),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 12,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Study Set 1',
                          style: TextStyle(
                              fontFamily: FontFamilies.cabinet,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 2),
                            decoration: BoxDecoration(
                              color: AppColors.lightPurple,
                              border: Border.all(
                                  width: 2,
                                  color: AppColors.black,
                                  strokeAlign: BorderSide.strokeAlignOutside),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              'pomodoro',
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontFamily: FontFamilies.satoshi,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),

                    // Study Set Details
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        StudySetCardDataWidget(),
                        StudySetCardDataWidget(),
                        StudySetCardDataWidget(),
                      ],
                    ),

                    Image.asset(
                      Illustrations.reflection,
                      // fit: BoxFit.contain,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StudySetCardDataWidget extends StatelessWidget {
  const StudySetCardDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '4',
          style: TextStyle(
              color: AppColors.black,
              fontFamily: FontFamilies.satoshi,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        Text('Study Items')
      ],
    );
  }
}
