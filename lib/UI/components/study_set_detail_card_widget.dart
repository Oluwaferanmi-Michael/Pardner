import 'package:flutter/material.dart';
import 'package:pardner/UI/components/study_card_data_widget.dart';
import 'package:pardner/config/insets.dart';
import 'package:pardner/UI/components/bottom_sheets/bottom_sheets.dart';
import '../../config/styles.dart';

import 'bottom_sheets/create_study_item_bottom_sheet.dart';
import 'buttons.dart';


class StudySetDetailCard extends StatelessWidget {
  const StudySetDetailCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: Insets.x12,
        vertical: Insets.x12,
      ),
      width: MediaQuery.sizeOf(context).shortestSide,
      // height: MediaQuery(data: data, child: child),
      margin: EdgeInsets.symmetric(horizontal: Insets.x8, vertical: Insets.x8),

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StudySetCardDataWidget(),
              StudySetCardDataWidget(),
              StudySetCardDataWidget(),
            ],
          ),

          // Image.asset(
          //   Illustrations.reflection,
          //   // fit: BoxFit.contain,
          // ),

          Button(color: AppColors.orange, title: 'edit study set')
              .primaryLongButton(context, () {
            CreateStudyItemBottomSheet().present(context);
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
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Study Set 1',
          style: TextStyle(
              fontFamily: FontFamilies.cabinet,
              fontSize: 32,
              fontWeight: FontWeight.w800),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'pomodoro',
              style: TextStyle(
                  color: AppColors.deepPurple,
                  fontFamily: FontFamilies.satoshi,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '2 Hours',
              style: TextStyle(
                  fontFamily: FontFamilies.cabinet,
                  fontSize: 12,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ],
    );
  }
}
