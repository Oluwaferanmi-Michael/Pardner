import 'package:flutter/material.dart';
import 'package:pardner/config/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height / 2,
      child: Column(
        spacing: 8,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Study set 1',
                style: TextStyle(
                    fontFamily: FontFamilies.satoshi,
                    fontSize: 12,
                    fontWeight: FontWeight.w800),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(
                    dotHeight: 4,
                    dotWidth: 4,
                    activeDotColor: AppColors.deepPurple,
                    dotColor: AppColors.lightOrange,
                    ),
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height / 2 - 42,
            child: PageView.builder(
                controller: controller,
                itemCount: 2,
                itemBuilder: (context, pageIndex) {
                  return SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height / 3,
                    child: ListView.separated(
                        // physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 12),
                        itemBuilder: (context, listIndex) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 14),
                            decoration: BoxDecoration(
                                color: AppColors.lightPurple,
                                borderRadius: BorderRadius.circular(16)),
                            child: Row(
                              children: [
                                // About the Session
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'A Little Life',
                                      style: TextStyle(
                                          fontFamily: FontFamilies.satoshi,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      '2 Hours',
                                      style: TextStyle(
                                        fontFamily: FontFamilies.satoshi,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),

                                // other details
                                Column()
                              ],
                            ),
                          );
                        }),
                  );
                }),
          )
        ],
      ),
    );
  }
}
