import 'package:pardner/main.dart';

import '../domain/study_item/study_item_model.dart';
import '../domain/study_sets/domain/study_set_model.dart';

class DataBoxStores{

  final studySetBox = objectBox.store.box<StudySetModel>();
  final studyItemBox = objectBox.store.box<StudyItemModel>();

}