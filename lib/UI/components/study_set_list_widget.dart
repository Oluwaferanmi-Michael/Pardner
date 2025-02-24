import 'package:flutter/material.dart';
import 'package:pardner/config/styles.dart';

import 'study_item_widget.dart';

class StudySetListWidget extends StatefulWidget {
  const StudySetListWidget({super.key});

  @override
  State<StudySetListWidget> createState() => _StudySetListWidgetState();
}

class _StudySetListWidgetState extends State<StudySetListWidget> {
  late final PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: 1);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Flexible(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Study set 1',
                style: TextStyle(
                    fontFamily: FontFamilies.satoshi,
                    fontSize: 12,
                    fontWeight: FontWeight.w800),
              ),
              // SmoothPageIndicator(
              //   controller: controller,
              //   count: 3,
              //   effect: WormEffect(
              //     dotHeight: 4,
              //     dotWidth: 4,
              //     activeDotColor: AppColors.deepPurple,
              //     dotColor: AppColors.lightOrange,
              //   ),
              // )
            ],
          ),
        ),
        SizedBox(
          height: 230,
          child: PageView.builder(
              controller: controller,
              itemCount: 3,
              itemBuilder: (context, pageIndex) {
                return ListView.separated(
                    shrinkWrap: true,
                    itemCount: 4,
                    separatorBuilder: (context, index) => SizedBox(height: 12),
                    itemBuilder: (context, listIndex) {
                      return StudyItemWidget(
                        itemName: 'wer',
                      );
                    });
              }),
        )
      ],
    );
  }
}
