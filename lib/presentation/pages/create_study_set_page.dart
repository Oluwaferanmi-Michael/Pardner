import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pardner/config/styles.dart';
import 'package:pardner/presentation/components/buttons.dart';
import 'package:pardner/presentation/components/study_item_widget.dart';

import '../components/app_bar_widget.dart';

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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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

class StudyItemsInStudySetWidget extends StatelessWidget {
  const StudyItemsInStudySetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Study Items',
            style: TextStyle(
                fontFamily: FontFamilies.satoshi,
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: AppColors.black),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 2,
            child: ListView.separated(
                // padding: EdgeInsets.symmetric(vertical: 8),

                itemBuilder: (context, index) {
                  return StudyItemWidget();
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
                itemCount: 4),
          )
        ],
      ),
    );
  }
}

class StudySetScheduledDatesWidget extends StatelessWidget {
  const StudySetScheduledDatesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Scheduled Dates',
          style: TextStyle(
              fontFamily: FontFamilies.satoshi,
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: AppColors.black),
        ),
        Wrap(
          runSpacing: 8,
          spacing: 8,
          children: [
            Button(
                color: AppColors.white,
                icon: Icon(
                  Icons.add,
                  color: AppColors.black,
                )).iconButton(context),
          ],
        )
      ],
    );
  }
}

class CreateStudySetDetailSectionWidget extends HookConsumerWidget {
  const CreateStudySetDetailSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final setNameController = useTextEditingController();
    final setDetailsController = useTextEditingController();

    return Column(
      spacing: 8,
      children: [
        Row(
          spacing: 24,
          mainAxisAlignment: MainAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                child: TextField(
              cursorColor: AppColors.orange,
              controller: setNameController,
              canRequestFocus: true,
              maxLines: 1,
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 36,
                  fontFamily: FontFamilies.cabinet,
                  color: AppColors.black,
                  fontWeight: FontWeight.w700),
              decoration: InputDecoration(
                  isCollapsed: true,
                  border: InputBorder.none,
                  hintText: 'Study Set',
                  hintStyle: TextStyle(
                      fontSize: 36,
                      fontFamily: FontFamilies.cabinet,
                      color: AppColors.black,
                      fontWeight: FontWeight.w700)),
            )),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Pomodoro',
                  style: TextStyle(
                      fontFamily: FontFamilies.satoshi,
                      color: AppColors.purple,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '2 Hours of Study',
                  style: TextStyle(
                      fontFamily: FontFamilies.satoshi,
                      color: Color(0xFF8A8989),
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                )
              ],
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
