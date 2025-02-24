import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pardner/UI/components/bottom_sheets/bottom_sheets.dart';
import 'package:pardner/UI/components/bottom_sheets/select_date_bottom_sheet.dart';
import 'package:pardner/UI/components/buttons.dart';
import 'package:pardner/UI/components/study_date_chip.dart';
import 'package:pardner/config/styles.dart';
import 'package:pardner/core/features/database/presentation/controller/study_date_list_controller.dart';

class StudySetScheduledDatesWidget extends ConsumerWidget {
  const StudySetScheduledDatesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(studyDateListControllerProvider).isNotEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Scheduled Dates',
                style: TextStyle(
                    fontFamily: FontFamilies.satoshi,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: AppColors.black),
              ),
              Row(
                spacing: 8,
                children: [
                  Wrap(
                      runSpacing: 8,
                      spacing: 8,
                      children: ref
                          .watch(studyDateListControllerProvider)
                          .map((e) => StudyDateChip(
                                date: e,
                              ))
                          .toList()),
                  Button(
                          color: AppColors.white,
                          icon: Icon(
                            Icons.add,
                            color: AppColors.black,
                          ))
                      .iconButton(context,
                          () => SelectDateBottomSheet().present(context)),
                ],
              )
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // spacing: 12,
            children: [
                Text(
                  'Scheduled Dates',
                  style: TextStyle(
                      fontFamily: FontFamilies.satoshi,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: AppColors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'set the dates you would like to study.',
                  style: TextStyle(
                      fontFamily: FontFamilies.satoshi,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: AppColors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                Button(
                  title: 'schedule study dates',
                  color: AppColors.white,
                ).primaryLongButton(
                    context, () => SelectDateBottomSheet().present(context))
              ]);
  }
}
