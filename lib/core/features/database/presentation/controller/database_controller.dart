


import 'package:pardner/config/enums.dart';
import 'package:pardner/config/ext.dart';
import 'package:pardner/core/features/database/data/database_functions_impl.dart';
import 'package:pardner/core/features/database/domain/study_item/study_item_model.dart';
import 'package:pardner/core/features/database/domain/study_sets/domain/study_set_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'database_controller.g.dart';

@riverpod
class StudySetController extends _$StudySetController {

  @override
  void build() {}

  final studySetData = StudySetFunctionsImpl();

  void getAllStudySets() {
    studySetData.readAll();
  }

  void createNewStudySet({
    required List<String> dates,
    String? name,
    String? description,
    Method method = Method.pomodoro,
    int? duration,

    List<StudyItemModel>? studyItems
  }) {


    final studySet = StudySetModel(
      dates: dates,
      name: name,
      description: description,
      totalStudyTime: duration,
      method: method.enumToConst());

      if (studyItems == null) return;
      
      studySet.studyItems.addAll(studyItems);

    studySetData.create(studySet);
  }
}