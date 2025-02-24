import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pardner/UI/pages/create_study_set_page/widgets/study_items_in_study_set_widget.dart';
import 'package:pardner/UI/pages/create_study_set_page/widgets/study_set_scheduled_dates_widget.dart';

import 'package:pardner/config/styles.dart';

import '../../../components/app_bar_widget.dart';

class StudySetCreationPage extends StatelessWidget {
  const StudySetCreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(52), child: AppBarWidget()),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              // height: MediaQuery.sizeOf(context).height,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 24,
                  children: [
                    CreateStudySetDetailSectionWidget(),
                    StudySetScheduledDatesWidget(),
                    StudyItemsInStudySetWidget()
                  ]),
            ),
          ),
        ));
  }
}

class CreateStudySetDetailSectionWidget extends HookConsumerWidget {
  const CreateStudySetDetailSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final setNameController = useTextEditingController();
    final setDetailsController = useTextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            Expanded(
              child: TextField(
                cursorColor: AppColors.orange,
                controller: setNameController,
                canRequestFocus: true,
                maxLines: 1,
                cursorOpacityAnimates: true,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 36,
                    fontFamily: FontFamilies.cabinet,
                    color: AppColors.black,
                    fontWeight: FontWeight.w700),
                decoration: InputDecoration(
                    isCollapsed: true,
                    isDense: true,
                    border: InputBorder.none,
                    maintainHintHeight: false,
                    hintText: 'Study Set Name',
                    hintStyle: TextStyle(
                        fontFamily: FontFamilies.cabinet,
                        color: Colors.black54,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            Icon(
              Icons.edit,
              color: Colors.black54,
            )
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text(
              'Pomodoro',
              style: TextStyle(
                  fontFamily: FontFamilies.satoshi,
                  color: AppColors.deepPurple,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            VerticalDivider(
              color: AppColors.black,
              thickness: 2,
              width: 11,
            ),
            Text(
              '2 Hours of Study',
              style: TextStyle(
                  fontFamily: FontFamilies.satoshi,
                  color: Color(0xFF8A8989),
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        TextField(
          cursorColor: AppColors.orange,
          controller: setDetailsController,
          canRequestFocus: true,
          cursorOpacityAnimates: true,
          maxLines: 3,
          style: TextStyle(
            fontSize: 12,
            fontFamily: FontFamilies.cabinet,
            color: AppColors.black,
          ),
          decoration: InputDecoration(
              // isDense: true,
              isCollapsed: true,
              border: OutlineInputBorder(),
              disabledBorder: InputBorder.none,
              contentPadding: EdgeInsets.all(9),
              hintText: 'What are you trying to accomplish in the study set ?',
              hintStyle: TextStyle(
                fontSize: 12,
                fontFamily: FontFamilies.cabinet,
                color: Color(0xFF8A8989),
              )),
        )
      ],
    );
  }
}
