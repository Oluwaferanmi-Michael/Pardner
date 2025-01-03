import 'package:flutter/material.dart';
import 'package:pardner/presentation/components/app_bar_widget.dart';
import 'package:pardner/presentation/components/study_set_list_widget.dart';
import 'package:pardner/presentation/components/timer_preview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(64), child: AppBarWidget()),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 24,
              children: [
              StudySetTimerPreviewWidget(),
              StudySetListWidget()
            ],),
          ),
        )
        ),
    );
  }
}