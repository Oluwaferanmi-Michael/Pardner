
import 'package:pardner/core/features/database/domain/study_item/study_item_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'create_study_items_controller.g.dart';

@riverpod
class CreateStudyItemsListController extends _$CreateStudyItemsListController {

  @override
  List<StudyItemModel> build () => [];

  void addStudyItem(StudyItemModel studyItem) {
    final list = <StudyItemModel>[];
    list.add(studyItem);
    state = [...list];
  }


  void clearList() => state = [];
}