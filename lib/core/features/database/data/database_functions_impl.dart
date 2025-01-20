import 'package:pardner/core/features/database/application/database_stores.dart';
import 'package:pardner/core/features/database/repository/database_function_repo.dart';

import '../domain/study_item/stud_item_model.dart';
import '../domain/study_sets/domain/study_set_model.dart';

class DatabaseFunctionsImpl extends DatabaseFunctionsRepo{

  final dataStores = DataStores();

  @override
  void createNewItem({required StudyItemModel studyItem}) {
    dataStores.studyItemBox.put(studyItem);
  }

  @override
  void createStudySet({required StudySetModel studySet}) {
    dataStores.studySetBox.put(studySet);
  }

  @override
  Future<void> deleteItem() {
    // TODO: implement deleteItem
    throw UnimplementedError();
  }

  @override
  Future<void> deleteStudySet() {
    // TODO: implement deleteStudySet
    throw UnimplementedError();
  }

  @override
  Future<void> readAllItems() {
    // TODO: implement readAllItems
    throw UnimplementedError();
  }

  @override
  Future<void> readItem() {
    // TODO: implement readItem
    throw UnimplementedError();
  }

  @override
  Future<void> readStudySet() {
    // TODO: implement readStudySet
    throw UnimplementedError();
  }

  @override
  Future<void> updateStudySet() {
    // TODO: implement updateStudySet
    throw UnimplementedError();
  }
}