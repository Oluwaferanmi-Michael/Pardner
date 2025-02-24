import 'package:pardner/UI/resources/app_strings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'study_date_list_controller.g.dart';

@riverpod
class StudyDateListController extends _$StudyDateListController {
  @override
  List<String> build() => [];

  void addDate(DateTime date) {
    final fullMonth = Strings.months[date.month - 1];
    final month = fullMonth.substring(0, 4);
    final string = '$month ${date.day}';
    final list = <String>[];
    list.add(string);
    state = [...list];
  }

  void clearList() {
    state = [];
  }
}
