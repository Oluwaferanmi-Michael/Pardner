import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:pardner/presentation/components/controllers/bottom_nav_bar_controller.dart';

import '../../config/styles.dart';

class FloatingBottomNavigationBar extends ConsumerWidget {
  final PageController pageController;
  const FloatingBottomNavigationBar({
    required this.pageController,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final icons = [Icons.home_outlined, Icons.calendar_month_outlined];

    final title = ['home', 'schedule'];

    final selectedIndex = ref.watch(navBarControllerProvider);

    return Row(
      spacing: 8,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          // margin: EdgeInsets.symmetric(horizontal: 24),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
              color: AppColors.white,
              // border: Border.all(color: AppColors.black, width: 2),
              borderRadius: BorderRadius.circular(120),
              boxShadow: [
                BoxShadow(
                    color: AppColors.shadow,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                    blurStyle: BlurStyle.normal)
              ]),
          child: Icon(Icons.bolt_rounded),
        ),
        Container(
            // margin: EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: AppColors.white,
                // border: Border.all(color: AppColors.black, width: 2),
                borderRadius: BorderRadius.circular(120),
                boxShadow: [
                  Shadows.regularBlur
                ]),
            child: Row(
                spacing: 20,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: icons.map((e) {
                  int index = icons.indexOf(e);
                  bool selected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      ref
                          .read(navBarControllerProvider.notifier)
                          .navIndex(index);
                          
                      pageController.animateToPage(index,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeIn);
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Icon(e,
                            size: 20,
                            color:
                                selected ? AppColors.orange : AppColors.black),
                        Text(
                          title[index],
                          style: TextStyle(
                              color:
                                  selected ? AppColors.orange : AppColors.black,
                              fontFamily: FontFamilies.satoshi,
                              fontSize: 8),
                        )
                      ]),
                    ),
                  );
                }).toList())),
      ],
    );
  }
}
