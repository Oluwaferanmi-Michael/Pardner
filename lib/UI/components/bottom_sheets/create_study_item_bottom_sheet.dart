import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pardner/UI/components/bottom_sheets/bottom_sheets.dart';
import 'package:pardner/UI/components/buttons.dart';
import 'package:pardner/core/features/database/domain/study_item/study_item_model.dart';
import 'package:pardner/core/features/database/presentation/controller/create_study_items_controller.dart';

import '../../../config/styles.dart';

class CreateStudyItemBottomSheet extends BottomSheetModel {
  CreateStudyItemBottomSheet(
      {super.presentation = const CreateStudyItemPresentation(),
      super.title = 'Create Study Item'});
}

class CreateStudyItemPresentation extends HookConsumerWidget {
  const CreateStudyItemPresentation({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final studyItemNameController = useTextEditingController();
    // final studyItemDescriptionController = useTextEditingController();
    final studyItemDurationController = useTextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 16,
      children: [
        TextField(
          controller: studyItemNameController,
          decoration: InputDecoration(
              labelText: 'Study Item name',
              hintStyle: const TextStyle(),
              focusColor: AppColors.deepPurple,
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: AppColors.deepPurple),
                  borderRadius: BorderRadius.circular(12)),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              floatingLabelStyle: const TextStyle(
                  color: AppColors.deepPurple, fontWeight: FontWeight.w600),
              border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1, color: AppColors.deepPurple),
                  borderRadius: BorderRadius.circular(12))),
        ),
        TextField(
          controller: studyItemDurationController,
          decoration: InputDecoration(
              labelText: 'Description',
              focusColor: AppColors.deepPurple,
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: AppColors.deepPurple),
                  borderRadius: BorderRadius.circular(12)),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              floatingLabelStyle: const TextStyle(
                  color: AppColors.deepPurple, fontWeight: FontWeight.w600),
              border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1, color: AppColors.deepPurple),
                  borderRadius: BorderRadius.circular(12))),
        ),
        Button(color: AppColors.orange, title: 'add item')
            .primaryLongButton(context, () {
          final studyItem = StudyItemModel(
              studyItemName: studyItemNameController.text,
              description: studyItemDurationController.text);

          ref
              .watch(createStudyItemsListControllerProvider.notifier)
              .addStudyItem(studyItem);
          Navigator.pop(context);
        })
      ],
    );
  }
}
