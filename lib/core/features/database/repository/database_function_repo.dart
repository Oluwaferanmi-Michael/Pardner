import '../domain/study_item/stud_item_model.dart';
import '../domain/study_sets/domain/study_set_model.dart';

abstract class DatabaseFunctionsRepo {
  

  void createNewItem({required StudyItemModel studyItem});
  Future<void> readItem();
  Future<void> readAllItems();
  Future<void> deleteItem();

  void createStudySet({required StudySetModel studySet});
  Future<void> readStudySet();
  Future<void> updateStudySet();
  Future<void> deleteStudySet();
}

