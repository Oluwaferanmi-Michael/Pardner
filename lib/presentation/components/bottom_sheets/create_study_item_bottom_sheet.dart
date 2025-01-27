import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pardner/presentation/components/bottom_sheets/bottom_sheets.dart';

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
    final studyItemDescriptionController = useTextEditingController();
    final studyItemDurationController = useTextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 24,
      children: [
        TextField(
          controller: studyItemNameController,
          decoration: InputDecoration(
              labelText: 'Task name',
              hintStyle: const TextStyle(),
              focusColor: AppColors.purple,
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: AppColors.purple),
                  borderRadius: BorderRadius.circular(12)),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              floatingLabelStyle: const TextStyle(
                  color: AppColors.purple, fontWeight: FontWeight.w600),
              border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1, color: AppColors.purple),
                  borderRadius: BorderRadius.circular(12))),
        ),
        TextField(
            controller: studyItemDescriptionController,
            decoration: InputDecoration(
                labelText: 'Task name',
                focusColor: AppColors.purple,
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: AppColors.purple),
                    borderRadius: BorderRadius.circular(12)),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                floatingLabelStyle: const TextStyle(
                    color: AppColors.purple, fontWeight: FontWeight.w600),
                border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1, color: AppColors.purple),
                    borderRadius: BorderRadius.circular(12)))),
        TextField(
          controller: studyItemDurationController,
          decoration: InputDecoration(
              labelText: 'Task name',
              focusColor: AppColors.purple,
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: AppColors.purple),
                  borderRadius: BorderRadius.circular(12)),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              floatingLabelStyle: const TextStyle(
                  color: AppColors.purple, fontWeight: FontWeight.w600),
              border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1, color: AppColors.purple),
                  borderRadius: BorderRadius.circular(12))),
        ),
      ],
    );
  }
}
