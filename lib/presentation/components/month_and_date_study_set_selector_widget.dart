import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pardner/config/insets.dart';
import 'package:pardner/presentation/resources/app_strings.dart';

import '../../config/styles.dart';
import 'dart:math' as math;

class MonthAndDateStudySetSelector extends HookConsumerWidget {
  const MonthAndDateStudySetSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final monthController = useTextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        DropdownMenu(
          expandedInsets: EdgeInsets.zero,
          controller: monthController,
          trailingIcon: Transform.rotate(
              angle: 90 * math.pi / 180,
              child: Icon(Icons.chevron_right_rounded)),
          selectedTrailingIcon: Transform.rotate(
              angle: 90 * math.pi / 180,
              child: Icon(Icons.chevron_left_rounded)),
          inputDecorationTheme: InputDecorationTheme(
              hintStyle: const TextStyle(color: AppColors.black),
              focusColor: AppColors.purple,
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: AppColors.orange),
                  borderRadius: BorderRadius.circular(12)),
              border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1, color: AppColors.black),
                  borderRadius: BorderRadius.circular(16))),
          onSelected: (newSelection) {},
          initialSelection: Strings.months[DateTime.now().month - 1],
          dropdownMenuEntries: Strings.months
              .map((m) => DropdownMenuEntry(value: m, label: m))
              .toList(),
          textStyle: TextStyle(
              fontFamily: FontFamilies.satoshi,
              fontSize: 12,
              color: AppColors.black,
              fontWeight: FontWeight.w700),
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: Insets.x36,
              child: Row(
                children: [
                  Flexible(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => SizedBox(
                        width: Insets.x8,
                      ),
                      itemBuilder: (context, index) {
                        return Chip(
                          side: BorderSide(color: AppColors.black, width: 1),
                          shape: StadiumBorder(),
                          label: Text('Dec 10'),
                          backgroundColor: AppColors.white,
                          labelStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: FontFamilies.satoshi),
                        );
                      },
                      itemCount: 7,
                    ),
                  ),
                ],
              ),
            ),
            ActionChip(
              onPressed: () {},
              avatar: Icon(
                Icons.add_rounded,
                color: AppColors.black,
              ),
              side: BorderSide(color: AppColors.black, width: 1),
              shape: StadiumBorder(),
              label: Text(
                'add study date',
                style: TextStyle(
                    fontFamily: FontFamilies.satoshi,
                    fontWeight: FontWeight.w700),
              ),
              backgroundColor: AppColors.orange,
              labelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontFamilies.satoshi),
            ),
          ],
        ),
      ],
    );
  }
}
