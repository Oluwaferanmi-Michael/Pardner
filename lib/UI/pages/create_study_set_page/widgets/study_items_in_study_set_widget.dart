import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:pardner/UI/components/bottom_sheets/bottom_sheets.dart';
import 'package:pardner/UI/components/bottom_sheets/create_study_item_bottom_sheet.dart';
import 'package:pardner/UI/components/buttons.dart';
import 'package:pardner/UI/components/study_item_widget.dart';
import 'package:pardner/config/insets.dart';
import 'package:pardner/config/styles.dart';
import 'package:pardner/core/features/database/presentation/controller/create_study_items_controller.dart';

class StudyItemsInStudySetWidget extends ConsumerWidget {
  const StudyItemsInStudySetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final studyItemList = ref.watch(createStudyItemsListControllerProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: Insets.x12,
      children: [
        Text(
          'Study Items',
          style: TextStyle(
              fontFamily: FontFamilies.satoshi,
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: AppColors.black),
        ),
        studyItemList.isEmpty
            ? Button(color: AppColors.orange, title: 'add study items')
                .primaryLongButton(context,
                    () => CreateStudyItemBottomSheet().present(context))
            : ListView.separated(
                shrinkWrap: true,
                // padding: EdgeInsets.symmetric(vertical: 8),

                itemBuilder: (context, index) {
                  return StudyItemWidget(
                    itemName: studyItemList[index].studyItemName,
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      border: ComponentBorder.thin(),
                      borderRadius: BorderRadius.circular(200),
                      color: AppColors.lightOrange,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Break'),
                        VerticalDivider(
                          width: 3,
                          endIndent: 4,
                          indent: 4,
                          color: AppColors.black,
                          thickness: 1,
                        ),
                        Text('10 minutes')
                      ],
                    ),
                  );
                },
                itemCount: studyItemList.length)
      ],
    );
  }
}
