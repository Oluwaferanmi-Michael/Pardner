import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pardner/presentation/components/app_bar_widget.dart';
import 'package:pardner/presentation/components/controllers/bottom_nav_bar_controller.dart';
import 'package:pardner/presentation/pages/main_page/schedule_page.dart';

import '../../components/controllers/floating_bottom_nav_bar.dart';
import 'home_page.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  late final PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(52), child: AppBarWidget()),
      body: SafeArea(
          child: Stack(
        // alignment: Alignment.bottomLeft,
        children: [
          PageView(
            controller: controller,
            onPageChanged: (value) =>
                ref.watch(navBarControllerProvider.notifier).navIndex(value),
            children: [HomePage(), SchedulePage()],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: FloatingBottomNavigationBar(pageController: controller)),
        ],
      )),
    );
  }
}
