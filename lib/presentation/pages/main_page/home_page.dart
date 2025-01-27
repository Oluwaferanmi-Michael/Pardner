import 'package:flutter/material.dart';
import 'package:pardner/config/styles.dart';

import '../../components/buttons.dart';
import '../../components/study_set_list_widget.dart';
import '../../components/timer_preview.dart';
import '../create_study_set_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 24,
            children: [
              StudySetTimerPreviewWidget(),
              StudySetListWidget(),
              Row(
                spacing: 12,
                children: [
                  Flexible(
                    child: Button(
                            title: 'Create new Study Set',
                            color: AppColors.orange)
                        .primaryLongButton(
                            context,
                            () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StudySetCreationPage(),
                                ))),
                  ),
                  Button(title: 'start study set', color: AppColors.lightPurple)
                      .primaryLongButton(
                          context,
                          () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StudySetCreationPage(),
                              ))),
                ],
              ),
              SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
