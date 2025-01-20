import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'bottom_nav_bar_controller.g.dart';

@riverpod
class NavBarController extends _$NavBarController {
  int currentIndex = 0;

  @override
  int build() => currentIndex;

  void navIndex(int newIndex) {
    currentIndex = newIndex;
    state = currentIndex;
  }
}
