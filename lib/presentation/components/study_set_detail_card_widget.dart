import 'package:flutter/material.dart';
import 'package:pardner/config/insets.dart';
import '../../config/styles.dart';

import 'bottom_sheets/create_study_item_bottom_sheet.dart';
import 'buttons.dart';
import 'study_card_data_widget.dart';

class StudySetDetailCard extends StatelessWidget {
  const StudySetDetailCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Insets.x12),
      width: MediaQuery.sizeOf(context).shortestSide,
      // height: MediaQuery(data: data, child: child),
      margin: EdgeInsets.symmetric(horizontal: Insets.x8),
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
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: Insets.x12,
        children: [
          StudySetTitleAndMethod(),

          Text(
              'Lorem ipsum dolor sit amet consectetur. Nisl dolor ornare justo egestas fermentum bibendum.',
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontFamily: FontFamilies.satoshi, fontSize: 12)),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Scheduled Dates',
                style: TextStyle(
                    fontFamily: FontFamilies.satoshi,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              Wrap(
                children: [
                  Chip(
                    side: BorderSide(color: AppColors.black, width: 1),
                    shape: StadiumBorder(),
                    label: Text('Dec 10'),
                    backgroundColor: AppColors.white,
                    labelStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: FontFamilies.satoshi),
                  ),
                ],
              )
            ],
          ),

          // Study Set Details
          Container(
            decoration: BoxDecoration(
                color: AppColors.purple,
                borderRadius: BorderRadius.circular(16)),
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StudySetCardDataWidget(),
                StudySetCardDataWidget(),
                StudySetCardDataWidget(),
              ],
            ),
          ),

          // Image.asset(
          //   Illustrations.reflection,
          //   // fit: BoxFit.contain,
          // ),

          Button(color: AppColors.orange, title: 'edit study set')
              .primaryLongButton(context, () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreateStudyItemPresentation()));
          })
        ],
      ),
    );
  }
}

class StudySetTitleAndMethod extends StatelessWidget {
  const StudySetTitleAndMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Text(
                'Study Set 1',
                style: TextStyle(
                    fontFamily: FontFamilies.cabinet,
                    fontSize: 36,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Text(
              '2 Hours',
              style: TextStyle(
                  fontFamily: FontFamilies.cabinet,
                  fontSize: 8,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
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
    );
  }
}
