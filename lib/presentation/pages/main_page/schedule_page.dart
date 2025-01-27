import 'package:flutter/material.dart';
import 'package:pardner/config/insets.dart';
import '../../../config/styles.dart';
import '../../components/month_and_date_study_set_selector_widget.dart';

import '../../components/study_set_detail_card_widget.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  late final PageController carouselController;

  @override
  void initState() {
    carouselController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Insets.x12, vertical: Insets.x20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            spacing: Insets.x12,
            children: [
              // SizedBox(
              //   height: Insets.x8,
              // ),
              Text(
                'Study sets per day',
                style: TextStyle(
                    fontFamily: FontFamilies.satoshi,
                    fontSize: 12,
                    fontWeight: FontWeight.w800),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  clipBehavior: Clip.none,
                  height: 371,
                  child: PageView.builder(
                    padEnds: false,
                    pageSnapping: true,
                    itemCount: 3,
                    controller: carouselController,
                    itemBuilder: (context, index) => StudySetDetailCard(),
                  ),
                ),
              ),
              Text(
                'Schedule',
                style: TextStyle(
                    fontFamily: FontFamilies.satoshi,
                    fontSize: 12,
                    fontWeight: FontWeight.w800),
              ),
              MonthAndDateStudySetSelector(),
            ],
          ),
        ),
      ),
    );
  }
}
