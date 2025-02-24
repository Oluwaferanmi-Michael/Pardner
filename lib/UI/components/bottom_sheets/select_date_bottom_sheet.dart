import 'package:flutter/material.dart';
import 'package:pardner/UI/components/bottom_sheets/bottom_sheets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pardner/core/features/database/presentation/controller/study_date_list_controller.dart';

class SelectDateBottomSheet extends BottomSheetModel {
  SelectDateBottomSheet(
      {super.presentation = const SelectDatePresentation(),
      super.title = 'Schedule Study Date'});
}

class SelectDatePresentation extends ConsumerWidget {
  const SelectDatePresentation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CalendarDatePicker(
        // controller: calendarController,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.parse('2025-12-31'),
        onDateChanged: (date) {
          ref.watch(studyDateListControllerProvider.notifier).addDate(date);
          Navigator.pop(context);
        });
  }
}
